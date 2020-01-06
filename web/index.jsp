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

    <style>
        #myDiv {
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -200px;
            margin-top: -50px;
        }

        .mouseOver {
            background-color: #708090;
            color: #FFFAFA;
        }

        .mouseOut {
            background-color: #FFFAFA;
            color: #000000;
        }
    </style>
</head>
<body>

<form action="UploadServlet" method="post" enctype="multipart/form-data"><br>
    上传用户：<input type="text" name="username"><br/>
    上传文件1：<input type="file" name="file1"><br/>
    上传文件2：<input type="file" name="file2"><br/>
    <input type="submit" value="提交">
    <br/>
    跳转至<a href="test.controller/ListFileServlet" class="navbar-link">下载</a>&nbsp;&nbsp;&nbsp;
    <a href="home.html" class="navbar-link">bootstrap</a>&nbsp;&nbsp;
    <a href="tab.jsp" class="navbar-link">选项卡</a> 页面
</form>

<form action="Search" method="post" enctype="multipart/form-data">
    <div id="myDiv">
        <input type="text" size="50" id="keyword" onkeyup="getMoreContents()"
               onfocus="getMoreContents()" onblur="clearContent()"/>
        <input type="button" id="search" value="搜索一下" width="50px"/>
        <div id="popDiv">
            <table id="content_table" bgcolor="#FFFAFA" border="0"
                   cellspacing="0" cellpadding="0">
                <tbody id="content_table_body">
                <!-- 动态数据在这里显示 -->
                </tbody>
            </table>
        </div>
    </div>
</form>


</body>

<script type="text/javascript">
    function getMoreContents() {
        var keyword = document.getElementById("keyword").value;
        if (keyword == "") {
            clearContent();

        } else {
            var ajax = new XMLHttpRequest();
            var url = "/user/getSearchMsg?input=" + keyword;
            ajax.open("GET", url, true);
            ajax.send(null);
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4) {
                    if (ajax.status == 200) {
                        var result = ajax.responseText;
                        insertContent(result);
                    }
                }
            }
        }
    }

    function insertContent(content) {
        clearContent();
        setLocation();
        //var json=content;
        var json = JSON.parse(content);
        var len = json.length;
        for (var i = 0; i < len; i++) {
            var value = json[i];
            var tr = document.createElement("tr");
            var td = document.createElement("td");
            td.setAttribute("bgcolor", "#FFFAFA");
            td.setAttribute("border", "0");
            var text = document.createTextNode(value);
            td.appendChild(text);
            tr.appendChild(td);
            document.getElementById("content_table_body").appendChild(tr);
            td.onmouseover = function () {
                this.className = 'mouseOver';
                document.getElementById("keyword").value = this.innerHTML;
            };
            td.onmouseout = function () {
                this.className = 'mouseOut';
            };
        }

    }

    function clearContent() {
        var popNode = document.getElementById("popDiv");
        popNode.style.border = "none";
        var contentNode = document.getElementById("content_table_body");
        var len = contentNode.childNodes.length;
        for (var i = len - 1; i >= 0; i--) {
            contentNode.removeChild(contentNode.childNodes[i]);
        }
    }

    function setLocation() {
        var inputNode = document.getElementById("keyword");
        var width = inputNode.offsetWidth;
        var left = inputNode["offsetLeft"];
        var top = inputNode.offsetHeight + inputNode["offsetTop"];
        var popNode = document.getElementById("popDiv");
        popNode.style.border = "gray 0.5px solid";
        popNode.style.width = width + "px";
        popNode.style.top = top + "px";
        popNode.style.left = left + "px";
        document.getElementById("content_table").style.width = width + "px";

    }
</script>
</html>
