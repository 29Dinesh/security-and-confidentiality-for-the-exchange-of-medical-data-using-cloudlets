<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Registration status</title>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%			       
									
					
try {
						
						String uname=(String)application.getAttribute("pat");
						
						String email=request.getParameter("email");
						String mno=request.getParameter("mobile");
						String loc=request.getParameter("location");
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
			 			String query1="select * from pat_req where pname='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%> 
             <p class="style13">Already You Have Requested. </p>
			 <p class="style13">Wait For The Permission. </p>
             <%
							
							
				%>
                    <p align="left"><a href="p_main.jsp" class="style5 style14">Back</a></p>
                    <%
				
					   }
					   else
					   {
					   
                        PreparedStatement ps=connection.prepareStatement("insert into pat_req(pname,dt,status) values(?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,dt);
						ps.setString(3,"Requested");
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <p class="style6">You Have Requested Successfully</p>
					<p class="style6">Wait For Cloudlet Permission</p>
                    <p>&nbsp; </p>
                    <p>
                      <%	
							
			%>
                    </p>
                    <p align="left"><a href="p_main.jsp" class="style16">Back</a></p>
                    <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    