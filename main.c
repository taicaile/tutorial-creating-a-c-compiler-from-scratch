#include <stdio.h>
#include "helpers/vector.h"

int main(int argc, char const *argv[])
{
    int x = 100;
    struct vector *vec = vector_create(sizeof(int));
    vector_push(vec, &x);
    x = 90;
    vector_push(vec, &x);

    vector_set_peek_pointer(vec, 0);
    int *ptr = vector_peek(vec);

    while (ptr)
    {
        printf("%i\n", *ptr);
        ptr = vector_peek(vec);
    }

    printf("Hello World!\n");
    return 0;
}
