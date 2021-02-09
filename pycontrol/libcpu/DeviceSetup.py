from .devices import *
from .pseudo_devices import RamProxy
from .pin import Pin, NullPin, Level, Mux, MuxPin

OutMux = Mux([0, 1, 2], 7) # bits 5-7 in Control Word, defaults to 7
LoadMux = Mux([8, 9, 10], 7)

RegA = Register("A",
    out = MuxPin(OutMux, 0),
    load = MuxPin(LoadMux, 0),
    alu_a = NullPin(10, Level.LOW),
    alu_b = NullPin(11, Level.LOW))

RegB = Register("B",
    out = MuxPin(OutMux, 1),
    load = MuxPin(LoadMux, 1),
    alu_a = NullPin(12, Level.LOW),
    alu_b = NullPin(13, Level.LOW))

AddSub = ALU("AddSub",
    out = MuxPin(OutMux, 2),
    sub = Pin(4, Level.HIGH))

Flags = Flags("F",
    load = Pin(6, Level.LOW),
    use_carry = Pin(11, Level.HIGH),
    bus_out = MuxPin(OutMux, 4),
    bus_in = Pin(3, Level.HIGH))

Mar = Register("MAR",
    out = NullPin(-1, Level.LOW),
    load = MuxPin(LoadMux, 2),
    alu_a = NullPin(-1, Level.LOW),
    alu_b = NullPin(-1, Level.LOW))

# currently same as regular MAR, can be redefined for different
# hardware configuration. Will not require changes in instruction
# definitions
ProgMar = Mar

Ram = RAM("Ram",
    out = MuxPin(OutMux, 3),
    write = MuxPin(LoadMux, 3))

ProgMem = RamProxy("ProgMem",
    ram = Ram)

IR = Register("IR",
    out = NullPin(-1, Level.LOW),
    load = MuxPin(LoadMux, 4),
    alu_a = NullPin(-1, Level.LOW),
    alu_b = NullPin(-1, Level.LOW))

Clock = Clock("Clock",
    halt = Pin(13, Level.LOW))

StepCounter = StepCounter("Steps",
    reset = Pin(7, Level.LOW))

IRFetch = IRFetch("IRFetch",
    load = Pin(12, Level.LOW))

PC = ProgramCounter("PC",
    out = MuxPin(OutMux, 5),
    load = MuxPin(LoadMux, 5),
    count = Pin(5, Level.HIGH))

OutPort = Register("Out",
    out = NullPin(-1, Level.LOW),
    load = MuxPin(LoadMux, 6),
    alu_a = NullPin(-1, Level.LOW),
    alu_b = NullPin(-1, Level.LOW))
