<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script charset="UTF-8" src="${pageContext.request.contextPath}/reourcesHtml/js/rollpage.js"></script>
</head>
<body>
<div class="page-bar">
    <ul class="page-num-ul clearfix" style="display: inline-block;width: 200px;position: relative;left: 87px">
        <li>共${param.totalCount }条记录&nbsp;&nbsp; ${param.currentPageNo }/${param.totalPageCount }页</li>
        <c:if test="${param.currentPageNo > 1}">
            <a href="javascript:page_nav(document.forms[0],1);">首页</a>
            <a href="javascript:page_nav(document.forms[0],${param.currentPageNo-1});">上一页</a>
        </c:if>
        <c:if test="${param.currentPageNo < param.totalPageCount }">
            <a href="javascript:page_nav(document.forms[0],${param.currentPageNo+1 });">下一页</a>
            <a href="javascript:page_nav(document.forms[0],${param.totalPageCount });">最后一页</a>
        </c:if>
        &nbsp;&nbsp;
    </ul>
    <span class="page-go-form" style="display: inline-block;margin-right: 35px;margin-top: 8px;float: right"><label>跳转至</label>
	     <input type="text" name="inputPage" id="inputPage" class="page-key" />页
	     <button type="button" class="page-btn" onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button>
		</span>
</div>
</body>

</html>