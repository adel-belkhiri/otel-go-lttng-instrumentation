CC=gcc
AR=ar
CFLAGS= -fPIC -I.
LIB=libsdk_span_tracepoints.a
OBJS=tpp.o
OUTPUT_DIR=otel-go-lttng-instrumentation

all: $(LIB)
	go build

$(LIB): $(OBJS)
	# mkdir -p $(OUTPUT_DIR)
	$(AR) rcs $@ $^
	pwd
	# cp $(LIB) $(OUTPUT_DIR)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(LIB)

install: $(LIB)
	cp -rpv $(LIB) $(PREFIX)/lib
	#cp -rpv *.h $(PREFIX)/include
