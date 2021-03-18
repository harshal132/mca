#include<iostream>

using namespace std;
void showArray(int *entries,int size) {
	//cout<<"Saved Array is \n";
	for(int i=0;i<size;i++){
		cout<<entries[i]<<"\n";
	}
}


/* function to sort arr using shellSort */
void shellSort(int *list,int arraySize)
{
	int gap,j,i;
	for(gap=arraySize/2;gap>=1;gap=gap/2)
	{
		for(j=gap;j<arraySize;j++)
		{
			for(i=j-gap;i>=0;i=i-gap)
			{
				if(list[i+gap]>list[i])
				{
					break;
				}
				else
				{
					int temp = list[i+gap];
					list[i+gap]=list[i];
					list[i]=temp;
				}
			}
		}
	}
	showArray(list, arraySize);
}


int main() {
	int length,i;
	cout<<"Enter number of elements ";
	cin>>length;
	int arr[length];
	int *ptr=arr;
	for(int i=0;i<length;i++) {
		cout<<"Enter "<<i+1<<"th Element :";
		cin>>ptr[i];
	}
	ptr=arr;
	cout<<"Recorded Details \n";
	showArray(ptr,length);
	cout<<"Sorting Array with Shell Sort....\n";
	shellSort(ptr,length);
	return 0;
}
