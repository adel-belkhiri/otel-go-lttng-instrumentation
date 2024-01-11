#undef TRACEPOINT_PROVIDER
#define TRACEPOINT_PROVIDER otl_ust_go

#undef TRACEPOINT_INCLUDE
#define TRACEPOINT_INCLUDE "./tpp.h"

#if !defined(TPP_H_) || defined(TRACEPOINT_HEADER_MULTI_READ)
#define TPP_H_

#include <lttng/tracepoint.h>


TRACEPOINT_EVENT(
    otl_ust_go,
    start_span,
    TP_ARGS(
        const char *, trace_id,
        const char *, span_id,
        const char *, parent_span_id
    ),
    TP_FIELDS(
        ctf_string(trace_id, trace_id)
        ctf_string(span_id, span_id)
        ctf_string(parent_span_id, parent_span_id)
    )
)

TRACEPOINT_EVENT(
   otl_ust_go,
   end_span,
   TP_ARGS(
       const char *, trace_id,
       const char *, span_id,
       const char *, service_name,
       const char *, op_name
   ),
   TP_FIELDS(
       ctf_string(trace_id, trace_id)
       ctf_string(span_id, span_id)
       ctf_string(service_name, service_name)
        ctf_string(op_name, op_name)
    )
)
#endif
#include <lttng/tracepoint-event.h>
