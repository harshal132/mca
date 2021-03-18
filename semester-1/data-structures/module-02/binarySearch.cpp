#include<iostream>
using namespace std;
int binarySearch(int list[],int key,int arraySize) {
	int start = 0;
	int end = arraySize - 1;
	int pos;
	int mid = int((start+end)/2);
	while(start <= end && list[mid]!=key) {
		if(key < list[mid])
		end = mid -1;
		else
		start = mid+1;
		mid = int((start+end)/2);
	}
	if(list[mid]==key){
		pos = mid;
	}
	else {
		pos = -1;
	}
	return pos;
}

int main() {
	int arraySize,key,list[10],pos;
	cout<<"enter number of elements \n";
	cin>>arraySize;
	cout<<"enter "<<arraySize<<" no of elements in ascending order\n";
	for(int i=0;i<arraySize;i++){
		cin>>list[i];
	}
	cout<<"enter the element to search\n";
	cin>>key;
	pos = binarySearch(list,key,arraySize);
	if(pos==-1){
		cout<<"element not found\n";
	}
	else{
		cout<<"element found at the position "<<pos+1;
	}
	return 0;
}
