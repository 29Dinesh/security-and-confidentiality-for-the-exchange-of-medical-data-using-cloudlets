<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Patient Profile </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style7 {font-size: 18px}
.style8 {font-family: "Times New Roman", Times, serif}
.style9 {font-size: 20px}
.style11 {color: #000000}
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
          <li class="active"><a href="c_login.jsp"><span>Cloudlet</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
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
          <h2 align="center"> Patient Profile </h2>
		  <p>&nbsp;</p>







<table width="576" height="395" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=request.getParameter("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from patients where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								
								
								
								
								
					%>
            <tr>
              <td width="200" rowspan="6"><input name="image" type="image" src="p_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" /></td>
            </tr>
            <tr>
              <td width="146" height="40" bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Name</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s2);%>
              </span></td>
            </tr>
            <tr>
              <td height="40" bgcolor="#00FFFF"><span class="style17 style8 style9 style12">E-Mail</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s4);%>
              </span></td>
            </tr>
            <tr>
              <td height="40" bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Mobile</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s5);%>
              </span></td>
            </tr>
            <tr>
			  
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Location</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s10);%>
              </span></td>
            </tr>
            <tr>
			  
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Date of Birth</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s7);%>
              </span></td>
            </tr>
            <tr>
              <td height="47"></td>
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Address</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s6);%>
              </span></td>
            </tr>
            <tr>
              <td height="44"></td>
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Gender</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s8);%>
              </span></td>
            </tr>
            <tr>
              <td height="45"></td>
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Pincode</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s9);%>
              </span></td>
            </tr>
            <tr>
              <td height="48"></td>
              <td bgcolor="#00FFFF"><span class="style17 style8 style9 style12">Status</span></td>
              <td bgcolor="#CC6600"><span class="style22 style13 style8 style9 style11">
                <%out.println(s12);%>
              </span></td>
            </tr>
            <%

						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>

<p>&nbsp;</p>		  
<%
String type=request.getParameter("type");		  
if(type.equalsIgnoreCase("one"))
		{
		%> <p align="right"><a href="c_all_pat.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("two"))
		{
		%><p align="right"><a href="c_pat_acc_req.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("three"))
		{
		%><p align="right"><a href="c_pat_data.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("four"))
		{
		 
		%><p align="right"><a href="c_intr_details.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("five"))
		{
		%><p align="right"><a href="c_recovered_details.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("six"))
		{
		%><p align="right"><a href="ccc.jsp" class="style7">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("seven"))
		{
		%><p align="right"><a href="ccc.jsp" class="style7">Back</a></p>
<%
		}
        if(type.equalsIgnoreCase("eight"))
		{
		%><p align="right"><a href="ccc.jsp" class="style7">Back</a></p>
<%
		}
        if(type.equalsIgnoreCase("nine"))
		{
		%><p align="right"><a href="ccc.jsp" class="style7">Back</a></p>
<%
		}

%>		  










        
		
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Cloudlet</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="c_main.jsp"> Cloudlet Main </a></li>
            <li><a href="c_login.jsp"> Log Out </a></li>
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
