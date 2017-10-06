#include <stdio.h>

int main() {
    char c[12] = {57, 80, 69, 56, 61, 60, 26, 22, 7, -13, -17, -50};
    for(int i = 0; i < sizeof(c); ++i)
    {
        printf("%c", c[i] + i * i - i + 42);
    }
    printf("\n");
    return 0;
}
