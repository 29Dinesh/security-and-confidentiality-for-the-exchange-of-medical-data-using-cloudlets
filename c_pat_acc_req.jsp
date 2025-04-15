<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Patient Requests </title>
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
.style11 {color: #000000}
.style12 {color: #0000FF}
.style13 {font-size: 20px}
.style14 {color: #FF0000}
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
          <h2 align="center"> View Patient Data Access Request and Authorize </h2>
		  <p>&nbsp;</p>








          <table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
            <tr bgcolor="#00FF33">
              <td width="35" height="54" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13">Id</div></td>
              <td width="74" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13">Patient Name</div></td>
              <td width="97" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13">Requested Date</div></td>
              <td width="110" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from pat_req "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								
								
		
		
		%>
            <tr>
              <td height="86" bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style13 style8"><%=j%></div></td>
              <td width="74" align="center" bgcolor="#00FFFF"><a href="c_pat_profile.jsp?user=<%=s2%>&type=<%="two"%>" class="style16 style10 style11 style13 style8"><%=s2%></a></td>
              <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style13 style8"><%=s3%></div></td>
              <%
						if(s4.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style13 style8"> <a href="c_pat_acc_req1.jsp?id=<%=i%>" class="style17 style14">Requested</a><br />
                (Click here to Authorize) </div></td>
              <%
						}
						else
						{
						%>
              <td width="60" bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style13 style8"> <%=s4%> </div></td>
              <%
						}
						%>
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
		<p align="right"><a href="c_main.jsp" class="style7">Back</a></p>
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
