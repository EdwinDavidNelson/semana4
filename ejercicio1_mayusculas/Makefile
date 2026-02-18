CC = gcc
FLEX = flex
TARGET = mayusculas

all: $(TARGET)

$(TARGET): lex.yy.c
	$(CC) lex.yy.c -o $(TARGET) -lfl

lex.yy.c: mayusculas.l
	$(FLEX) mayusculas.l

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f lex.yy.c $(TARGET)