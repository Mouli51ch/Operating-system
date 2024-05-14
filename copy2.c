#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main()
{
   	FILE *fp1,*fp2;
  	char file1[1000];
   	char file2[1000];
  	char ch;


  	printf("\nEnter the source file name to be copied:");
  	gets(file1);
  	fp1=fopen(file1,"r");

   	printf("\nEnter the destination file name:");
  	gets(file2);
  	fp2=fopen(file2,"a");


  	if(fp1==NULL ||fp2==NULL)
   	{
		printf("Cannot open file");
      	getch();
	  	exit(0);
  	}



  	while((ch=getc(fp1))!=EOF)
  	{
  		fputc(ch,fp2);  // or putc(ch,fp2);
  		//putc(ch,fp2);
	}

   	
  	printf("\nCompleted...");
  	fclose(fp1);
  	fclose(fp2);

return 0;
} 