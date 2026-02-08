package jdbctry;

import java.sql.*;

public class jdbctest {

	public static void main(String[] args) throws SQLException{
		String url="jdbc:mysql://localhost:3306/JdbcEx";
		String uname="root";
		String pword="madhu@3117";
		Connection con = DriverManager.getConnection(url,uname,pword);
		
		Statement st = con.createStatement();
		
		
		String create="create table employee (empcode int, empname varchar(50), empage int, salary bigint)";
		st.executeUpdate(create);
		
		String insert1="insert into employee values(101,'Jenny',25,10000)";
		String insert2="insert into employee values(102,'Jacky',30,20000)";
		String insert3="insert into employee values(103,'Joe',20,40000)";
		String insert4="insert into employee values(104,'John',40,80000)";
		String insert5="insert into employee values(105,'Shameer',25,90000)";
		
		
		st.executeUpdate(insert1);
		st.executeUpdate(insert2);
		st.executeUpdate(insert3);
		st.executeUpdate(insert4);
		st.executeUpdate(insert5);
		

		
		String select="Select * from employee";
		ResultSet rs = st.executeQuery(select);
		
		System.out.println("empcode\tename\tempage\tsalary");
		while(rs.next()) {
			int code = rs.getInt("empcode");
			String name=rs.getString("empname");
			int empage = rs.getInt("empage");
			int salary = rs.getInt("salary");
			
			System.out.println(code+"\t"+name+"\t"+empage+"\t"+salary);
		}
		
		
	}

}
