package diffpackage_accessexecutor;
import diffpackage_accesscontrol.*;
import diffpackage_baseclass.*;
public class Executor {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		 * Both these statements will not work
		 * As constructors in related classes
		 * have default access. 
		 * To make it work, change access of these
		 * constructors to 'public'
		 * and 
		 * uncomment below lines
		 */
		
		/*
		 * Derived d=new Derived();
		 * Unrelated u=new Unrelated();
		 */
	}

}
