<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>管理员后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reourcesHtml/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reourcesHtml/css/admin.css">
    <script src="${pageContext.request.contextPath}/reourcesHtml/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/reourcesHtml/js/pintuer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/reourcesHtml/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/reourcesHtml/ueditor/ueditor.all.min.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">修改公告</span> </strong>
    </div>
    <div class="body-content">
        <form action="${pageContext.request.contextPath}/news/exUpdate" method="post" class="form-x" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${obj.id}">
            <div class="form-group">
                <div class="label"><label>标题：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="name" data-validate="required:请输入标题" value="${obj.name}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>内容：</label></div>
                <div class="field">
                    <script type="text/plain" id="remark_txt_1" name="content" style="width: 100%;height: 300px;">${obj.content}</script>
                    <script type="text/javascript">
                        var editor = UE.getEditor('remark_txt_1');
                        <!--由于在controller中指定了参数，所以需要额外增加这一条，不然会出现406-->
                        editor.customConfig.uploadFileName = 'upfile';
                        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
                        UE.Editor.prototype.getActionUrl = function (action) {
                            if(action === 'uploadimage' || action === 'uploadscrawl' || action === 'uploadvideo'){
                                return '${pageContext.request.contextPath}/ueditor/saveFile';
                            }else{
                                return this._bkGetActionUrl.call(this,action);
                            }
                        }
                    </script>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"></div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>