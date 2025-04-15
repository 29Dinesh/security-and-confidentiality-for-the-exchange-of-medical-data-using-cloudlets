<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudlet Intruders Details </title>
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
.style6 {font-size: 18px}
.style7 {font-family: "Times New Roman", Times, serif}
.style8 {font-size: 20px}
.style9 {color: #0000FF}
.style10 {color: #000000}
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
          <h2 align="center"> View All Cloudlet Intruders Details </h2>
		  <p>&nbsp;</p>








<table width="541" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="57" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style14 style7 style8 style9">Si.No.</div></td>
           <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Report Id</div></td>
		   <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Patient Name</div></td>
		   <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Report Collected Date</div></td>
           <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">View Details</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from cloudlet_files where upload_by!='Device' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
		
		
		%>
                    
                    <tr>
                      <td height="47" bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=j%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=i%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><a href="c_pat_profile.jsp?user=<%=s2%>&type=<%="four"%>" class="style16 style10 style11 style8 style13"><%=s2%></a></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=s12%></div></td>
					  <td width="171" align="center" bgcolor="#00FFFF"><a href="c_intr_details1.jsp?pid=<%=i%>" class="style16 style11 style13 style7 style8 style10">Click Here</a></td>
	                </tr>
					  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>












        <p>&nbsp;</p>
		<p align="right"><a href="c_main.jsp" class="style6">Back</a></p>
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
