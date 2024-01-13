CC=gcc
AR=ar
CFLAGS= -fPIC -I.
LIB=libsdk_span_tracepoints.a
OBJS=tpp.o

all: $(LIB)
	go build

$(LIB): $(OBJS)
	$(AR) rcs $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(LIB)

#install:
#	cp $(LIB) /usr/local/lib
#	ldconfig

