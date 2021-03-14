//Insertion Sort
#include<iostream>

using namespace std;
void showArray(int *arr,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

void insertionSort(int *arr,int n) {
	int value, empty, i;
	for(i=1;i<n;i++){
		value=arr[i];
		empty=i;		
		while(arr[empty-1]>value && empty!=0){
			arr[empty]=arr[empty-1];
			empty--;
		}
		arr[empty]=value;
	}	
	showArray(arr,n);
}

int main() {
	int n,i;
	cout<<"Enter number of elements ";
	cin>>n;
	int arr[n];
	int *ptr=arr;
	for(int i=0;i<n;i++) {
		cout<<"Enter "<<i+1<<"th Element :";
		cin>>ptr[i];
	}
	ptr=arr;
	cout<<"Recorded Details \n";
	showArray(ptr,n);
	cout<<"Sorting Array with Insertion Sort....\n";
	insertionSort(ptr,n);
	return 0;
}
