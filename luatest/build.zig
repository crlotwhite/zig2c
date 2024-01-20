const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const lib = b.addSharedLibrary(.{
        .name = "mylib",
        .root_source_file = .{ .path = "src/mylib.zig" },
        .target = target,
        .optimize = optimize,
    });
    b.installArtifact(lib);
}
