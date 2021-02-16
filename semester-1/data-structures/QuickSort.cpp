//Quick Sort - 16-02-2021
#include<iostream>
using namespace std;
int partition(int arr[], int lower, int upper) {
	int pivot = arr[lower]; // consider first element as pivot element
	int start = lower;
	int end = upper;
	int temp;
	while(start<end) {
		while(arr[start]<=pivot){
			//check for element location which is greater that pivot element from start
			start++;
		}
		while(arr[end]>pivot){
			//check for element location which is smaller that pivot element from end
			end--;
		}	
		if(start<end){
			temp=arr[start];
			arr[start]=arr[end];
			arr[end]=temp;
		}		
	}
	
	temp= arr[lower];
	arr[lower]=arr[end];
	arr[end]=temp;
	
	return end;
}

void showArray(int *arr,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<arr[i]<<"\n";
	}
}

void quickSort(int *arr,int lower, int upper) {
	int location;
	if(lower<upper){
		location=partition(arr,lower,upper);
		quickSort(arr,lower,location-1); // sorting elements in left section of pivot element
		quickSort(arr,location+1,upper); // sorting elements in right section of pivot element
	}
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
	quickSort(arr,0,n-1);
	showArray(arr,n);
	return 0;
}
