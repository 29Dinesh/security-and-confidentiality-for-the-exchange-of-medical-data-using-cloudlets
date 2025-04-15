<title>Device Upload Status</title>

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

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>

<%@ include file="connect.jsp"%>

<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0,n = 0,n1 = 0,i2=0,id=1;
					String bin = "";
					String uname=null;     
        			String pass=null;
					String age=null;
					String email=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String status="Waiting";
					String gender=null;
					String pincode=null;
					
					String p1=null,p2=null,p3=null,p4=null,p5=null,p6=null,p8=null,p9=null,p10=null,psym=null;
					String keys = "";
				
					FileInputStream fs=null;
					File file1 = null;	
					
					try {
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("p1"))
							{
								p1=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p2"))
							{
								p2=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p3"))
							{
								p3=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p4"))
							{
								p4=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p5"))
							{
								p5=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p6"))
							{
								p6=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("p8"))
							{
								p8=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p9"))
							{
								p9=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p10"))
							{
								p10=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("psym"))
							{
								psym=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						}
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 								
				keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				String encp2 = new String(Base64.encode(p2.getBytes()));
				String encp3 = new String(Base64.encode(p3.getBytes()));
				String encp4 = new String(Base64.encode(p4.getBytes()));
				String encp5 = new String(Base64.encode(p5.getBytes()));
				String encp6 = new String(Base64.encode(p6.getBytes()));
				String encp8 = new String(Base64.encode(p8.getBytes()));
				String encp9 = new String(Base64.encode(p9.getBytes()));
				String encpsym = new String(Base64.encode(psym.getBytes()));
				
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				Date now = new Date();
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
				
					
		   String query="select * from cloudlet_files "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	       while ( rs.next() )
	       {
		    i2=rs.getInt(1);
			
			id=i2+1;
		   }
		  
		   
		   
					
					PreparedStatement ps=connection.prepareStatement("insert into cloudlet_files(pname,mobile,email,addr,pulses,ecg,fname,fcont,dsig,image,dt,upload_by,id,status,symptoms) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,p1);
						ps.setString(2,encp2);
						ps.setString(3,encp3);	
						ps.setString(4,encp4);
						ps.setString(5,encp5);
						ps.setString(6,encp6);
						ps.setString(7,encp8);
						ps.setString(8,encp9);
						ps.setString(9,p10);
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));	
						ps.setString(11,dt);
						ps.setString(12,"Device");
						ps.setInt(13,id);
						ps.setString(14,"Unsolved");
						ps.setString(15,encpsym);
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 13)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}
					   
						
						int x=ps.executeUpdate();
						if(x>0){
						
						String[] str = psym.split(",");
		                for(int k=0;k<str.length;k++)
		                {
						
						String query2="select * from symptoms where name='"+str[k]+"' "; 
                        Statement st2=connection.createStatement();
                        ResultSet rs2=st2.executeQuery(query2);
                        if ( rs2.next()!=true )
                        {
						 PreparedStatement ps3=connection.prepareStatement("insert into symptoms(name) values(?)");
						 ps3.setString(1,str[k]);
                         ps3.executeUpdate();

						}
						
						}
						
PreparedStatement ps2=connection.prepareStatement("insert into cl_backup_files select * from cloudlet_files where id="+id+" ");
ps2.executeUpdate();
						
								out.println("Sucessfully Uploaded Patient Details to Cloulet");							
							
%>
<p><a href="w_pat_to_cloud.jsp">Back</a></p>
<%
					            }
						
						
						
						
						
} 
catch (Exception e) 
{
out.println(e.getMessage());
e.printStackTrace();
}
%>
