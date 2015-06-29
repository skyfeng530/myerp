<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="../../common/taglib.jsp" %>
<%@include file="../../common/common-js.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看当前流程图</title>
<script type="text/javascript">
$(document).ready(function() {  
       $(document).bind("contextmenu",function(e) {                
        alert("sorry! No right-clicking!");  
        return false;  
       });  
});
</script>
</head>
<body>
<!-- 1.获取到规则流程图 -->
<img style="position: absolute;top: 0px;left: 0px;" src="${pageContext.servletContext.contextPath }/background/workflow/viewImage.html?deploymentId=${deploymentId}&imageName=${imageName}">

<!-- 2.根据当前活动的坐标，动态绘制DIV -->
<div style="position: absolute;border:1px solid red;top: ${acs.y}px;left: ${acs.x}px;width: ${acs.width}px;height:${acs.height}px;"></div></body>
</html>