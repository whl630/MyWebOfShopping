<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/3
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作员登录界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/operator.css" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
    <div class="form-bg">
           <div class="container">
               <div class="row">
                   <div class="col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6">
                       <form class="form-horizontal">
                           <div class="heading">用户登录</div>
                           <div class="form-group">
                               <i class="fa-user-secret"></i><input required="" name="login[username]" type="text" class="form-control" placeholder="Username" id="exampleInputEmail1">
                           </div>
                           <div class="form-group">
                               <i class="fa fa-lock"></i><input required="" name="login[password]" type="password" class="form-control" placeholder="Password">
                           </div>
                           <div class="form-group">
                               <button type="submit" class="btn btn-default">提交</button>
                               <span>Don't have an account? <a href="" class="create_account">登录</a></span>
                           </div>
                       </form>
                   </div>
               </div>
           </div>
    </div>
</body>
</html>
