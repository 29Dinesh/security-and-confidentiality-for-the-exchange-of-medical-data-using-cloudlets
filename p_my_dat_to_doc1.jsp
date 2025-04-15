<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Send Data To Doctor </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{

var na9=document.s.doc.value;
if(na9=="----------------Select----------------")

{
alert("Please Select Doctor");
document.s.doc.focus();
return false;
}


}
</script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style7 {font-size: 18px}
.style8 {font-family: "Times New Roman", Times, serif}
.style11 {color: #000000}
.style12 {color: #0000FF}
.style13 {font-size: 20px}
.style14 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style15 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
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
          <h2 align="center"> Send Data To Doctor </h2>
		  <p>&nbsp;</p>

<%@ include file="connect.jsp" %>                      
<%	  
	int id = Integer.parseInt(request.getParameter("id"));		  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
        String query2="select * from doctor_files where id="+id+" "; 
        Statement st2=connection.createStatement();
        ResultSet rs2=st2.executeQuery(query2);
        if ( rs2.next() ) 
        {
		%><p align="center" class="style15"> You Have Already Sent This Report To The Doctor </p>
<%
		}
		else
		{
		
		




%>




<form name="s" action="p_my_dat_to_doc2.jsp?id=<%=id%>" method="post" onSubmit="return valid()"  ons target="_top">
				  
                  <p align="center"><span class="style14 style20 style5 style13 style10 style11 style2 style8"><span class="style14 style20 style5 style10 style11 style2 style13"><span class="style14 style20 style5 style12 style10 style11 style2">
                  <label for="gender">Select Doctor (required)<br />
                  </label>
                  </span></span></span>
				  </p>
                  <p align="center" class="style20 style5 style12 style13 style10 style11 style2">
                    <select id="s" name="doc" class="text" style="width:200px">
                      <option>----------------Select----------------</option>


<%
      	                    String query="select * from doctors "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name

%>					  
                      <option><%=s2%></option>
					  
                         <% } %>
					  
                    </select>
                  </p>


				  
				  
                  <p class="style15">&nbsp;</p>
                  <p align="center" class="style15">
                    <input name="submit" type="submit" value="Send" />
                  </p>
</form>



<%
		}
		
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
				  
                  
				  
                  









        <p>&nbsp;</p>
		<p align="right"><a href="p_my_dat_to_doc_new.jsp" class="style7">Back</a></p>
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
