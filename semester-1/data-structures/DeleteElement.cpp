//Program:- Write a program in c++ to delete an element from an array. Update the index also.
//Author:- Harshal Chavan
//Date:- 04/02/2021
#include<iostream>
using namespace std;
void showArray(int arr[],int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++) {
		cout<<arr[i]<<"\n";
	}
}

void deleteElement(int value, int arr[], int length) {
	for(int i=0;i<length;i++) {
		if(value==arr[i]) {
			cout<<"Element Found\n";
			for(int j=i;j<length-1;j++) {
				arr[j]=arr[j+1];
			}
			length--;
		break;
		}
		else if(i==length-1){
			cout<<"Element not present in given Array";
		}
	}
	cout<<"Array After Deleting Element\n";
	showArray(arr,length);
}

int main() {
	int n,deleteValue;
	
	cout<<"Enter number of elements ";
	cin>>n;
	int arr[n];
	for(int i=0;i<n;i++) {
		cout<<"Enter "<<i+1<<"th Element :";
		cin>>arr[i];
	}
	cout<<"Recorded Details \n";
	showArray(arr,n);
	
	cout<<"Please Enter the Element which you would like to delete = ";
	cin>>deleteValue;
	
	deleteElement(deleteValue, arr, n);
	
	return 0;
}

