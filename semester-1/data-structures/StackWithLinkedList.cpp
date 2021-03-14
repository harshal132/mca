#include<iostream>
using namespace std;
template <typename E>
class SNode {
	public:
		E element;//int, double,
		//int* next;
		SNode<E>* next;//it is used self reference
};

template<typename E>
class SLinkedList {
	public:
		SLinkedList();//constructor
		~SLinkedList();
		void addFront(E e);//push operation
		void remove();//pop operation
		void display();//traversing the elements
	private:
		SNode<E>* head;//head of the list
		
};

template <typename E>
SLinkedList<E>::SLinkedList() {
	head = NULL;
}

template <typename E>
SLinkedList<E>::~SLinkedList() {
	remove();
}

template <typename E>
//add to front of the list
void SLinkedList<E>::addFront(E e) {
	SNode<E>* v = new SNode<E>;//creating a node
	v->element = e;//mca mba
	v->next=head;
	head = v;
}

template <typename E>
void SLinkedList<E>:: remove() {
	if(head==NULL){
		cout<<"stack is empty";
	}
	else{
		SNode<E>* old = head;
		head = old ->next;
		delete old;
	}
}

template <typename E>
void SLinkedList<E>::display() {
	SNode<E>* temp;
	for(temp=head;temp!=NULL;temp=temp->next) {
		cout<<temp->element<<endl;	
	}
	
}

int main()
{
	SLinkedList <string> stringLinkedList;//creating object
	stringLinkedList.addFront("mca");
	stringLinkedList.addFront("mba");
	cout<<"elements in the stack"<<endl;
	stringLinkedList.display();
	
	stringLinkedList.remove();
	cout<<"elements in the string stack after pop operation"<<endl;
	stringLinkedList.display();
	
	SLinkedList <int> intLinkedList;
	intLinkedList.addFront(10);
	intLinkedList.addFront(20);
	cout<<"elements in the int type stack"<<endl;
	intLinkedList.display();
	
	return 0;
	
}
