<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> All Patients </title>
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
.style14 {font-size: .}
.style15 {font-size: .}
.style16 {font-size: .}
.style17 {font-size: .}
.style18 {font-size: .}
.style19 {color: #FF0000}
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
          <h2 align="center"> View All Patients and Authorize </h2>
		  <p>&nbsp;</p>




<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="58" height="54" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13 style14">Id</div></td>
		   <td width="100" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13 style15">Patient Image</div></td>
           <td width="145" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13 style16">Patient Name</div></td>
           <td width="130" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13 style17"> Full Details</div></td>
		   <td width="93" bgcolor="#9eb8dd"><div align="center" class="style10 style12 style8 style13 style18">Status</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from patients "; 
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
                      <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style8 style13"><%=j%></div></td>
                      <td bgcolor="#00FFFF" align="center"><input  name="image" type="image" style="width:100px; height:90px;" src="p_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style8 style13"><%=s2%></div></td>
					  <td width="130" align="center" bgcolor="#00FFFF"><a href="c_pat_profile.jsp?user=<%=s2%>&type=<%="one"%>" class="style16 style10 style11 style8 style13">Click here</a></td>
					  <%
						if(s12.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style8 style13">
                <a href="c_p_Status.jsp?id=<%=i%>" class="style19">waiting</a> </div></td>
              <%
						}
						else
						{
						%>
              <td width="70" bgcolor="#00FFFF"><div align="center" class="style16 style10 style11 style8 style13">
                    <%=s12%>
                </div></td>
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
