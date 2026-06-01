CC = cc
CFLAGS = 
DEFS = 
LDFLAGS =
LIBS = -lm
SRCS = main.c
OUT = pacc

all: $(OUT)

$(OUT): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(OUT) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(OUT)

install: $(OUT)
	cp $(OUT) /usr/local/bin

uninstall:
	rm -f /usr/local/bin/$(OUT)
