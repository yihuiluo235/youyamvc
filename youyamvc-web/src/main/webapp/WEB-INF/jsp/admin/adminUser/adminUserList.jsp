<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <%@include file="../../common/head.jsp"%>
    <title>AdminLTE | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <%@include file="../include/head.jsp"%>
</head>
<body class="skin-blue">
<header class="header">
    <%@include file="../include/top.jsp"%>
</header>
<div class="wrapper row-offcanvas row-offcanvas-left">
    <aside class="left-side sidebar-offcanvas">
        <%@include file="../include/left.jsp"%>
    </aside>
    <aside class="right-side">
        <section class="content-header">
            <h1>
                列表
                <a class="btn btn-app" href="admin/adminUser/detail"><i class="fa fa-edit"></i>新增</a>

            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">li</a></li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <div class="box-tools">
                                    <div class="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="userName">用户名</label>
                                            <input type="text" value="${userName}" id="userName" name="userName">                                        </div>
                                        <div class="form-group">
                                            <label for="realName">真名</label>
                                            <input type="text" value="${realName}" id="realName" name="realName">                                        </div>
                                        <div class="form-group">
                                            <label for="email">邮箱</label>
                                            <input type="text" value="${email}" id="email" name="email">                                        </div>
                                        <div>
                                            <input type="hidden" id="pageCount" value="0">
                                        </div>
                                    </div>
                                    <div class="box-footer">
                                        <button class="btn btn-primary" id="querySubmit">查询</button>
                                    </div>
                                    </div>
                            </div>
                        </div><!-- /.box-header -->
                        <div class="box-body table-responsive">
                            <div class="row">
                                <div class="form-horizontal" >
                                    <div class="col-sm-1">
                                        <input type="button" class="form-control" onclick="truncateTable('adminUser')" value="清空数据">
                                    </div>

                                </div>
                                <div class="form-horizontal" >
                                    <label class="col-sm-1 control-label">导出文件:</label>
                                    <div class="col-sm-1">
                                        <input type="text" class="form-control" size="2"  id="start" value="0">
                                    </div>
                                    <div class="col-sm-1">
                                        <input type="text"  class="form-control" size="2" id="limit" value="50">
                                    </div>
                                    <div class="col-sm-1">
                                        <input type="button" class="form-control" onclick="exportJsonFile()" value="开始导出">
                                    </div>
                                </div>
                                <div class="form-horizontal" >
                                        <label class="col-sm-1 control-label">导入文件:</label>
                                        <div class="col-sm-1">
                                            <input type="file" id="importJsonFile" class="form-control"
                                                   name="myfiles" onchange="importJsonFile('admin/adminUser/import/json')"/>
                                        </div>
                                </div>
                            </div>
                            <table id="example2" class="table table-bordered table-hover dataTable">
                                <thead id="thead">
                                <tr>
                                    <th>序号</th>
                                    <th class="sorting" orderField="user_name">用户名</th>
                                    <th class="sorting" orderField="real_name">真名</th>
                                    <th class="sorting" orderField="email">邮箱</th>
                                    <th class="sorting" orderField="telephone">座机号</th>
                                    <th class="sorting" orderField="mobile_phone">手机号</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="dataTables_info"></div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="dataTables_paginate paging_bootstrap">
                                        <ul class="pagination" id="pagination">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>
        </section><!-- /.content -->
    </aside><!-- /.right-side -->
</div><!-- ./wrapper -->
<%@include file="../include/tail.jsp"%>
<script type="text/javascript" src="assets/admin/js/ajaxfileupload.js"></script>
<script charset="utf-8" src="assets/admin/app/base.js"></script>

<script language="javascript" type="text/javascript" src="${CTX}assets/admin/js/My97DatePicker/WdatePicker.js"></script>
<script src="assets/admin/app/adminUser/adminUserPaging.js" type="text/javascript"></script>
</body>
</html>
