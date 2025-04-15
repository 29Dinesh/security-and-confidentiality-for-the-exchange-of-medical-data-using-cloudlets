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

<%@ include file="connect.jsp"%>

<%
try
{
	int i=0,count=0,count1=0,s2=0;
	String s1="";

	  String query="select name from doctors ";
	  Statement st=connection.createStatement();
	  ResultSet rs=st.executeQuery(query);
	  while ( rs.next() ) 
	  {
	    s1=rs.getString(1);//dt
		//s2=Integer.parseInt(rs.getString(8));//dt
								
			//String query1="select distinct pname from doctor_files where dname='"+s1+"' ";
			String query1="select * from doctor_files where dname='"+s1+"' ";
	        Statement st1=connection.createStatement();
	        ResultSet rs1=st1.executeQuery(query1);
	        while ( rs1.next() ) 
	        {
			 count++;
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
	myChart.setSize(500,400);
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

