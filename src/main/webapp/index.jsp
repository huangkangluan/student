<%@ page import="com.huang.biz.impl.TblstudentDaoImpl" %>
<%@ page import="com.huang.entity.Tblstudent" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/24
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>我的动态页面11</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style type="text/css">
  body,td,th {
	font-family: "微软雅黑";
}
  </style>
  </head>
  <body>
       <%
       //Date d=new Date();
         TblstudentDaoImpl stu=new TblstudentDaoImpl();
         List<Tblstudent> list=stu.findAll();
       %>
   <table border="1" align="center">
          <tr>
              <td colspan="6" align="center"><h1>学员信息表</h1></td>
          </tr>
          <tr>
              <td width="100" align="center">学员编号</td>
              <td width="100" align="center">学员名字</td>
              <td width="100" align="center">学员年龄</td>
              <td width="100" align="center">学员性别</td>
              <td width="100" align="center">编辑</td>
              <td width="100" align="center">删除</td>
         </tr>
         <%
         for(Tblstudent s : list){
             String id=s.getStuId();
             String name=s.getStuName();
             Integer age=s.getStuAge();
             String sex=s.getStuSex();
         %>
          <tr>
               <td width="100" align="center"><%=id%></td>
               <td width="100" align="center"><%=name%></td>
               <td width="100" align="center"><%=age%></td>
               <td width="100" align="center"><%=sex%></td>
               <td width="100" align="center"><a href="#">编辑</a></td>
               <td width="100" align="center"><a href="#">删除</a></td>
         </tr>
   <%}%>
   </table>
  </body>
</html>
