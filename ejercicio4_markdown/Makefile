CC = gcc
FLEX = flex
TARGET = markdown

all: $(TARGET)

$(TARGET): lex.yy.c
	$(CC) lex.yy.c -o $(TARGET) -lfl

lex.yy.c: markdown.l
	$(FLEX) markdown.l

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f lex.yy.c $(TARGET)