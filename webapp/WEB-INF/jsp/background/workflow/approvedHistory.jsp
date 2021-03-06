<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>流转记录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/jquery.js"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.servletContext.contextPath }/script/DemoData.js" charset="utf-8"></script>
	<script language="javascript" src="${pageContext.servletContext.contextPath }/script/DataShowManager.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath }/style/blue/pageCommon.css" />
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.servletContext.contextPath }/style/images/title_arrow.gif"/> 审批流转记录
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">

    <table cellspacing="0" cellpadding="0" class="TableStyle">
		<!-- 表头-->
        <tr align="CENTER" valign="MIDDLE" id="TableTitle">
            <td width="115">审批人</td>
			<td width="115">审批时间</td>
			<td width="100">是否通过</td>
            <td>审批意见</td>
        </tr>
		
	    <tbody id="TableData" class="dataContainer" datakey="approveInfoList">
	        <!--显示数据列表-->
			<tr class="TableDetail1 template">
				<td>${approveInfo.approver}&nbsp;李四 </td>
				<td>${approveInfo.approveTime}&nbsp;2015-06-17 09:45 </td>
				<td>${approveInfo.approval}&nbsp;是</td>
				<td>${approveInfo.comment}&nbsp;同意</td>
			</tr>
        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <a href="javascript:history.go(-1);"><img src="${pageContext.servletContext.contextPath }/style/images/goBack.png"/></a>
        </div>
    </div>
</div>

<div class="Description">
	说明：<br />
	1，审批信息列表按审批时间升序排列。<br />
</div>
</body>
</html>