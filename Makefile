CC=gcc
CFLAGS= -fPIC -I.
LDFLAGS=-llttng-ust
LIB=libsdk_span_tracepoints.so
OBJS=tpp.o

all: $(LIB)
	go build

$(LIB): $(OBJS)
	$(CC) -shared -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(LIB)

