<%@ page import="com.huang.biz.impl.TblstudentDaoImpl" %>
<%@ page import="com.huang.entity.Tblstudent" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/26
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String id=request.getParameter("stuid");
  String name=request.getParameter("stuname");
  String age=request.getParameter("stuage");
  String sex=request.getParameter("stusex");
  TblstudentDaoImpl dao=new TblstudentDaoImpl();
  Tblstudent stu=dao.chack(id);
  stu.setStuName(name);
  stu.setStuAge(Integer.parseInt(age));
  stu.setStuSex(sex);
  int num=dao.update(stu);
  if(num==1){
    response.sendRedirect("../student.jsp");
  }else{
    out.print("<script>alert('修改失败');location='../update_student.jsp'</script>");
  }
%>
