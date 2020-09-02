#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LENGTH 256

int main() {


    char c;
    char word[MAX_LENGTH];
    char line[MAX_LENGTH];

    scanf("%c ", &c);
    scanf("%s ", word);
    fgets(line, sizeof(line), stdin);

    printf("%c\n", c);
    printf("%s\n", word);
    printf("%s\n", line);

	return EXIT_SUCCESS;
}