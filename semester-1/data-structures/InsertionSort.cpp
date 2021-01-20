//Insertion Sort
#include<iostream>

using namespace std;
void showArray(int arr[],int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

void insertionSort(int arr[],int n) {
	int value, empty, i;
	for(i=1;i<n;i++){
		value=arr[i];
		empty=i;
		
		while(arr[empty-1]>value && empty!=0){
			arr[empty]=arr[empty-1];
			empty--;
		}
		arr[empty]=value;
		
		//cout<<"Loop Number : "<<i<<"\n";
		//showArray(arr,n);
	}
	
	showArray(arr,n);
}

int main() {
	int n,i;
	
	cout<<"Enter number of elements ";
	cin>>n;
	int arr[n];
	for(int i=0;i<n;i++) {
		cout<<"Enter "<<i+1<<"th Element :";
		cin>>arr[i];
	}
	cout<<"Recorded Details \n";
	showArray(arr,n);
	cout<<"Sorting Array....\n";
	insertionSort(arr,n);
	
	return 0;
}
