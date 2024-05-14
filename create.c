#include <conio.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *fp;
    char FileContents[1000];

    fp = fopen("C:/Student.txt", "a");

    if (fp == NULL) {
        puts("Unable to open file");
        exit(0);
    }

    printf("Write file contents below:\n");
    gets(FileContents);

    fputs(FileContents, fp);

    fputs("\n", fp);
    printf("Document saved successfully....");

    fclose(fp);
    return 0;
}