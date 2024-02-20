load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "otel_go_lttng_instrumentation",
    srcs = ["otel-go-lttng-instrumentation.a"],  # Replace with your actual binary file
 #   hdrs = glob(["include/**/*.h"]),  # Include headers if available
 #   includes = ["include"],  # Adjust this path as needed
    visibility = ["//visibility:public"],
)
