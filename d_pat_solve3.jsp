<title>Solution Status</title>
<%@ include file="connect.jsp" %>
<%
  		
try {
			
			int id = Integer.parseInt(request.getParameter("pid"));
			String text1=request.getParameter("text1");
			String text2=request.getParameter("text2");
			String str = "Solved";
			
       		Statement st1 = connection.createStatement();
       		String query1 ="update doctor_files set status='"+str+"',m_details='"+text1+"',m_prescr='"+text2+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			Statement st2 = connection.createStatement();
       		String query2 ="update doc_backup_files set status='"+str+"',m_details='"+text1+"',m_prescr='"+text2+"' where id="+id+" ";
	   		st2.executeUpdate (query2);
			
			Statement st3 = connection.createStatement();
       		String query3 ="update cloudlet_files set status='"+str+"' where id="+id+" ";
	   		st3.executeUpdate (query3);
			
			Statement st4 = connection.createStatement();
       		String query4 ="update cl_backup_files set status='"+str+"' where id="+id+" ";
	   		st4.executeUpdate (query4);
			
			%>
			<p> Solution Sent To The Patient Successfully </p>
			<p><a href="d_pat_solve.jsp"> Back </a></p>
			<%
			
			
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
   		
%>
