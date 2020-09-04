#include <stdlib.h>
#include <stdio.h>


const int readNumber();

void printIntervalResult(int a, int b);

static const char *numbers[] = {"zero",
                                "one",
                                "two",
                                "three",
                                "four",
                                "five",
                                "six",
                                "seven",
                                "eight",
                                "nine",
                                "ten"};

int main() {


    const int a = readNumber();
    const int b = readNumber();

    printIntervalResult(a, b);

    return EXIT_SUCCESS;
}

void printIntervalResult(const int a, const int b) {

    for (int i = a; i <= b; i++) {

        if (i >= 0 && i <= 9) {
            puts(numbers[i]);

        } else {
            puts(i % 2 == 0 ? "even" : "odd");
        }
    }
}


const int readNumber() {

    int n;

    if (!scanf("%d", &n)) {
        puts("Not a number !");
        exit(EXIT_FAILURE);
    }

    return n;
}