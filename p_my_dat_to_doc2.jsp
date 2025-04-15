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
		int i=0,j=1,k=0;
		int id = Integer.parseInt(request.getParameter("id"));
		
						
						String pname=(String)application.getAttribute("pat");
						
						String doc=request.getParameter("doc");
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
			 			    String query="select * from doctor_files where id="+id+" and dname='"+doc+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
							    
								
			%>					
			
			<p>You Have Already Sent This Report Details To This Doctor </p> 
			<p><a href="p_my_dat_to_doc_new.jsp">Back</a></p>
			
			<%
								
								
						    }
							
							else
							{
														
PreparedStatement ps=connection.prepareStatement("insert into doctor_files(id,pname,mobile,email,addr,pulses,ecg,fname,fcont,dsig,image,symptoms) select id,pname,mobile,email,addr,pulses,ecg,fname,fcont,dsig,image,symptoms from cloudlet_files where id="+id+" ");
int x=ps.executeUpdate();

                            if(x>0)
							{
			String str="Requested";				
			Statement st1 = connection.createStatement();
       		String query1 ="update doctor_files set status='"+str+"',dt='"+dt+"',dname='"+doc+"' where id="+id+" and m_details is null ";
	   		st1.executeUpdate (query1);
			
			PreparedStatement ps2=connection.prepareStatement("insert into doc_backup_files select * from doctor_files where id="+id+" ");
            ps2.executeUpdate();

			
			%>
			
			<p>Details Sent to Doctor Successfully</p>
			<p><a href="p_my_dat_to_doc_new.jsp">Back</a></p>
			
			<%
							
							} 
						   	
							}
							
					
					
					
					
					
					
					
					
					
					
					
					
}
catch (Exception e) 
{
out.println(e.getMessage());
}
%>
                    