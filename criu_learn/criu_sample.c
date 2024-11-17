/*
 * =====================================================================================
 *
 *       Filename:  criu_sample.c
 *
 *    Description:  Sample pgm to use for criu process saver.
 *
 *        Version:  1.0
 *        Created:  2024-11-17 10:40:26 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Ragavendra N (rn), ragavendra.bn@gmail.com
 *        Company:  Garden Systems, Vancouver
 *
 * =====================================================================================
 */


#include <stdio.h>

#include <unistd.h>

int main()

{

	 printf("My PID is %i\n", getpid());

	 int count = 0;

	 while (1) {

		  printf("%d\n", count++);

		  sleep(1);

	 }

}
