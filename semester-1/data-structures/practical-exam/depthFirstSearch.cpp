#include<iostream> 
#include<stdio.h> 
#define max 10 
using namespace std;
/* a function to build adjacency matrix of a graph */ 
void buildadjm(int adj[][max], int n) {
int i,j; 
for(i=1;i<=n;i++) 
	for(j=1;j<=n;j++) {
		cout<<"enter 1 or 0: "<<i<<"-->"<<j<<" "; cin>>adj[i][j];
	}
}
/* a function to visit the nodes in a depth first order */ 
void dfs(int x,int visited[],int adj[][max],int n) {
	int j; visited[x] = 1; 
	cout<<"the node visited id is "<<x<<"\n"; 
	for(j=1;j<=n;j++) {
		if (adj[x][j] ==1 && visited[j] ==0) 
			dfs(j,visited,adj,n);
		}
}
int main()
{
	int adj[max][max],node,n; 
	int i, visited[max];
	cout<<"enter the no of nodes? "<<endl; 
	cin>>n;
	buildadjm(adj,n); 
	for(i=1;i<=n;i++) 
		visited[i] =0; 
	cout<<"enter start node "; 
	cin>>node; 
	if(visited[node] ==0) 
		dfs(node,visited,adj,n);
}

