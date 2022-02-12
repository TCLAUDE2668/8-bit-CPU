#!/usr/bin/python3

import os.path
from typing import Sequence
import gi

from dbgui.addrmap import AddrMap
from dbgui.mainui import MainUI
from libcpu.debug import Debugger, StopReason

gi.require_version("Gtk", "3.0")
gi.require_version("GtkSource", "4")
from gi.repository import Gtk, GtkSource, Gdk, GdkPixbuf


from .sourcetab import SourceTab
from .addrmap import AddrMap

from libcpu.debug import Debugger

class MainWindow(Gtk.Window, MainUI):
    def __init__(self):
        super().__init__(title="VelkoCPU IDE")

        self.set_default_size(800, 600)

        self.vpan = Gtk.VBox()

        self.add(self.vpan)

        self.toolbar = Gtk.Toolbar()
        self.vpan.pack_start(self.toolbar, False, False, 0)

        self.upload_btn = Gtk.ToolButton(label="Upload")
        self.upload_btn.connect("clicked", self.on_upload_btn_clicked)
        self.toolbar.add(self.upload_btn)

        self.run_btn = Gtk.ToolButton(label="Run")
        self.run_btn.connect("clicked", self.on_run_btn_clicked)
        self.toolbar.add(self.run_btn)

        self.step_btn = Gtk.ToolButton(label="Step")
        self.step_btn.connect("clicked", self.on_step_btn_clicked)
        self.toolbar.add(self.step_btn)


        self.notebook = Gtk.Notebook()
        self.vpan.add(self.notebook)

        self.tabs = dict()

    def on_upload_btn_clicked(self, widget):
        nnoxt = os.path.splitext(self.main_file)[0]
        self.dbg.upload(f"{nnoxt}.bin")

    def on_run_btn_clicked(self, widget):
        self.dbg.run()

    def on_step_btn_clicked(self, widget):
        self.dbg.step()

    def add_break(self, filename: str, lineno: int) -> bool:
        item = self.addr_map.lookup_by_line(filename, lineno)

        if item:
            self.dbg.set_breakpoint(item.addr)
            print (f"Brk at {item.addr:04x}")

        return item is not None

    def remove_break(self, filename: str, lineno: int) -> None:
        item = self.addr_map.lookup_by_line(filename, lineno)

        if item:
            self.dbg.clear_breakpoint(item.addr)
            print (f"Clr at {item.addr:04x}")


    def open_project(self, main_file: str) -> None:
        self.main_file = main_file

        self.addr_map = AddrMap(main_file)
        self.dbg = Debugger()

        self.dbg.on_stop = self.on_debugger_stop

        for f in self.addr_map.files():
            tab = SourceTab(self)
            tab.load_file(f)
            self.notebook.append_page(*tab.notepad_args())
            self.tabs[os.path.basename(f)] = tab

    def on_debugger_stop(self, reason: StopReason, addr: int) -> None:

        for tab in self.tabs.values():
            tab.clear_runcursor()

        item = self.addr_map.lookup_by_addr(addr)
        if item is not None:
            tab = self.tabs[item.filename]
            tab.set_runcursor(item.lineno)

