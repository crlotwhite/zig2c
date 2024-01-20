// src/mylib.zig

const std = @import("std");

export fn add_numbers(a: i32, b: i32) callconv(.C) i32 {
    return a + b;
}
