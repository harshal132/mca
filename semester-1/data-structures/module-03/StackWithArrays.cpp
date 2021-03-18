//Stack Implementation with Arrays.
//Date: 18-Mar-2021
#include<iostream>

using namespace std;
void showArray(int arr[],int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

int main() {
	int n,i;
	int stackCounter = -1;
	int choice;
	int new_value=0;
	cout<<"Enter number of elements ";
	cin>>n;
	int arr[10];
	for(int i=0;i<n;i++) {
		cout<<"Enter "<<i+1<<"th Element :";
		cin>>arr[i];
		stackCounter++;
	}
	cout<<"Recorded Details \n";
	showArray(arr,n);
	do{
		cout<<"\t1. Push\n\t2. Pop\n\t3. Display Stack\n\t4. Exit\n";
		cin>>choice;
		switch(choice){
			case 1: 
					if(stackCounter==9){
						cout<<"Stack is Full! Cannot add more than 10 elements\n";
					}
					else{
						stackCounter++;
						cout<<"Please provide the value to be pushed \n";
						cin>>new_value;
						arr[stackCounter]=new_value;
					}
					break;
			case 2: 
					if(stackCounter==-1){
						cout<<"Stack is Empty!\n";
					}
					else{
						cout<<"Element Popped = "<<arr[stackCounter]<<"\n";
						stackCounter--;
					}
					break;
			case 3: 
					if(stackCounter==-1){
						cout<<"Stack is Empty!\n";
					}
					else{
						showArray(arr,stackCounter+1);
					}
					break;
			case 4: break;
			default: cout<<"Invalid Data! Please select again.\n";
		}
	}
	while(choice!=4);
	return 0;
}


