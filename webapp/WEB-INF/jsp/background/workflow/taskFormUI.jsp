<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="../../common/common-css.jsp"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>提交申请</title>
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
            <img border="0" width="13" height="13" src="${pageContext.servletContext.contextPath }/style/images/title_arrow.gif"/> 审批流程
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="${pageContext.servletContext.contextPath }/background/workflow/myTaskList.html" method="post">
		<div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="${pageContext.servletContext.contextPath }/style/blue/images/item_point.gif" /> 请假流程审批 </div> 
        </div>
        <div class="ItemBlockBorder">
        	<table class="ttab" height="100" width="90%" border="0"
				cellpadding="0" cellspacing="1" align="center">
				<tr>
					<td height="30" colspan="2" width="10%">
						<div align="right" class="STYLE1">请假天数：</div></td>
					<td colspan="2">
						<div align="left" class="STYLE1" style="padding-left:10px;">
							<input style="height: 20px;width: 400px" name="days" value="${leave.days}" disabled="disabled"/>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="2" width="10%">
						<div align="right" class="STYLE1">请假内容：</div></td>
					<td colspan="2">
						<div align="left" class="STYLE1" style="padding-left:10px;">
							<input style="height: 20px;width: 400px" name="content" value="${leave.content}" disabled="disabled"/>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="4" class="STYLE1" style="padding-left:10px;">备注：</td>
				</tr>
				<tr>
					<td height="30" colspan="4" class="STYLE1" style="padding-left:10px;">
						<textarea name="remark" id="s" cols="90" rows="3" disabled="disabled">${leave.remark}</textarea>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="4" class="STYLE1" style="padding-left:10px;">批注：</td>
				</tr>
				<tr>
					<td height="30" colspan="4" class="STYLE1" style="padding-left:10px;">
						<textarea name="comment" id="s" cols="90" rows="3"></textarea>
					</td>
				</tr>
			</table>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar">
        	<input type="hidden" name="pdkey" value="${pd.key}">
            <input type="image" src="${pageContext.servletContext.contextPath }/style/blue/images/button/submit.PNG"/>
			<a href="javascript:history.go(-1);"><img src="${pageContext.servletContext.contextPath }/style/images/goBack.png"/></a>
        </div>
    </form>
</div>
<%-- <c:if test="${commentList ne null && commentList.size() > 0}">
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			  <tr>
			    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			      <tr>
			        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			          <tr>
			            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
			              <tr>
			                <td width="6%" height="19" valign="bottom"><div align="center"><img src="${pageContext.request.contextPath }/images/tb.gif" width="14" height="14" /></div></td>
			                <td width="94%" valign="bottom"><span class="STYLE1">显示请假申请的批注信息</span></td>
			              </tr>
			            </table></td>
			            <td><div align="right"><span class="STYLE1">
			              </span></div></td>
			          </tr>
			        </table></td>
			      </tr>
			    </table></td>
			  </tr>
			  <tr>
			    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">
			      <tr>
			        <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">时间</span></div></td>
			        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">批注人</span></div></td>
			        <td width="75%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">批注信息</span></div></td>
			      </tr>
			      <s:iterator value="#commentList">
			      	<tr>
				        <td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><s:date name="time" format="yyyy-MM-dd HH:mm:ss"/></div></td>
				        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="userId"/></div></td>
				        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="fullMessage"/></div></td>
				    </tr> 
			      </s:iterator>
			        
			      
			    </table></td>
			  </tr>
		</table>
	</c:if>
	<c:if test="${commentList eq null && commentList.size() < 1}">
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			  <tr>
			    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			      <tr>
			        <td height="24" bgcolor="#F7F7F7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			          <tr>
			            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
			              <tr>
			                <td width="6%" height="19" valign="bottom"><div align="center"><img src="${pageContext.request.contextPath }/images/tb.gif" width="14" height="14" /></div></td>
			                <td width="94%" valign="bottom"><span><b>暂时没有批注信息</b></span></td>
			              </tr>
			            </table></td>
			          </tr>
			        </table></td>
			      </tr>
			    </table></td>
			  </tr>
		</table>
	</c:if> --%>
<div class="Description">
	使用说明：<br />
	1：填写页面中的表单。<br />
	2：填写好后点击提交。<br />
	<br />
	说明2：提交表单后，就会按照 模板对应的流程 开始流转。
</div>

</body>
</html>