<%@ page import="com.huang.biz.impl.TblstudentDaoImpl" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
      String stuid=request.getParameter("stuid");
      TblstudentDaoImpl stu=new TblstudentDaoImpl();
      stu.delete(stuid);
      response.sendRedirect("../student.jsp");
%>
