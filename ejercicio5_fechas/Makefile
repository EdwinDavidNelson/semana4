CC = gcc
FLEX = flex
TARGET = fechas

all: $(TARGET)

$(TARGET): lex.yy.c
	$(CC) lex.yy.c -o $(TARGET) -lfl

lex.yy.c: fechas.l
	$(FLEX) fechas.l

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f lex.yy.c $(TARGET)