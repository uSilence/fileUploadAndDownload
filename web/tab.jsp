<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>选项卡</title>
    <%--<style type="text/css">
        /*清除样式*/
        * {
            margin: 0;
            padding: 0;
            font-size: 24px;
        }

        ul {
            list-style: none;
        }

        /*选项卡总体*/
        .tab_box {
            width: 804px;
            height: 350px;
            margin: 20px auto;
            border: 1px solid #ccc;
        }

        /*头部导航样式*/
        .tab_head {
            height: 101px;
        }

        .tab_head_div {
            float: left;
            width: 200px;
            height: 100px;
            text-align: center;
            line-height: 100px;
            border-right: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            background: rgba(204, 204, 204, 0.26);
        }

        /*导航选项最后一个不要右边框*/
        .tab_head_div_r {
            border-right: none;
        }

        /*选项卡——内容*/
        .tab_con {
            width: 750px;
            height: 240px;
            margin: 20px auto;
        }

        /*内容里面ul全部设置隐藏*/
        .tab_con_ul {
            display: none;
        }

        .tab_con_ul li {
            margin: 10px 10px;
        }

        /*鼠标移到的变化  显示ul*/
        .tab_con .current {
            display: block;
        }

        /*鼠标移到的变化 更改导航样式*/
        .tab_head .current {
            background: #fff;
            border-bottom: none;
            cursor: pointer; /*鼠标变成小手*/
        }
    </style>--%>
    <style type="text/css">
        .my_left_category {
            width: 150px;
            font-size: 12px;
            font-family: arial, sans-serif;
            letter-spacing: 2px;
        }

        .my_left_category h1 {
            background-image: url(http://www.keleyi.com/keleyi/phtml/rightmenu/top.gif);
            height: 20px;
            background-repeat: no-repeat;
            font-size: 14px;
            font-weight: bold;
            padding-left: 15px;
            padding-top: 8px;
            margin: 0px;
            color: #FFF;
        }

        .my_left_category .my_left_cat_list {
            width: 148px;
            border-color: #b60134;
            border-style: solid;
            border-width: 0px 1px 1px 1px;
            line-height: 13.5pt;
        }

        .my_left_category .my_left_cat_list h2 {
            margin: 0px;
            padding: 3px 5px 0px 9px;
        }

        .my_left_category .my_left_cat_list h2 a {
            color: #d6290b;
            font-weight: bold;
            font-size: 14px;
            line-height: 22px;
        }

        .my_left_category .my_left_cat_list h2 a:hover {
            color: #d6290b;
            font-weight: bold;
            font-size: 14px;
            line-height: 22px;
        }

        .my_left_category .h2_cat {
            width: 148px;
            height: 26px;
            background-image: url(http://www.keleyi.com/keleyi/phtml/rightmenu/right.gif);
            background-repeat: no-repeat;
            line-height: 26px;
            font-weight: normal;
            color: #333333;
            position: relative;
        }

        .my_left_category .h2_cat_1 {
            width: 148px;
            height: 26px;
            background-image: url(http://www.keleyi.com/keleyi/phtml/rightmenu/line.gif);
            background-repeat: no-repeat;
            line-height: 26px;
            font-weight: normal;
            color: #333333;
            position: relative;
        }

        .my_left_category a {
            font-size: 12px;
            text-decoration: none;
            color: #333333;
        }

        .my_left_category a:hover {
            text-decoration: underline;
            color: #ff3333;
        }

        .my_left_category h3 {
            margin: 0px;
            padding: 0px;
            height: 26px;
            font-size: 12px;
            font-weight: normal;
            display: block;
            padding-left: 8px;
        }

        .my_left_category h3 span {
            color: #999999;
            width: 145px;
            float: right;
        }

        .my_left_category h3 a {
            line-height: 26px;
        }

        .my_left_category .h3_cat {
            display: none;
            width: 204px;
            position: absolute;
            left: 123px;
            margin-top: -26px;
            cursor: auto;
        }

        .my_left_category .shadow {
            position: inherit;
            background: url(http://www.keleyi.com/keleyi/phtml/rightmenu/back.gif) left top;
            width: 204px;
        }

        .my_left_category .shadow_border {
            position: inherit;
            width: 200px;
            border: 1px solid #959595;
            margin-top: 1px;
            border-left-width: 0px;
            background: url(http://www.keleyi.com/keleyi/phtml/rightmenu/height.gif) no-repeat 0px 21px;
            background-color: #ffffff;
            margin-bottom: 3px
        }

        .my_left_category .shadow_border ul {
            margin: 0;
            padding: 0;
            margin-left: 15px
        }

        .my_left_category .shadow_border ul li {
            list-style: none;
            padding-left: 10px;
            background-image: url(http://www.keleyi.com/keleyi/phtml/rightmenu/justright.gif);
            background-repeat: no-repeat;
            background-position: 0px 8px;
            float: left;
            width: 75px;
            height: 26px;
            overflow: hidden;
            letter-spacing: 0px;
        }

        .my_left_category .active_cat {
            z-index: 99;
            background-position: 0 -25px;
            cursor: pointer;
        }

        .my_left_category .active_cat h3 {
            font-weight: bold
        }

        .my_left_category .active_cat h3 span {
            display: none;
        }

        .my_left_category .active_cat div {
            display: block;
        }
    </style>
</head>
<body>
<%--<div class="tab_box">
    <div class="tab_head" id="tab_head">
        <div class="tab_head_div current">公司动态</div>
        <div class="tab_head_div">开学典礼</div>
        <div class="tab_head_div">学员感言</div>
        <div class="tab_head_div tab_head_div_r">学员故事</div>
    </div>
    <div class="tab_con" id="tab_con">
        <ul class="tab_con_ul current">
            <li>网络营销课程钜惠5000元，只剩最后10天</li>
            <li>《传智特刊》开年任性大改版,第22期炫酷上线</li>
            <li>2014版传智播客PHP学习路线图霸气上线</li>
            <li>IT教师的福音,专教技术干货的大学教材震撼首发</li>
        </ul>
        <ul class="tab_con_ul">
            <li>且行且珍惜，退伍兵钟爱传智播客</li>
            <li>听听学员讲述传智播客跟其他机构的对比</li>
            <li>基础班学员为新学员指点迷津</li>
            <li>女汉纸背后的故事：试听课上被老师折服</li>
        </ul>
        <ul class="tab_con_ul">
            <li>用汗水证明这是传智播客的时代</li>
            <li>瓦工的“程序员”梦</li>
            <li>iOS学习之路,撑起我的成长梦想</li>
        </ul>
        <ul class="tab_con_ul">
            <li>一个让老程序员都汗颜的应届生</li>
            <li>草根学员从求知走向岗位的蜕变故事</li>
            <li>我与编程的“爱恨情仇”</li>
            <li>狂风暴雨之后才是最灿烂的彩虹</li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    var head_divs = document.getElementById("tab_head").getElementsByTagName("div");
    var len = head_divs.length;

    /*索引值  大小是从0-3*/
    var current_index = 0;
    /*计时器  每隔三秒执行一次autoChange函数*/
    var timer = window.setInterval(autoChange, 3000);

    /*为每个div添加鼠标事件*/
    for (var i = 0; i < len; i++) {
        /*移入事件*/
        head_divs[i].οnmοuseοver = function () {
            /*清除定时器*/
            clearInterval(timer);
            /*获取所有ul*/
            var con_uls = document.getElementById("tab_con").getElementsByTagName("ul");
            /*循环 先把所有ul和所有head_div设置为普通样式*/
            for (var j = 0; j < len; j++) {
                head_divs[j].className = head_divs[j].className.replace(" current", "");
                con_uls[j].className = con_uls[j].className.replace(" current", "");
                /*遇到当前鼠标指着的位置  设置其样式为变化样式*/
                if (head_divs[j] === this) {
                    head_divs[j].className += " current";
                    con_uls[j].className += " current";
                }
            }
        }
        /*移出事件 恢复定时器  自动切换*/
        head_divs[i].οnmοuseοut = function () {
            timer = setInterval(autoChange, 3000);
        }
    }

    function autoChange() {
        /*索引值自加*/
        ++current_index;
        /*如果索引大于导航个数（等于len也就是大于总个数） 清零*/
        if (current_index === len) {
            current_index = 0;
        }
        /*获取全部ul*/
        var con_uls = document.getElementById("tab_con").getElementsByTagName("ul");

        for (var i = 0; i < len; i++) {
            /*遍历 清除所有变化 都恢复为普通样式*/
            con_uls[i].className = con_uls[i].className.replace(" current", "");
            head_divs[i].className = head_divs[i].className.replace(" current", "");
            /*索引值代表当前位置 为当前位置设置变化*/
            if (head_divs[i] === head_divs[current_index]) {
                head_divs[i].className += " current";
                con_uls[i].className += " current";
            }
        }
    }
</script>--%>
<div class="my_left_category">
    <h1 style="color: #0b2e13"><a href="index.jsp">首页</a></h1>
    <div class="my_left_cat_list">
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">建筑专业族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="http://www.keleyi.com">柯乐义</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">结构专业族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">暖通专业族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="http://www.keleyi.com">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="http://www.keleyi.com">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">给排水专业族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="http://www.keleyi.com">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="http://www.keleyi.com">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">电气专业族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="http://www.keleyi.com">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="http://www.keleyi.com">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">楼宇自动化族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="http://www.keleyi.com">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="http://www.keleyi.com">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h2><a href="#">专业设备族</a></h2>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="http://www.keleyi.com">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="http://www.keleyi.com">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%--<!-- again -->
        <h2><a href="#">结构专业族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#" style="color:#ff3333;">热销推荐</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">柯乐义</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="http://www.keleyi.com">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEO</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">网站建设</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEO</a></li>
                            <li><a href="#">网站制作</a></li>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEO</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">LOGO设计</a></li>
                            <li><a href="#">网站设计网站设计网站设计网站设计</a></li>
                            <li><a href="#">网站广告</a></li>
                            <li><a href="#">推广</a></li>
                            <li><a href="#">建网站</a></li>
                            <li><a href="#">网站推广</a></li>
                            <li><a href="#">网站建设</a></li>
                            <li><a href="#">SEOqqqqqqqqeeeeqqqqqqq</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">网站程序</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">PHP</a></li>
                            <li><a href="#">ASP</a></li>
                            <li><a href="#">JSP</a></li>
                            <li><a href="#">ASP.Net</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat_1" onmouseover="this.className='h2_cat_1 active_cat'" onmouseout="this.className='h2_cat_1'">
            <h3><a href="#">其他网站</a></h3>
        </div>
        <!-- again -->
        <h2><a href="#">暖通专业族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">低端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">50元以下</a></li>
                            <li><a href="#">50-100元</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">中高端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">100-150元</a></li>
                            <li><a href="#">150-200元</a></li>
                            <li><a href="#">200-300元</a></li>
                            <li><a href="#">300元以上</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <h2><a href="#">给排水专业族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">低端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">50元以下</a></li>
                            <li><a href="#">50-100元</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">中高端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">100-150元</a></li>
                            <li><a href="#">150-200元</a></li>
                            <li><a href="#">200-300元</a></li>
                            <li><a href="#">300元以上</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <h2><a href="#">电气专业族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">低端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">50元以下</a></li>
                            <li><a href="#">50-100元</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">中高端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">100-150元</a></li>
                            <li><a href="#">150-200元</a></li>
                            <li><a href="#">200-300元</a></li>
                            <li><a href="#">300元以上</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <h2><a href="#">楼宇自动化族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">低端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">50元以下</a></li>
                            <li><a href="#">50-100元</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">中高端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">100-150元</a></li>
                            <li><a href="#">150-200元</a></li>
                            <li><a href="#">200-300元</a></li>
                            <li><a href="#">300元以上</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <h2><a href="#">专业设备族</a></h2>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="#">低端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">50元以下</a></li>
                            <li><a href="#">50-100元</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'">
            <h3><a href="http://www.keleyi.com">中高端价位</a></h3>
            <div class="h3_cat">
                <div class="shadow">
                    <div class="shadow_border">
                        <ul>
                            <li><a href="#">100-150元</a></li>
                            <li><a href="#">150-200元</a></li>
                            <li><a href="#">200-300元</a></li>
                            <li><a href="#">300元以上</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>

        <!-- again -->
        <h2><a href="#">更多>></a></h2>
    </div>
</div>

</body>
</html>