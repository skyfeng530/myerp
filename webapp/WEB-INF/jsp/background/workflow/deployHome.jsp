<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>审批流程列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/jquery.js"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/DemoData.js" charset="utf-8"></script>
	<script language="javascript" src="${pageContext.servletContext.contextPath }/script/DataShowManager.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath }/style/blue/pageCommon.css" />
    <script type="text/javascript">
	     function showProcessImage( processDefId ){
            var url = 'processimage.jpg'; // + processDefId;
            // myOpenWindow(url, 600, 500, "showProcessImage", true);
            myShowModelessDialog(url, 600, 500);
        }
    </script> 
</head>
<body>
	
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.servletContext.contextPath }/style/images/title_arrow.gif"/> 审批流程管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
            	<td width="200px">流程名称</td>
				<td width="80px">最新版本</td>
                <td width="300px">说明</td>
                <td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="processDefList">
			<tr class="TableDetail1 template">
					<td>${processDef.name}员工请假&nbsp;</td>
					<td align="CENTER">${processDef.version}2&nbsp;</td>
					<td>${processDef.description}&nbsp;</td>
					<td><a onClick="return delConfirm()" href="list.html">删除</a>
						<a href="javascript: showProcessImage(${processDef.id})">查看流程图</a>
					</td>
			</tr>
        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <table border="0" cellspacing="0" cellpadding="10" align="left">
                <tr>
			        <td><div class="FuncBtn">
                            <div class=FuncBtnHead></div>
                            <div class=FuncBtnMemo><a href="deployUI.html">部署流程定义文档</a></div>
                            <div class=FuncBtnTail></div>
                        </div></td>
                </tr>
			</table>
        </div>
    </div>
</div>

<div class="Description">
	说明：<br />
	1，列表显示的是所有流程定义（不同名称）的最新版本。<br />
	2，删除流程定义时，此名称的所有版本的流程定义都会被删除。<br />
</div>
	
</body>
</html>