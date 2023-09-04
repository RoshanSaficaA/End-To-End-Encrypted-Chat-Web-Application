<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatbox", "root", "Tonic@1819");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into register(username,email,password)values('"+username+"','"+email+"','"+password+"')");
        response.sendRedirect("Login.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>