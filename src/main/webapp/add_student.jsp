<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="form/denglu.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Unicorn Admin</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
  <link rel="stylesheet" href="css/colorpicker.css" />
  <link rel="stylesheet" href="css/datepicker.css" />
  <link rel="stylesheet" href="css/uniform.css" />
  <link rel="stylesheet" href="css/select2.css" />
  <link rel="stylesheet" href="css/unicorn.main.css" />
  <link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


<div id="header">
  <h1><a href="./dashboard.html"></a></h1>
</div>


<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav btn-group">
    <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text"><%=name%></span></a></li>
    <li class="btn btn-inverse"><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>

<div id="sidebar">
  <a href="#" class="visible-phone"><i class="icon icon-th-list"></i>学员信息管理</a>
  <ul>
    <li class="active open"><a href="student.jsp"><i class="icon icon-th-list"></i> <span>学员信息管理</span></a>
      <ul>
        <li class="submenu active "><a href="add_student.jsp">新增学员</a></li>
        <li class="active"><a href="#">修改学员信息</a></li>
      </ul>
    </li>
    <li><a href="teacher.jsp"><i class="icon icon-th-list"></i> <span>教员信息管理</span></a></li>
    <li><a href="course.jsp"><i class="icon icon-th-list"></i> <span>课程管理</span></a></li>
    <li><a href="score.jsp"><i class="icon icon-th-list"></i> <span>分数管理</span></a></li>
  </ul>

</div>


<div id="content">
  <div id="content-header">
    <h1>新增学员</h1>
  </div>
  <div id="breadcrumb">
    <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>学员管理</a>
    <a href="#" class="current">新增学员</a>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
            <h5>填写学员信息</h5>
          </div>
          <div class="widget-content nopadding">
            <form action="form/add_student_biz.jsp" method="post" class="form-horizontal" />
            <div class="control-group">
              <label class="control-label">学员名字</label>
              <div class="controls">
                <input type="text" name="stuname"/>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">年龄</label>
              <div class="controls">
                <input type="text" name="stuage"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">密码</label>
              <div class="controls">
                <input type="password" name="stupass"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">性别</label>
              <div class="controls">
                <label><div class="radio" ><span class="checked"><input type="radio" value="男" name="stusex" style="opacity: 0;"></span></div>男</label>
                <label><div class="radio" ><span><input type="radio" name="stusex" value="女" style="opacity: 0;"></span></div>女</label>
              </div>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn btn-primary">新增</button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="row-fluid">
      <div class="span12">

      </div>
    </div>

  </div>
</div>



<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-colorpicker.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.uniform.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/unicorn.js"></script>
<script src="js/unicorn.form_common.js"></script>
</body>
</html>

