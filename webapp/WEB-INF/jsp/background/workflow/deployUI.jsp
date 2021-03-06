<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>部署流程定义</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script language="javascript" src="${pageContext.servletContext.contextPath }/script/jquery.js"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/DemoData.js" charset="utf-8"></script>
	<script language="javascript" src="${pageContext.servletContext.contextPath }/script/DataShowManager.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath }/style/blue/pageCommon.css" />
    <script type="text/javascript">
    </script> 
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.servletContext.contextPath }/style/images/title_arrow.gif"/> 部署流程定义
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="${pageContext.servletContext.contextPath }/background/workflow/newdeploy.html" enctype="multipart/form-data" method="post">
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.servletContext.contextPath }/style/blue/images/item_point.gif" /> 部署流程定义 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
                        <td>流程名称：&nbsp;<input type="text" name="filename" class="InputStyle" style="width:350px;" /></td>
						<td></td>
                    </tr>
                    <tr>
                        <td>流程文件：&nbsp;<input type="file" name="file" class="InputStyle" style="width:350px;" /> *</td>
						<td>请选择流程定义文档(zip格式)</td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.servletContext.contextPath }/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.servletContext.contextPath }/style/images/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
	说明：只接受zip扩展名的文件。
</div>

</body>
</html>