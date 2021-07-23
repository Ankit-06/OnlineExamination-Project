<html>
<head>
<title>Report Card</title>
</head>
<style>
    body{
        font-size: 20px;;
        background-color: green;
       margin: 40px;
    }

label{
    display:inline-block;
    padding:10px;
    width: 150px;
    text-align: right;
    padding-bottom:20px ;
}

input{
    width: 150px;

}
header{
    display: flex;
    align-items: center;
    justify-content: center;
    padding:10px;
    background-color: ivory;
    font-weight: bold;
    font-size: 40px;
    text-decoration: underline;
}    

.container{
    align-items: center;
    justify-content: center;
    padding:20px;
    background-color: ivory;
    align-items: center;
}


.table-container{
    display: flex;
    align-items: center;
    justify-content: center;
    padding:20px;
    background-color: ivory;
    align-items: center;
}

table,th,td{
    padding: 20px;
    border: 2px solid;
    column-width: 40px;
}

.avg-container{
    display: flex;
    margin-top: 20px;
    padding-left: 20px;
    padding-bottom: 0px;
    border-bottom: 0px;
    background-color: ivory;
}

.total-container{
    display: flex;
    padding-left: 20px;
    padding-top: 0px;
    background-color: ivory;

}

</style>
<body>
<%@ page language="java" import= "java.io.*" import="java.sql.*" %>

<%
  if(session.getAttribute("Admin")==null){
	  response.sendRedirect("login.jsp");
  }
%> 
<% 	
	ResultSet rs=null;	
	try {
		
		String Email=request.getParameter("EmailId");
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinetest","root","12345");
		
		
		String sql="select EmailId,javaScore,pomScore,cScore,ITScore,mathsScore,deScore from result where EmailId=?";		
		
		PreparedStatement stmt= con.prepareStatement(sql);
		stmt.setString(1,Email);
		
		  
		 rs=stmt.executeQuery();
		

	} catch (Exception e) {
		e.printStackTrace();
	}
	
    int sum=0;
	if(rs.next())
	{%>
        <header>Report Card</header>
        <div class="table-container">
            <table id="score">
                <tr>
                    <th>
                        Java
                    </th>
                    <td>
                        <% if(rs.getString(2)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(2));
                        %>
                    </td>
                </tr>
                <tr>
                    <th>
                        POM
                    </th>
                    <td>
                        <% if(rs.getString(3)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(3));
                        %>
                    </td>
                </tr>
                <tr>
                    <th>
                        C
                    </th>
                    <td>
                        <% if(rs.getString(4)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(4));
                        %>
                    </td>
                </tr>
                <tr>
                    <th>
                        IT
                    </th>
                    <td>
                        <% if(rs.getString(5)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(5));
                        %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Math
                    </th>
                    <td>
                        <% if(rs.getString(6)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(6));
                        %>
                    </td>
                </tr>
                <tr>
                    <th>
                        DE
                    </th>
                    <td>
                        <% if(rs.getString(7)==null)
                        	out.println("Not Attempted");
                           else
                        	out.println(rs.getString(7));
                        %>
                    </td>
                </tr>
            </table>
        </div>  
    </div>
    <div class ="avg-container">
       <p>
            Total Score: <% for(int i=2;i<=7;i++)
            				sum+=rs.getInt(i);
       				  		out.println(sum);
            			 %>
       </p>   
    </div>
    <div class="total-container">
        <p>
            Percentage: <% double percent=((double)sum/60)*100;
        				   out.println(String.format("%.2f",percent)+"%");
        				%>
        </p>
    </div>     
    <%}
    else 
    	response.sendRedirect("incorrectStudent.jsp");   
    
    	
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
 %>	
	
</body>
</html>