<%@ page import="com.huang.biz.impl.TblstudentDaoImpl" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/24
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
           request.setCharacterEncoding("UTF-8");
           String user= request.getParameter("stuname");
           String pwd= request.getParameter("stupass");
           out.println(user+"\t"+pwd);
           TblstudentDaoImpl stu=new TblstudentDaoImpl();
           boolean s=stu.chackstudent(user,pwd);
           // response.setContentType("text/html;charset=utf-8");
           if(s==true){

               session.setAttribute("name",user);
               response.sendRedirect("../student.jsp");
           }else{
               response.sendRedirect("../login.html");
           }

%>

