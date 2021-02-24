#include<iostream>

using namespace std;
void showArray(int *entries,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<entries[i]<<"\n";
	}
}

int getMax(int *list,int length) {
	int max = list[0];
	for(int i=1;i<length;i++){
		if(list[i]>max){
			max = list[i];
		}	
	}	
	return max;
}

void countSort(int list[],int arraySize,int pos)
{
	int count[10]= {0};
	int i;
	int output[arraySize];
	for(i=0;i<arraySize;i++)
	count[(list[i]/pos)%10]++;
	for(i=1;i<=9;i++)
	count[i]=count[i]+count[i-1];
	for(i=arraySize-1;i>=0;i--)
	{
		output[count[(list[i]/pos)%10]-1]=list[i];
		count[(list[i]/pos)%10]--;
	}
	for(i=0;i<arraySize;i++){
		list[i]=output[i];
	}	
}

void radixSort(int list[],int arraySize) {
	int max = getMax(list,arraySize);
	for(int pos=1;max/pos>0;pos=pos*10)
	{
		countSort(list,arraySize,pos);
	}
	showArray(list,arraySize);
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
	radixSort(ptr,n);
	
	return 0;
}
