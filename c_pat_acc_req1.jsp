<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "Permitted";
			
		 /*KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		 Cipher encoder = Cipher.getInstance("RSA"); 
		 KeyPair kp = kg.generateKeyPair(); 
		 PublicKey pubKey = kp.getPublic();
		 
		 byte[] pub = pubKey.getEncoded();
		 String s = pub.toString();
		*/
			
       		Statement st1 = connection.createStatement();
       		String query1 ="update pat_req set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			
			response.sendRedirect("c_pat_acc_req.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
