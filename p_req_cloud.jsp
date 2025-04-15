<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Request Cloudlet </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript" language="javascript">
function valid()
{
var n1=document.s.name.value;
if(n1=="")
 {
  alert("Please Enter Name");
  document.s.name.focus();
  return false;
 }
}
</script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style7 {font-size: 18px}
.style11 {
	color: #000000;
	font-family: "Times New Roman", Times, serif;
}
.style12 {color: #0000FF}
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #FF0000;
}
.style15 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style16 {color: #000000}
.style17 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #0000FF; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="c_login.jsp"><span>Cloudlet</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li class="active"><a href="p_login.jsp"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Wearable Device</span></a></li> 
		  <li><a href="i_login.jsp"><span>Intruder</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Privacy Protection and Intrusion Avoidance for Cloudlet-based Medical Data Sharing</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Request Data Access Permission From Cloudlet </h2>
		  <p>&nbsp;</p>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>		  
	  
<%
   String email=(String)application.getAttribute("p_email");
   String mob=(String)application.getAttribute("p_mob");
   String loc=(String)application.getAttribute("p_loc");
   String user=(String)application.getAttribute("pat");
   String s4="";
   
try {
		
		String sql = "SELECT * FROM pat_req where pname='" + user+ "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{
		  s4=rs.getString(4);
		  
		  if(s4.equalsIgnoreCase("Requested"))
		   {
		
		     %> 
             <p class="style13">Already You Have Requested. </p>
			 <p class="style13">Wait For Cloudlet Permission. </p>
             <%
		   }
		  else
		  {
		     %> 
			 <p class="style17">Already You Have Requested. </p>
			 <p class="style17">and is also Permitted. </p>
             <%
		  }
		}
		else
		{
%>
          <form name="s" action="p_req_cloud_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
            
						
            
                        
						<span class="style4 style10 style12 style11 style15"><span class="style4 style10 style12 style11 ">
                        <label for="name">Name </label>
                        </span></span>
						<p class="style4 style10 style11 style12 style15">
                          <input type="text" id="name" name="name" class="text" />
                        </p>
						
                        <span class="style4 style10 style12 style11 style15"><span class="style4 style10 style12 style11 ">
                        <label for="email">Email Address </label>
                        </span></span>
                        <p class="style4 style10 style11 style12 style15">
                          <input id="email" name="email" value="<%=email%>" class="text" />
                        </p>
                        <span class="style4 style10 style12 style11 style15"><span class="style4 style10 style12 style11 ">
                        <label for="mobile">Mobile Number </label>
                        </span></span>
                        <p class="style4 style10 style11 style12 style15">
                          <input id="mobile" name="mobile" value="<%=mob%>" class="text" />
                        </p>
                        <span class="style4 style10 style12 style11 style15"><span class="style4 style10 style12 style11 ">
                        <label for="address">Your Location</label>
                        </span></span>
                        <p class="style16 style10 style12 style4">
                          <input id="location" name="location" value="<%=loc%>" class="text" />
                        </p>
                        
                        <p><br />
                            <input name="submit" type="submit" value="Send Request" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>  
		  
<%		
		}

} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>		  














        <p>&nbsp;</p>
		<p align="right"><a href="p_main.jsp" class="style7">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Patient</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="p_main.jsp"> Patient Main </a></li>
            <li><a href="p_login.jsp"> Log Out </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
