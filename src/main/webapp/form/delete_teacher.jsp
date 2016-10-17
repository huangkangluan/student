<%@ page import="com.huang.biz.impl.TblteacherDaoImpl" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String teaid=request.getParameter("teaid");
   TblteacherDaoImpl tea=new TblteacherDaoImpl();
   tea.delete(teaid);
  response.sendRedirect("../teacher.jsp");
%>
