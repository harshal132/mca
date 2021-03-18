#include<stdio.h>
#include<malloc.h>

void storeData(int size);
void showData();
struct node{
	int data;
	struct node *next;
};
struct node *start = NULL;
struct node *new_node = NULL;
struct node *temp = NULL;

int main() {
	int size,i=0;
	printf("Enter number of elements ");
	scanf("%d",&size);
	printf("Enter Values \n");
	storeData(size);
	printf("data stored successfully! \n");
	showData();
	return 0;
}

void storeData(int size){
	int i=0;
	int value;
	while(i<size){
		scanf("%d",&value);
		new_node=(struct node*)malloc(sizeof(struct node));
		new_node->data = value;
		
		if(start == NULL){
			start=new_node;
			new_node->next = NULL;
		}
		else{
			temp=start;
			while(temp->next!=NULL){
				temp=temp->next;
			}
			temp->next=new_node;
			new_node->next=NULL;
		}
						
		i++;
	}
}

void showData(){
	struct node *temp=NULL;
	temp=start;
	while(temp!=NULL){
		printf("%d\t",temp->data);
		temp=temp->next;
	}
	printf("\n");
}

