#include <stdio.h>
#include <stdlib.h>

int main() {

	char s[100];
	fgets(s, sizeof(s), stdin);

	printf("Hello, World!\n");
	printf("%s\n", s);

	return EXIT_SUCCESS;
}
