<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Give Soution </title>
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
var na3=document.s.text1.value;
if(na3=="")
{
alert("Please Write Medicine Details");
document.s.text1.focus();
return false;
}
var na31=document.s.text2.value;
if(na31=="")
{
alert("Please Write Medicine Prescription");
document.s.text2.focus();
return false;
}

}
</script>


<style type="text/css">
<!--
.style1 {font-size: 40px}
.style6 {font-size: 18px}
.style9 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #0000FF; }
.style10 {
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
	font-size: 20px;
}
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
          <li class="active"><a href="d_login.jsp"><span>Doctor</span></a></li>
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
          <h2 align="center"> Give Solution  </h2>
		  <p>&nbsp;</p>


<%@ include file="connect.jsp" %>
<%

int id = Integer.parseInt(request.getParameter("pid"));
String dname=(String)application.getAttribute("doc");
  			
try {

                            
			
			                String query="select status from doctor_files where id="+id+" and dname='"+dname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
							 String s1 = rs.getString(1);
							 
							 if(s1.equalsIgnoreCase("Solved"))
							 {
							 %>
			                   <p align="center" class="style10"> This Report Has Already Solved. </p>
			                 <%
							 }
							 
							 else
							 {
							 
%>

<form name="s" action="d_pat_solve3.jsp" method="post" id="form1" onSubmit="return valid()"  ons target="_top">		  
<table width="428" border="0" align="center">
              
              <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div class="style9"> Medicine Details </div></td>
                <td bgcolor="#00FFFF"><span class="style19">
                  <textarea name="text1" rows="5" cols="25"></textarea>
                </span></td>
             </tr>
			 
			 <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div class="style9"> Medicine Prescription </div></td>
                <td bgcolor="#00FFFF"><span class="style19">
                  <textarea name="text2" rows="5" cols="25"></textarea>
                </span></td>
             </tr>
			 
              <tr>
                <td><input type="hidden" name="pid" value="<%=id%>"/></td>
                <td>&nbsp;</td>
              </tr>
			  
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Sumbit" />
                </label></td>
              </tr>
</table>

</form>						

<%							 
							 
							 }
							 
							}
							
			
			
			
			
			
			
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
   		
%>	



							
							
	



        <p>&nbsp;</p>
		<p align="right"><a href="d_pat_solve1.jsp?pid=<%=id%>" class="style6">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Doctor</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="d_main.jsp"> Doctor Main </a></li>
            <li><a href="d_login.jsp"> Log Out </a></li>
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
