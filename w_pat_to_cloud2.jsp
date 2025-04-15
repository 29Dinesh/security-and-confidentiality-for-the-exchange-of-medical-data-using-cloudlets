<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Upload Patient Data to Cloudlet </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type='text/javascript' language="javascript">

function valid()
{

var na8=document.s.pic.value;
if(na8=="")
{
alert("Please Select Patient Image ");
document.s.pic.focus();
return false;
}


}   

</script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style6 {font-size: 18px}
.style7 {font-family: "Times New Roman", Times, serif}
.style10 {color: #000000}
.style11 {font-size: 20px}
.style12 {color: #0000FF}
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
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
          <li class="active"><a href="w_login.jsp"><span>Wearable Device</span></a></li> 
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
          <h2 align="center"> Collect Patient Data and Upload to Cloudlet  </h2>
		  <p>&nbsp;</p>


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
<%@ include file="connect.jsp"%>
                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	String p3 = request.getParameter("p3");
	String p4 = request.getParameter("p4");
	String p5 = request.getParameter("p5");
	String p6 = request.getParameter("p6");
	String psym = request.getParameter("psym");
	String p8 = request.getParameter("p8");
	String p9 = request.getParameter("p9");//content
	
	String h1="";
	String filename="filename.txt";


try 
	{

	
	        PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(p9));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				          int b1 = bis1.read();
				          if (b1 == -1)
					      break;
			             }
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);


		


%>

<form name="s" action="w_pat_to_cloud3.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
    
	<table width="620" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Patient Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p1" type="text" id="p1" value="<%=p1%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Contact Number :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p2" type="text" id="p2" value="<%=p2%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">E-mail :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p3" type="text" id="p3" value="<%=p3%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Patient Address :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><textarea name="p4" id="p4" cols="52" rows="3" readonly="readonly"><%=p4%></textarea></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Pulses :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p5" type="text" value="<%=p5%>" id="p5" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">ECG :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p6" type="text" value="<%=p6%>" id="p6" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Symptoms :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="psym" type="text" value="<%=psym%>" id="psym" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">File Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p8" type="text" value="<%=p8%>" id="p8" size="50" /></td>
      </tr>
	  
      <tr>
		<td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Content :- </span></div></td>
        <td bgcolor="#CCCC00"><span class="style13">
          <textarea name="p9" id="textarea" cols="52" rows="15"><%=p9%></textarea>
        </span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Digital Sign (MAC) :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><input name="p10" type="text" value="<%=h1%>" id="p10" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Add Image :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input type="file" name="pic" id="pic" class="text" /></td>
      </tr>
      
      <tr>
        <td bgcolor="#99CCCC"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style7"><span class="style11"><span class="style12"></span></span></span></span></span></span></div></td>
        <td bgcolor="#CCCC00"><input type="submit" name="Submit" value="Upload" /> <span class="style10">(All Data Will be Encrypted)</span> </td>
      </tr>
    </table>
</form>

<%


							  
       
		
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        
























        <p>&nbsp;</p>
		<p align="right"><a href="w_pat_to_cloud.jsp" class="style6">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Device</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="w_main.jsp"> Device Main </a></li>
            <li><a href="w_login.jsp"> Log Out </a></li>
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
