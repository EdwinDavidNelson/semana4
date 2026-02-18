CC = gcc
FLEX = flex
TARGET = ips

all: $(TARGET)

$(TARGET): lex.yy.c
	$(CC) lex.yy.c -o $(TARGET) -lfl

lex.yy.c: ips.l
	$(FLEX) ips.l

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f lex.yy.c $(TARGET)