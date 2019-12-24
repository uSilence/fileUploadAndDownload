<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>下载文件显示页面</title>
</head>

<body>

<!-- 遍历Map集合 -->
<c:forEach items="${requestScope.fileNameMap}" var="item">
    <c:url value="/test.controller/DownloadServlet" var="downUrl">
        <c:param name="filename" value="${item.key}"> </c:param>
    </c:url>
    ${item.value}<a href="${downUrl}">下载</a>
    <br/>
</c:forEach>
</body>
</html>



