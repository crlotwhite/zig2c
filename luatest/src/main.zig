// src/main.zig

const mylib = @import("mylib");

pub fn main() void {
    const result = mylib.add_numbers(3, 4);
    _ = result; // autofix
    mylib.greet("Zig");
}
