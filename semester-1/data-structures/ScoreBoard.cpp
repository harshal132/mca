//Program: - Add remove method in Scoreboard class and implement it. Submit the program with output.
//Author: - Harshal Chavan
//Date: - 07/02/2021
#include<iostream>
using namespace std;
class PlayerList {
	private:
		string name;
		int score;
	public:
		PlayerList(string n=" ",int s=0);
		string getName();
		int getScore();
};
PlayerList::PlayerList(string n,int s) {
	name = n;
	score = s;
}
string PlayerList :: getName(){
	return name;
}
int PlayerList::getScore(){
	return score;
}



class ScoreBoard{
	private:
		int maxEntries;//maximum number of entries=5//used to create memory space
		int numEntries;//actual entries//actual use of memory space
		PlayerList* entries;//array of player scores
	public:
		ScoreBoard(int maxEnt);
		~ScoreBoard();
	void add(PlayerList& e);//retrive the scores from PlayerList
	void display();
	void search();
	void remove() {
		int score;
		int i;
		int found=0;
		cout<<"\n\n\nPlease provide the score which you would like to remove: ";
		cin>>score;
		for(i=0;i<5;i++){
			
			if(score==entries[i].getScore()) {
				found++;
				cout<<"Removing Player named: "<<entries[i].getName()<<"\n";
				for(int j=i;j<maxEntries-1;j++) {
					entries[j]=entries[j+1];
				}
				maxEntries--;
			}
		}
		if(found==0) {
			cout<<"Player with provided score is not available \n";
		}
	}
};
ScoreBoard::ScoreBoard(int maxEnt){
	maxEntries=maxEnt;
	entries = new PlayerList[maxEntries];//size of array is 5
	numEntries=0; 
}
ScoreBoard::~ScoreBoard(){
	delete[] entries;
}
void ScoreBoard::add(PlayerList& e) {
	int newScore = e.getScore();//60
	if(numEntries==maxEntries)//checking for array space
	//maxEntry = 5
	//numEntry =5
	{
		if(newScore <= entries[maxEntries-1].getScore())//5-1=4
		//60<=10
		return;
	}
	else numEntries++;	
	int i = numEntries - 2;//3
	while(i>=0 && newScore>entries[i].getScore())//finding the place for new score
	{
		entries[i+1]=entries[i];
		i--;
	}
	entries[i+1]=e;	
}

void ScoreBoard::display()
{
	cout<<"Score Board size is "<<maxEntries<<"\n";
	for(int i=0;i<maxEntries;i++)
	cout<<entries[i].getName()<<" "<<entries[i].getScore()<<endl;
}
void ScoreBoard::search()
{
	int key;
	cout<<"Enter Score to Perform search operation: ";
	cin>>key;
	int i;
	for(i=0;i<5;i++)
	{
		if(key==entries[i].getScore())
		break;
	}
	cout<<"Player with given score is "<<entries[i].getName();
}
int main()
{
	PlayerList harshal("Harshal",100);
	PlayerList sourabh("Sourabh",60);
	PlayerList vinayak("Vinayak",55);
	PlayerList nikita("Nikita",50);
	PlayerList rajan("Rajan",40);
	PlayerList lekha("Lekha",30);
	ScoreBoard s(5);
	s.add(sourabh);
	s.add(nikita);
	s.add(harshal);
	s.add(vinayak);
	s.add(lekha);
	s.add(rajan);
	
	cout<<"Top 5 Scores are \n";
	s.display();
	s.search();
	
	s.remove();
	cout<<"Updated Score Board :\n";
	s.display();
	return 0;
}

