package lttng

/*
#cgo LDFLAGS: -ldl -llttng-ust -L. -lsdk_span_tracepoints

#define TRACEPOINT_DEFINE
#include "./tpp.h"

void traceStartSpan(const char* trace_id, const char * span_id, const char * parent_span_id) {
	tracepoint(otl_ust_go, start_span, trace_id, span_id, parent_span_id);
}

void traceEndSpan(const char* trace_id, const char * span_id, const char * service_name, const char * op_name) {
	tracepoint(otl_ust_go, end_span, trace_id, span_id, service_name, op_name);
}

*/
import "C"

func ReportStartSpan(traceID string, spanID string, parentSpanID string) {
	C.traceStartSpan(
		C.CString(traceID),
		C.CString(spanID),
		C.CString(parentSpanID),
	)
}

func ReportEndSpan(traceID string, spanID string, serviceName string, opName string) {
	C.traceEndSpan(
		C.CString(traceID),
		C.CString(spanID),
		C.CString(serviceName),
		C.CString(opName),
	)
}
