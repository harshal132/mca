package practical_05;
/*
 * Assignments on Lambda Expression
	1. Write a Java program using Lambda Expression to print ”Hello World”.
	2. Write a Java program using Lambda Expression with single parameters.
	3. Write a Java program using Lambda Expression with multiple parameters to add two numbers.
	4. Write a Java program using Lambda Expression to calculate the following:
		a. Convert Fahrenheit to Celcius
		b. Convert Kilometers to Miles.
	5. Write a Java program using Lambda Expression with or without return keyword.
	6. Write a Java program using Lambda Expression to concatenate two strings.
 */
@FunctionalInterface
interface SayHello{
	void showMessage(String message);
}

@FunctionalInterface
interface Addition{
	void addNumbers(int num1, int num2);
}

@FunctionalInterface
interface Concatenate{
	String concat(String value1, String value2);
}

@FunctionalInterface
interface degreeToFahrenheit{
	void calculate(double degree);
}

@FunctionalInterface
interface fahrenheitToDegree{
	void calculate(double fahrenheit);
}



public class LambdaExpressionExamples {
	public static void main(String[] args) {
		//1. Write a Java program using Lambda Expression to print ”Hello World”.
		//2. Write a Java program using Lambda Expression with single parameters.
		SayHello object =(msg)->{
			System.out.println(msg);
		};
		String message = "Hello World!";
		object.showMessage(message);
		
		part3();
		part4();
		part5();
		
	}
	private static void part5() {
		// 5. Write a Java program using Lambda Expression with or without return keyword.
		// 6. Write a Java program using Lambda Expression to concatenate two strings.
		Concatenate concat = (String value1, String value2)->{
			return value1.concat(value2);
		};
		System.out.println(concat.concat("Harshal", "Chavan"));	
	}

	private static void part4() {
		/*
		 * 4. Write a Java program using Lambda Expression to calculate the following:
			a. Convert Fahrenheit to Celcius
			b. Convert Kilometers to Miles.
		 */
		degreeToFahrenheit object = (double degree)->{
			System.out.println("Fahrenheit = "+(degree * (9/5)+32));
		};
		object.calculate(0);
		
		fahrenheitToDegree object2 = (double value)->{
			System.out.println("Degree = "+((value-32)*(5/9)));
		};
		object2.calculate(32);
		
	}

	private static void part3() {
		//3. Write a Java program using Lambda Expression with multiple parameters to add two numbers.
		Addition addition = (int num1, int num2)->{
			System.out.println("Addition of 2 numbers = "+(num1+num2));
		};
		addition.addNumbers(20, 20);
	}

}
