#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

int main() {
    FILE *fp1, *fp2;
    char file1[1000];
    char file2[1000];
    char ch;

    // Prompt user for the source file name and read it
    printf("\nEnter the source file name to be copied: ");
    gets(file1);

    // Open the source file in read mode
    fp1 = fopen(file1, "r");

    // Prompt user for the destination file name and read it
    printf("\nEnter the destination file name: ");
    gets(file2);

    // Open the destination file in append mode
    fp2 = fopen(file2, "a");

    // Check if either file failed to open
    if (fp1 == NULL || fp2 == NULL) {
        printf("Cannot open file");
        getch(); // Wait for user input before exiting
        exit(0); // Exit the program
    }

    // Copy each character from the source file to the destination file and display it
    while ((ch = getc(fp1)) != EOF) {
        fputc(ch, fp2); // Write character to destination file
        printf("%c", ch); // Display character on the screen
    }

    // Print completion message
    printf("\nCompleted...");

    // Close both files
    fclose(fp1);
    fclose(fp2);

    return 0; // Return success
}