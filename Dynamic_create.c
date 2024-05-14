#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main()
{
FILE *fp;
char name[50], roll [10], city [20], phone [10], another='y';

fp=fopen("D:\Students.txt", "a");

if (fp==NULL)
{
puts ("Unable to open file"); exit(0);
exit (0);
}

fputs("\nRoll\t\tName\t\tCity\t\t\tPhone", fp);
fputs("\n_________________\n", fp);

do {
printf("Enter Student roll= ");
gets (roll);
fputs (roll, fp);
fputs ("\t\t", fp);

printf("Enter Student name=");
gets (name);
fputs (name, fp);
fputs("\t\t", fp);

printf("Enter city=");
gets (city);
fputs (city, fp);
fputs("\t\t", fp);

printf("Enter phone=");
gets (phone);
fputs (phone, fp);
fputs("\t\t", fp);
fputs ("\n", fp);

puts ("Continue?... (y/n) \n");
another=getch();
fflush(stdin);
} 
while (another=='y' || another=='Y'); 
fclose(fp);
puts("Data inserted successfully..."); 
return 0;
}
