CC = gcc
FLEX = flex
TARGET = espacios

all: $(TARGET)

$(TARGET): lex.yy.c
	$(CC) lex.yy.c -o $(TARGET) -lfl

lex.yy.c: espacios.l
	$(FLEX) espacios.l

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f lex.yy.c $(TARGET)