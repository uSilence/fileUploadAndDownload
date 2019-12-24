<%--
  Created by IntelliJ IDEA.
  User: 华 弋
  Date: 2019/12/23
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>文件上传</title>
</head>
<body>

<form action="UploadServlet" method="post" enctype="multipart/form-data"><br>
    上传用户：<input type="text" name="username"><br/>
    上传文件1：<input type="file" name="file1"><br/>
    上传文件2：<input type="file" name="file2"><br/>
    <input type="submit" value="提交">
    <br/>
    跳转至<a href="test.controller/ListFileServlet">下载</a>页面

</form>

</body>
</html>
