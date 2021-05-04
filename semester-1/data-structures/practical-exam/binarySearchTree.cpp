#include <iostream>
using namespace std;
struct tree {
    int info;
    tree *Left, *Right;
};
tree* root;
class Binary_tree {
public:
    Binary_tree();
    void insert1(int);
    tree* insert2(tree*, tree*);
    void intrav(tree*);
    int height(tree* r);
    
};

Binary_tree::height(tree* r = root){
    	if(r==NULL) {
			return -1;
		}
		else {
		  int lheight = height(r->Left);
		  int rheight = height(r->Right);
		  if(lheight>rheight){
			return(lheight+1);
		  }
		  else{
		  	return (rheight+1);
		  }
		}
}

Binary_tree::Binary_tree()
{
    root = NULL;
}
tree* Binary_tree::insert2(tree* temp, tree* newnode)
{
    if (temp == NULL) {
        temp = newnode;
    }
    else if (temp->info < newnode->info) {
        insert2(temp->Right, newnode);
        if (temp->Right == NULL)
            temp->Right = newnode;
    }
    else {
        insert2(temp->Left, newnode);
        if (temp->Left == NULL)
            temp->Left = newnode;
    }
    return temp;
}
void Binary_tree::insert1(int n)
{
    tree *temp = root, *newnode;
    newnode = new tree;
    newnode->Left = NULL;
    newnode->Right = NULL;
    newnode->info = n;
    root = insert2(temp, newnode);
}

void Binary_tree::intrav(tree* t = root)
{
    if (root == NULL) {
        cout << "Nothing to display";
    }
    else if (t != NULL) {
        intrav(t->Left);
        cout << t->info << " ";
        intrav(t->Right);
    }
}

int main()
{
    Binary_tree bt;
    int choice, n, key;
    while (1) {
        cout << "\n\t1. Insert\n\t2. Display Height\n\t3. Traversal\n\t4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;
        switch (choice) {
        case 1:
            cout << "Enter item: ";
            cin >> n;
            bt.insert1(n);
            break;
        case 2:
        	cout<<"Height OF the tree is "<<bt.height();
        	break;
        case 3:
            cout << endl;
            bt.intrav();
            break;
        case 4:
            exit(0);
        }
    }
    return 0;
}

