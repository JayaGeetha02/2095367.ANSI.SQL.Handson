package com.cognizant.shapes;

public class Rectangle {
	int length;
	int breadth;
	
	void calculateArea() {
		int area = length * breadth;
		System.out.println("The Area of the Rectangle is calculated using the formula "+ length+" * "+breadth +"= "+area);
	}
}
