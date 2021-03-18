#include<iostream>
using namespace std;
class Stack_Linked {
	struct node{
		int info;
		struct node *link;//A link to the next node
	};
	struct node *top;
	typedef struct node *NODE;
	public:
	Stack_Linked(){
		top=NULL;
	}
//function declarations
	void push();
	void pop();
	void display();
};
//This function is to perform the push operation
void Stack_Linked::push() {
	NODE NewNode;
	int pushed_item;
	//A new node is created dynamically
	NewNode=(NODE)new(struct node);
	cout<<"\nInput the new value to be pushed on the stack:";
	cin>>pushed_item;
	NewNode->info=pushed_item;//Data is pushed to the stack
	NewNode->link=top;//Link pointer is set to the next node
	top=NewNode;//Top pointer is set
}/*End of push()*/
//Following function will implement the pop operation
void Stack_Linked::pop(){
	NODE tmp;
	if(top == NULL)//checking whether the stack is empty or not
		{
			cout<<"\nStack is empty\n";
		}
	else{ 
		tmp=top;//popping the element
		cout<<"\nPopped item is:"<<tmp->info;
		top=top->link;//resetting the top pointer
		tmp->link=NULL;
		delete(tmp);//freeing the popped node
	}
}/*End of pop()*/

//This is to display all the element in the stack
void Stack_Linked::display() {
	if(top==NULL)//Checking whether the stack is empty or not
		cout<<"\nStack is empty\n";
	else {
		NODE ptr=top;
		cout<<"\nStack elements:\n";
		while(ptr != NULL){
			cout<<"\n"<<ptr->info;
			ptr = ptr->link;
		}/*End of while */
	}/*End of if*/
}

int main() {
	Stack_Linked So;
	int choice;
	char opt;
	do{
		//##MENU##
		cout<<"\n\t1.PUSH";
		cout<<"\n\t2.POP";
		cout<<"\n\t3.DISPLAY";
		cout<<"\n\t4.EXIT";
		cout<<"\nEnter your choice : ";
		cin>>choice;
		switch(choice){
			case 1:
				So.push();//push function is called
				break;
			case 2:
				So.pop();//pop function is called
				break;
			case 3:
				So.display();//display function is called
				break;
			case 4:
				exit(1);
			default:
				cout<<"\nWrong choice\n";
		}
		cout<<"\n\nDo you want to continue (Y/y) = ";
		cin>>opt;
	}while((opt == 'Y') || (opt == 'y'));
}

