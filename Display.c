DISPLAY FILE
#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main( )
}
FILE *fp;
char file [100], ch;

// Input File name with path
printf ("\nEnter file name: ");
gets(file);


//Enter: D:\Student.txt

fp=fopen(file, "r");

if (fp==NULL)
{
printf("Can not Open the file %s", file);
getch( );
exit (0);

// Read file character by character 
while ((ch=getc (fp)) != EOF)
{
printf("%c", ch);
}
fclose (fp);
return 0;
}
