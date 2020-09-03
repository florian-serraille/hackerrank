#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int max_of_two(int a, int b) {
    return a >= b ? a : b;
}

int max_of_four(int a, int b, int c, int d) {
    return max_of_two(max_of_two(a, b),
                      max_of_two(c, d));
}

int main() {

    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);

    return EXIT_SUCCESS;
}
