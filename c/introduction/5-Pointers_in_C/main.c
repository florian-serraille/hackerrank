#include <stdio.h>
#include <stdlib.h>

void update(int *a, int *b) {

    const int A = *a;

    *a = A + *b;
    *b = A > *b ? A - *b : *b - A;
}


int main() {

    int a, b;
    int *pa = &a, *pb = &b;

    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return EXIT_SUCCESS;
}
