<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body
                { 
                    margin:0;
                    height:100%;
                    width:100%;
                }
				                .whole
				                {
               	 				padding:20px;
                                width:940px;
                                height:480px;
                                font-size:20px;
                                border-radius: 13px 13px;
                                box-shadow: 2px 5px 15px grey;
                                background-color: white;	
                                margin-left:16%;
                                margin-top:8%;
                				}
                				h3
                				{
                				margin-top:-30%;
                				font-size:24px;
                				}
                				div
                				{
                				margin-top:2%;
                				font-size:20px;
                				}
                				
</style>
</head>
<body>
<div class="whole">
</div>
</body>
</html>
<%
String connectionURL = "jdbc:mysql://localhost:3306/chatbox";
String user = "root";
String pass = "Tonic@1819";
Connection con = null;
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    PreparedStatement ps = con.prepareStatement("select * from message");
    ResultSet rs = ps.executeQuery();
    out.println("<html><body>");
    out.println("<center><h3>Encrypted And Decrypted Messages </h3>");
    out.println("<div>");
	out.println("<table>");
	out.println("<tr><td><b>Encrypted Messages<b></td><td></td><td><b>Decrypted Messages<b></td></tr>");
     while(rs.next())
     {
    		out.println("<tr><td>" + rs.getString("Encrypt") + "</td><td></td><td>" + rs.getString("Decrypt") + "</tr></td>");
    		}
     out.println("</table></center>");
     out.println("</div>");
	 out.println("</body></html>");
}
catch(Exception e){
    e.printStackTrace();
}  
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>