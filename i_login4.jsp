<title>Inject Data</title>
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
  		
try {
			
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,i2=0,j=1,k=0;
	String p1 = request.getParameter("p1");
	int id = Integer.parseInt(request.getParameter("p2"));
	//String p2 = request.getParameter("p2");
	String p9 = request.getParameter("p9");//content
	
	String h1="";
	String filename="filename.txt";
	String keys = "";
	
	    
	
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
			
			    keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				String encp9 = new String(Base64.encode(p9.getBytes()));
				
		String query2="select * from cloudlet_files where id="+id+" and fcont='"+encp9+"' ";
		Statement st2=connection.createStatement();
		ResultSet rs2=st2.executeQuery(query2);
		if ( rs2.next() ) 
		{
		 %>
		   <p>You Have Not Changed The Content. </p>
		   <p><a href="i_login2.jsp?id=<%=id%>">Back </a></p>
		   <%
		}
		else
		{
				
		    String str="";
			Statement st1 = connection.createStatement();
            String query1 ="update cloudlet_files set fcont='"+encp9+"',dsig='"+h1+"',upload_by='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				Date now = new Date();
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
			
			PreparedStatement ps=connection.prepareStatement("insert into intruder_details(id,pname,dt,status) values(?,?,?,?)");
			ps.setInt(1,id);
			ps.setString(2,p1);
			ps.setString(3,dt);	
			ps.setString(4,"Attacked");	
			ps.executeUpdate();
			
			
			
			
			%>
			  <p>You Have Injected Data Into The Cloudlet</p>
			  <p><a href="i_login.jsp">Back</a></p>
			  <p><a href="index.html">Home</a></p>
			<%
			
			
		}	
			
			
				
			
						
			
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
   		
%>
