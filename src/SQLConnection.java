
import java.util.*;
import java.sql.*;
public class SQLConnection {
	private String dbDriver="com.mysql.jdbc.Driver";//��������
	private String dbURL= "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&characterEncoding=utf-8&useSSL=false";
	private String dbUser="root";//�û���
	private String dbPass="5531586";//����
	
	public Connection Getcon()
	{
        Connection conn=null;  
        try  
        {  
            Class.forName(dbDriver);  
        }  
        catch (ClassNotFoundException e)  
        {  
            e.printStackTrace();  
        }  
        try  
        {  
            conn = DriverManager.getConnection(dbURL,dbUser,dbPass);//ע������������  
            System.out.println("qqqqqq");
        }  
        catch (SQLException e)  
        {  
            e.printStackTrace();  
            System.out.println("ppppp");
        }  
        return conn;  
	}
	public List<String> Select(String sql)
	{
	    int i;
	    Connection cnn = Getcon();//此处为通过自己写的方法getConn()获得连接
	    List<String> list = new LinkedList<String>();
	    try  
	    {  
	        Statement stmt = cnn.createStatement();  
	        ResultSet rs = stmt.executeQuery(sql);  
	        while(rs.next())  
	        {  
	            for(i = 1;i<=rs.getMetaData().getColumnCount();i++){
	            list.add(rs.getString(i));}
	        }  
	        //可以将查找到的值写入类，然后返回相应的对象  
	    }  
	    catch (SQLException e)  
	    {  
	        e.printStackTrace();  
	    }  
	    return list;  
	}
	public int insert(String sql)  
	{  
	    int i=0;  
	    /*String sql="insert into author(authorid,name,age,country) values(?,?,?,?)"; 
	    String sql0="insert into book(isbn,title,authorid,publisher,publishdate,price) values(?,?,?,?,?,?)";
	    */
	    Connection cnn=Getcon();  

	    try{  
	        PreparedStatement preStmt =cnn.prepareStatement(sql);  
	        i=preStmt.executeUpdate();  
	    }  
	    catch (SQLException e)  
	    {  
	        e.printStackTrace();  
	    }  
	    return i;//����Ӱ���������1Ϊִ�гɹ�  
	}  
	public int update(String sql)
	{  
	    int i=0;  
	    /*String sql="update author set  authorid=?,name=?,age=?,country=? where authorid=?";//ע��Ҫ��where����  
	    */
	    Connection cnn=Getcon();  


	    try{  
	        PreparedStatement preStmt =cnn.prepareStatement(sql);  
	        i=preStmt.executeUpdate();  
	    }  
	    catch (SQLException e)  
	    {  
	        e.printStackTrace();  
	    }  
	    return i;//����Ӱ���������1Ϊִ�гɹ�  
	}  
	public int delete(String sql)  
	{  
	    /*String sql = "delete from author where authorid=?"; */ 
	    int i=0;  
	    Connection conn = Getcon();//�˴�Ϊͨ���Լ�д�ķ���getConn()�������  
	    try  
	    {  
	        Statement stmt = conn.createStatement();  
	        i = stmt.executeUpdate(sql);  
	    }  
	    catch (SQLException e)  
	    {  
	        e.printStackTrace();  
	    }  
	    return i;//������ص���1����ִ�гɹ�;  
	}

}
