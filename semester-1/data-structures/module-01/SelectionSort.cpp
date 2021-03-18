//Selection Sort
#include<iostream>

using namespace std;
void showArray(int *arr,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

void selectionSort(int *arr,int n) {
	int minimumValueIndex,temp,i,j;
	for(i=0;i<n;i++) {
		minimumValueIndex=i;
		for(j=i+1;j<n;j++){
			if(arr[minimumValueIndex] > arr[j]){
				minimumValueIndex=j;
			}
		}
		temp=arr[i];
		arr[i]=arr[minimumValueIndex];
		arr[minimumValueIndex]=temp;
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
	cout<<"Sorting Array with Selection Sort....\n";
	selectionSort(ptr,n);
	return 0;
}
