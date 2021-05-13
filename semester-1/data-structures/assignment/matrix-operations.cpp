#include<iostream>
using namespace std;

void display(int matrix[][10], int row, int column) {
	int i, j;
	cout << "Matrix:" << endl;
	for(i = 0; i < row; ++i)
	{
		for(j = 0; j < column; ++j)
		{
			cout << matrix[i][j] << "\t";
		}
		cout<<"\n";
	}
}

void transpose(int matrix[][10], int row, int column) {
    int i, j;
    int transpose[10][10];
    for (int i = 0; i < row; ++i) {
      for (int j = 0; j < column; ++j) {
         transpose[j][i] = matrix[i][j];
        }
  	}
  	cout<<"Transposed Matrix is\n";
  	display(transpose, column, row);
}

void basicOperation(int firstMatrix[][10], int secondMatrix[][10], int choice, int r, int c){
	int i, j;
	int sum[10][10];
	if(choice==1){
		for(i = 0; i < r; ++i){
			for(j = 0; j < c; ++j){
				sum[i][j] = firstMatrix[i][j] + secondMatrix[i][j];
			}
		}
		display(sum, r,c);		
	}
	else{
		for(i = 0; i < r; ++i){
			for(j = 0; j < c; ++j){
				sum[i][j] = firstMatrix[i][j] - secondMatrix[i][j];
			}
		}
		display(sum, r,c);
	}	
}

void multiplyMatrices(int firstMatrix[][10], int secondMatrix[][10], int rowFirst, int columnFirst, int rowSecond, int columnSecond) {
	int i, j, k;
	int mult[10][10];
	// Initializing elements of matrix mult to 0.
	for(i = 0; i < rowFirst; ++i)
	{
		for(j = 0; j < columnSecond; ++j)
		{
			mult[i][j] = 0;
		}
	}
	// Multiplying matrix firstMatrix and secondMatrix and storing in array mult.
	for(i = 0; i < rowFirst; ++i)
	{
		for(j = 0; j < columnSecond; ++j)
		{
			for(k=0; k<columnFirst; ++k)
			{
				mult[i][j] += firstMatrix[i][k] * secondMatrix[k][j];
			}
		}
	}	
	display(mult, rowFirst, columnSecond);
}
void performOperation(int choice){
	int i, j;
	int rowFirst, columnFirst, rowSecond, columnSecond;
	int firstMatrix[10][10], secondMatrix[10][10];
	cout<<"\nEnter count of rows for First Matrix:";
	cin>>rowFirst;
	cout<<"\nEnter count of columns for First Matrix:";
	cin>>columnFirst;
	if(choice == 4){
		goto POSSIBLE;
	}
	cout<<"\nEnter count of rows for Second Matrix:";
	cin>>rowSecond;
	cout<<"\nEnter count of columns for Second Matrix:";
	cin>>columnSecond;
	
	if(choice==3){
		if(columnFirst==rowSecond){
			cout<<"\nMultiplication is possible for given matrix";
			goto POSSIBLE;
		}
		else{
			cout<<"\nMultiplication is not possible";
			goto NOTPOSSIBLE;
		}
	}
	//label
	POSSIBLE:
	cout << endl << "\nEnter elements of matrix 1:" << endl;
	for(i = 0; i < rowFirst; ++i)
	{
		for(j = 0; j < columnFirst; ++j)
		{
			cout << "\nEnter elements a"<< i + 1 << j + 1 << ": ";
			cin >> firstMatrix[i][j];
		}
	}
	if(choice == 4){
		goto TRANSPOSE_OPERATION;
	}
	cout << endl << "\nEnter elements of matrix 2:" << endl;
	for(i = 0; i < rowSecond; ++i)
	{
		for(j = 0; j < columnSecond; ++j)
		{
			cout << "\nEnter elements b" << i + 1 << j + 1 << ": ";
			cin >> secondMatrix[i][j];
		}
	}
	if(choice==3){
		multiplyMatrices(firstMatrix, secondMatrix, rowFirst, columnFirst, rowSecond, columnSecond);
	}
	else if(choice==2){
		if(rowFirst==rowSecond && columnFirst == columnSecond){
			basicOperation(firstMatrix,secondMatrix, choice, rowFirst, columnFirst);
		}
		else{
			cout<<"Subtraction not possible";
		}
	}
	else if(choice==1){
		if(rowFirst==rowSecond && columnFirst == columnSecond){
			basicOperation(firstMatrix,secondMatrix, choice, rowFirst, columnFirst);
		}
		else{
			cout<<"Addition not possible";
		}
	}
	else{
		TRANSPOSE_OPERATION:
		transpose(firstMatrix, rowFirst, columnFirst);
	}
	//label
	NOTPOSSIBLE: cout<<"\n";
}

int main() {
	int choice;
	do{
		cout<<"\t\t\t##### Matrix Operations ####\n";
		cout<<"\t\t1. Addition of Two Matrices?\n";
		cout<<"\t\t2. Subtraction of Two Matrices?\n";
		cout<<"\t\t3. Multiplication of Two Matrices?\n";
		cout<<"\t\t4. Transpose of a Matrix?\n";
		cout<<"\t\t5. Exit";
		cout<<"\n\tEnter your choice ";
		cin>>choice;
		if(choice>0 && choice <5){
			performOperation(choice);			
		}
		else if(choice>5){
			cout<<"\nInvalid Choice! Please select a valid option.";
		}	
	}while(choice!=5);
	return 0;
}
