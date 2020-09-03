#include <stdlib.h>
#include <stdio.h>


const int readNumber();

void printLiteraryNumber(int n);

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


    const int n = readNumber();
    printLiteraryNumber(n);

    return EXIT_SUCCESS;
}

void printLiteraryNumber(const int n) {

    if (n >= 0 && n <= 9) {
        puts(numbers[n]);

    } else {
        puts("Greater than 9");
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