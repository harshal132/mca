package com.hiraymca;

import java.util.List;

import javax.sql.DataSource;

public interface IStudent {
	//setting data source
	public void setDataSource(DataSource datasource);
	//creating records- inserting record into table
	public void create(int rollno,String name, int age, int id);
	//reading specific records
	public Student readStudent(int id);
	//reading all the records from table
	public List<Student> listStudents();
	//update record
	public void update(int id,int rollno,String name, int age);
	//delete record
	public void delete(int id);
}
