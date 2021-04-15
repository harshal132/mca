package com.hiraymca;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class StudentJDBCTemplate implements IStudent {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	@Override
	public void setDataSource(DataSource datasource) {
		// TODO Auto-generated method stub
		this.dataSource=datasource; 
		this.jdbcTemplateObject=new JdbcTemplate(datasource);
	}

	@Override
	public void create(int rollno, String name, int age, int id) {
		// TODO Auto-generated method stub
		String sql="insert into student2(rollno,sname,age,id)values(?,?,?,?)"; 
		jdbcTemplateObject.update(sql,rollno,name,age,id); 
		System.out.println("Record inserted successfully");
	}

	@Override
	public Student readStudent(int id) {
		// TODO Auto-generated method stub
		String sql="select * from student2 where id=?";
		Student student=(Student)jdbcTemplateObject.queryForObject(sql,new Object[]{id},new StudentMapper());
		return student;
	}

	@Override
	public List<Student> listStudents() {
		// TODO Auto-generated method stub
		String sql="select * from student2";
		List<Student> students=jdbcTemplateObject.query(sql, new StudentMapper());
		return students;
	}

	@Override
	public void update(int id, int rollno, String sname, int age) {
		// TODO Auto-generated method stub
		String SQL = "update Student2 set rollno=?,sname=?,age = ? where id = ?";
		jdbcTemplateObject.update(SQL, rollno,sname,age,id); System.out.println("Updated Record with ID = " + id );
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		String SQL = "delete from Student2 where id = ?"; 
		jdbcTemplateObject.update(SQL, id); 
		System.out.println("Deleted Record with ID = " + id );
	}

}
