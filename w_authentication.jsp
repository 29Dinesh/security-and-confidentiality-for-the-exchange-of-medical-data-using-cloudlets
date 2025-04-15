<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
		    
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			//application.setAttribute("csp",username);
			
			
			String sql="SELECT * FROM device where name='"+username+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{
		
                          response.sendRedirect("w_main.jsp");
					
					}
			else
			{
				out.print("Invalid Login Details");
				 %><br/><br/><a href="w_login.jsp">Back</a><%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>