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

var na5=document.s.p5.value;
if(na5=="")
{
alert("Please Enter Patient Pulses ");
document.s.p5.focus();
return false;
}

var na6=document.s.p6.value;
if(na6=="")
{
alert("Please Enter Patient ECG ");
document.s.p6.focus();
return false;
}

var na61=document.s.psym.value;
if(na61=="")
{
alert("Please Enter Symptoms");
document.s.psym.focus();
return false;
}

var na8=document.s.p8.value;
if(na8=="")
{
alert("Please Enter File Name ");
document.s.p8.focus();
return false;
}


}   

function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
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
.style13 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style14 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
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


<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String pname = request.getParameter("pat");

 try 
	{		
      	                    String query2="select * from cloudlet_files where pname='"+pname+"' and status='Unsolved' "; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		if ( rs2.next() ) 
			                {
							%> 
							<p align="center" class="style14"> Previous Report is Not Yet Solved. </p> 
                            <%
							}
							else
							{
							
							String query="select * from patients where name='"+pname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
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

<form name="s" action="w_pat_to_cloud2.jsp" method="post" onSubmit="return valid()"  ons target="_top">
    
	<table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Patient Name :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p1" type="text" id="p1" value="<%=s2%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Contact Number :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p2" type="text" id="p2" value="<%=s5%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">E-mail :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p3" type="text" id="p3" value="<%=s4%>" size="50" readonly="readonly" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Patient Address :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><textarea name="p4" id="p4" cols="52" rows="3" readonly="readonly"><%=s6%></textarea></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Pulses :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p5" type="text" id="p5" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">ECG :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p6" type="text" id="p6" size="50" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Symptoms :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="psym" type="text" id="psym" size="50" /><span class="style10">(Should Contain only Symptom Names Seperated By Commas Only)</span></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Select<br />Symptoms File :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p7" type="file" id="file"  onchange="loadFileAsText()" required="required" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">File Name :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p8" type="text" id="p8" size="50" /></td>
      </tr>
	  
      <tr>
		<td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12"><span class="style4 style12">Content :- </span></div></td>
        <td bgcolor="#CCCC00"><span class="style13">
          <textarea name="p9" id="textarea" cols="52" rows="15"></textarea>
        </span></td>
      </tr>
      
      <tr>
        <td bgcolor="#99CCCC"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style7"><span class="style11"><span class="style12"></span></span></span></span></span></span></div></td>
        <td bgcolor="#CCCC00"><input type="submit" name="Submit" value="Upload" /></td>
      </tr>
    </table>
</form>

<%


							  
       
		
	  }}
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
