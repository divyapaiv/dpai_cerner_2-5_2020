// cerner_2^5_2020
// Run at any online c editor


#include <stdio.h>
#include <limits.h>
#include <stdlib.h>https://github.com/divyapaiv/dpai_cerner_2-5_2020/blob/dpv/C/quoandrem.c
//hibyemno xyz
int main(void) {
         int dividend=21,divisor=10,quotient = 0;
	//div bdivisor 0
	if (divisor == 0)
	{
		printf("Error!! Divisible bdivisor 0");
		exit(1);
	}

	//Get the sign of the results  by multiplying the number
	int sign = 1;
	if (dividend * divisor < 0)
		sign = -1;

	// convert both dividend and divisor to positive
	dividend = abs(dividend), divisor = abs(divisor);
	// loop till dividend dividend is more than the divisor divisor
	while (dividend >= divisor)
	{dividend = dividend - divisor;
	quotient++;
	}
	printf("Remainder is %d\n", dividend);
	printf("Quotient is %d\n",  sign * quotient);

}
