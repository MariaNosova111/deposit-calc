#include "deposit.h"

int main (){
	setlocale(LC_ALL, "Russian");
	int ye,date,d,m,c;
	cout << "Enter the Deposit amount:";
	scanf("%d",&ye);cout << endl;
	if (ye<10){cout << "incorrect data"; return 0;};
	cout << "Enter the Deposit term:";
	scanf("%d",&date);cout << endl;
	if ((date>365)||(date<=0)){cout << "incorrect data"; return 0;};
	if (ye<100) d=1;
		else d=2;
	if (date<=30) c=zero(d,ye);
    	if ((date<=120) && (date>=31)) c=one(d,ye);
	if ((date<=240) && (date>=121)) c=two(d,ye);
	if ((date<=365) && (date>=241)) c=three(d,ye);
	cout << "Final summ:";
	cout << c;
	return 0;
}
