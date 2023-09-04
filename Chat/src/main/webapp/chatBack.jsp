<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String view = request.getParameter("view").toString();
String view1 = request.getParameter("view1").toString();
try
{
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatbox", "root", "Tonic@1819");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into message(Encrypt,Decrypt)values('"+view+"','"+view1+"')");
           response.sendRedirect("Chatbot.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>