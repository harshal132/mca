#include<iostream>
#include <cstring> //contains strlen function
using namespace std;

bool checkParanthesis(char exp[]){
	int len = strlen(exp);
	//cout<<"Length Of array is "<<len;
	int pCounter=0;
	
	for(int i=0; i<len;i++){
		if(exp[i]=='{' || exp[i]=='}' || exp[i]=='(' || exp[i]==')' || exp[i]=='[' || exp[i]==']'){
			pCounter++;
		}
	}
	if(pCounter%2==0){
		return true;
	}else{
		return false;
	}
}
int main(){
	char exp[100];
	cout<<"Please enter your equation : \n";
	cin>>exp;
	
	if(checkParanthesis(exp)){
		cout<<"Given Equation is Balanced";
	}
	else{
		cout<<"Given Equation is Not Balanced";
	}
}
