#include<iostream>
using namespace std;
void showArray(int *entries,int size);
void linearSearch(int *ptr, int size);
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
	linearSearch(ptr,n);
	return 0;
}

void linearSearch(int *ptr, int size){
	int find;
	int flag=0;
	cout<<"Enter the element to search? ";
	cin>>find;
	for(int i=0;i<size;i++){
		if(ptr[i]==find){
			cout<<"element found at index = "<<i+1;
			flag=1;
			break;
		}
	}
	if(flag==0){
		cout<<"Element not present in given array.";
	}	
}

void showArray(int *entries,int size) {
	for(int i=0;i<size;i++){
		cout<<entries[i]<<"\n";
	}
}
