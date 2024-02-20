load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "otel-go-lttng-instrumentation",
    srcs = ["otel-go-lttng-instrumentation.a"],
    hdrs = glob(["**/*.h"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
