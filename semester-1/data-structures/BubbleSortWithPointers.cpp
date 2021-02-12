#include<iostream>

using namespace std;
void showArray(int *entries,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<entries[i]<<"\n";
	}
}


void bubbleSort(int *entries,int n) {
	int i,j,temp;
	for(int i=0;i<n;i++){
		for(j=0;j<n-1;j++){
			
			if(entries[i] < entries[j]){
				temp=entries[j];
				entries[j]=entries[i];
				entries[i]=temp;
			}
		}
	}
	showArray(entries,n);
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
	cout<<"Sorting Array....\n";
	bubbleSort(ptr,n);
	
	return 0;
}
