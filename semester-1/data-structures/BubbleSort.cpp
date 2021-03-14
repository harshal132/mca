//Bubble Sort - 19-01-2021
#include<iostream>

using namespace std;
void showArray(int arr[],int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

void bubbleSort(int arr[],int n) {
	int i,j,temp;
	for(int i=0;i<n;i++){
		for(j=0;j<n-1;j++){
			
			if(arr[i] < arr[j]){
				temp=arr[j];
				arr[j]=arr[i];
				arr[i]=temp;
			}
		}
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
	bubbleSort(arr,n);
	
	return 0;
}
