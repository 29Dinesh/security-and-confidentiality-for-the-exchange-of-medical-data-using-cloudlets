<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style5 {color: #0000FF}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>

<%@ include file="connect.jsp"%>

<%
try
{
	int i=0,count=0,count1=0;
	String s1="",s15="";
	String keys = "";
	//String[] usual_sym = {"Headache","Eye Strain","Back Pain","Stomach Pain","Throat Pain","Teeeth Pain"};

	
	  
	  String query="select * from symptoms "; 
	  Statement st=connection.createStatement();
	  ResultSet rs=st.executeQuery(query);
	  while ( rs.next() ) 
	  {
		s1=rs.getString(2);
		
				String query1="select * from cloudlet_files"; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(query1);
				while ( rs1.next() ) 
				{
				  s15=rs1.getString(15);
				  
				keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				String decs15 = new String(Base64.decode(s15.getBytes()));
				
				
		        String[] str = decs15.split(",");
		        for(int k=0;k<str.length;k++)
		        {
		           if(str[k].equalsIgnoreCase(s1))
		           {
		            count++;
		           }
		        }
	  
				}
%>
	myData["<%=i%>"]=["<%= s1%>",<%= count%>];
<%
		
		
	count=0;
	i++;
	
	  }			
	
	
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FFFFFF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF0000');
	myChart.setAxisColor('#000000');
	myChart.setAxisValuesColor('#0000FF');
	myChart.setSize(800,400);
	myChart.draw();
	
</script>
<span class="style5"></span><span class="style4"></span>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

