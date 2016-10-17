<%@ page import="com.huang.biz.impl.TblstudentDaoImpl" %>
<%@ page import="com.huang.entity.Tblstudent" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String name=request.getParameter("stuname");
  String age=request.getParameter("stuage");
  Integer stuage=Integer.parseInt(age);
  String pwd=request.getParameter("stupass");
  String sex =request.getParameter("stusex");
  TblstudentDaoImpl stu=new TblstudentDaoImpl();
  Tblstudent s=new Tblstudent();
  s.setStuName(name);
  s.setStuAge(stuage);
  s.setStuPass(pwd);
  s.setStuSex(sex);
  int addstu =stu.add(s);
  if(addstu!=1){
    response.sendRedirect("add_student.jsp");
  }else {
    response.sendRedirect("../student.jsp");
  }
%>
