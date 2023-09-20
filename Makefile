BUILD=build
OBJECTS=./build/cprocess.o ./build/compiler.o ./build/buffer.o ./build/vector.o ./build/lexer.o ./build/lex_process.o
INCLUDES= -I./
all: $(OBJECTS)
	gcc main.c $(INCLUDES) $(OBJECTS) -g -o ./main

./build/compiler.o: compiler.c
	gcc ./compiler.c $(INCLUDES) -o ./build/compiler.o -g -c

./build/cprocess.o: cprocess.c
	gcc ./cprocess.c $(INCLUDES) -o ./build/cprocess.o -g -c

./build/lexer.o: lexer.c
	gcc ./lexer.c $(INCLUDES) -o ./build/lexer.o -g -c

./build/lex_process.o: lex_process.c
	gcc ./lex_process.c $(INCLUDES) -o ./build/lex_process.o -g -c

./build/buffer.o: ./helpers/buffer.c
	gcc ./helpers/buffer.c $(INCLUDES) -o ./build/buffer.o -g -c

./build/vector.o: ./helpers/vector.c
	gcc ./helpers/vector.c $(INCLUDES) -o ./build/vector.o -g -c

clean:
	rm ./main
	rm -rf $(OBJECTS)
