package com.practical.exam;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TraverseList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String input;
		int count;
		Scanner sc = new Scanner(System.in);
		
		List<String> list = new ArrayList<String>();
		System.out.println("Initial size of list: " + list.size());
		
		System.out.println("Please provide the number of elements: ");
		count=sc.nextInt();
		sc.nextLine();
		System.out.println("Enter Values:");
		for(int i=0;i<count;i++) {
			input=sc.nextLine();
			list.add(input);
		}
		sc.close();
		System.out.println("Size of list after adding elements: " + list.size());
		showListWithForEach(list);
	}
	
	private static void showListWithForEach(List<?> list) {
		System.out.println("Displaying Elements with ForEach Loop");
		for (Object o: list) {
			System.out.println(o.toString());
		}
	}

}
