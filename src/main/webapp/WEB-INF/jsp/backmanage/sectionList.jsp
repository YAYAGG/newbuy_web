<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2017/3/17
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.7.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>版块信息</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="<%=request.getContextPath()%>/back/assets/global/css/components-rounded.css" rel="stylesheet"
          type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/back/assets/global/plugins/select2/select2.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="<%=request.getContextPath()%>/back/assets/global/css/components-md.css" id="style_components"
          rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/layout.css" rel="stylesheet"
          type="text/css"/>
    <link id="style_color" href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/themes/light.css"
          rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/custom.css" rel="stylesheet"
          type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-md page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="#">
                <img src="images/logo2.png" alt="logo" class="logo-default"/>
            </a>
            <div class="menu-toggler sidebar-toggler">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse"
           data-target=".navbar-collapse">
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN PAGE TOP -->
        <div class="page-top">
            <!-- BEGIN HEADER SEARCH BOX -->
            <!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
            <form class="search-form" action="#" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control input-sm" placeholder="Search..." name="query">
                    <span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="separator hide">
                    </li>

                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
						<span class="username username-hide-on-mobile">
						Admin </span>
                            <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
                            <img alt="" class="img-circle"
                                 src="<%=request.getContextPath()%>/back/assets/admin/layout4/img/avatar9.jpg"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> 我的主页 </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-calendar"></i> 我的日程 </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-envelope-open"></i> 我的盒子 <span class="badge badge-danger">
								3 </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-rocket"></i> 我的任务 <span class="badge badge-success">
								7 </span>
                                </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-lock"></i> 锁屏 </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/backloginout.form">
                                    <i class="icon-key"></i> 退出登录 </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END PAGE TOP -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <div class="page-sidebar md-shadow-z-2-i  navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
            <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
            <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
            <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
            <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
            <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
            <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li class="start ">
                    <a href="#">
                        <i class="icon-home"></i>
                        <span class="title">管理主页</span>
                    </a>
                </li>
                <li >
                    <a href="javascript:;">
                        <i class="icon-rocket"></i>
                        <span class="title">帖子管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/postManage.form">
                                <span class="badge badge-warning">new</span>查看帖子</a>
                        </li>
                    </ul>
                </li>
                <!-- BEGIN ANGULARJS LINK -->
                <li class="tooltips" data-container="body" data-placement="right" data-html="true" data-original-title="广告">
                    <a href="#" target="_blank">
                        <i class="icon-paper-plane"></i>
                        <span class="title">
					活动广告</span>
                    </a>
                </li>
                <!-- END ANGULARJS LINK -->
                <li>
                    <a href="javascript:;">
                        <i class="icon-settings"></i>
                        <span class="title">系统设置</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                <span class="badge badge-roundless badge-danger">new</span>排行<br>
                                1</a>
                        </li>
                        <li>
                            <a href="#">
                                排行<br>
                                2</a>
                        </li>
                        <li>
                            <a href="#">
                                排行</a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="badge badge-warning">new</span>排行</a>
                        </li>
                    </ul>
                </li>
                <li >
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">用户管理</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                一般用户</a>
                        </li>
                        <li>
                            <a href="#">
                                积分</a>
                        </li>
                        <li>
                            <a href="#">
                                界别</a>
                        </li>
                        <li class="active">
                            <a href="#">
                                参与度</a>
                        </li>
                        <li>
                            <a href="#">
                                活跃度</a>
                        </li>
                        <li>
                            <a href="#">
                                黑名单</a>
                        </li>
                    </ul>
                </li>
                <li class="last active open">
                    <a href="javascript:;">
                        <i class="icon-pointer"></i>
                        <span class="title">版块管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/intoSecAdd.form">
                                <i class="icon-pencil"></i> 添加版块</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/sectionList.form">
                                查看用户</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>版块信息
                        <small>所有的版块信息</small>
                    </h1>
                </div>
                <!-- END PAGE TITLE -->
                <!-- BEGIN PAGE TOOLBAR -->
                <div class="page-toolbar">
                    <!-- BEGIN THEME PANEL -->
                    <div class="btn-group btn-theme-panel">
                        <a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-settings"></i>
                        </a>
                        <div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h3>THEME</h3>
                                    <ul class="theme-colors">
                                        <li class="theme-color theme-color-default active" data-theme="default">
                                            <span class="theme-color-view"></span>
                                            <span class="theme-color-name">Dark Header</span>
                                        </li>
                                        <li class="theme-color theme-color-light" data-theme="light">
                                            <span class="theme-color-view"></span>
                                            <span class="theme-color-name">Light Header</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-12 seperator">
                                    <h3>LAYOUT</h3>
                                    <ul class="theme-settings">
                                        <li>
                                            Theme Style
                                            <select class="layout-style-option form-control input-small input-sm">
                                                <option value="square" selected="selected">Square corners</option>
                                                <option value="rounded">Rounded corners</option>
                                            </select>
                                        </li>
                                        <li>
                                            Layout
                                            <select class="layout-option form-control input-small input-sm">
                                                <option value="fluid" selected="selected">Fluid</option>
                                                <option value="boxed">Boxed</option>
                                            </select>
                                        </li>
                                        <li>
                                            Header
                                            <select class="page-header-option form-control input-small input-sm">
                                                <option value="fixed" selected="selected">Fixed</option>
                                                <option value="default">Default</option>
                                            </select>
                                        </li>
                                        <li>
                                            Top Dropdowns
                                            <select class="page-header-top-dropdown-style-option form-control input-small input-sm">
                                                <option value="light">Light</option>
                                                <option value="dark" selected="selected">Dark</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Mode
                                            <select class="sidebar-option form-control input-small input-sm">
                                                <option value="fixed">Fixed</option>
                                                <option value="default" selected="selected">Default</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Menu
                                            <select class="sidebar-menu-option form-control input-small input-sm">
                                                <option value="accordion" selected="selected">Accordion</option>
                                                <option value="hover">Hover</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Position
                                            <select class="sidebar-pos-option form-control input-small input-sm">
                                                <option value="left" selected="selected">Left</option>
                                                <option value="right">Right</option>
                                            </select>
                                        </li>
                                        <li>
                                            Footer
                                            <select class="page-footer-option form-control input-small input-sm">
                                                <option value="fixed">Fixed</option>
                                                <option value="default" selected="selected">Default</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END THEME PANEL -->
                </div>
                <!-- END PAGE TOOLBAR -->
            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="index.html">主页</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="#">数据管理</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="#">版块信息管理</a>
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box grey-cascade">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>版块信息
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                                <a href="#portlet-config" data-toggle="modal" class="config">
                                </a>
                                <a href="javascript:;" class="reload">
                                </a>
                                <a href="javascript:;" class="remove">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <div class="col-md-6">
                                        <%--<div class="btn-group">--%>
                                        <%--<button id="sample_editable_1_new" class="btn green">--%>
                                        <%--Add New <i class="fa fa-plus"></i>--%>
                                        <%--</button>--%>
                                        <%--</div>--%>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">工具 <i
                                                    class="fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="javascript:;">
                                                        删除 </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-bordered table-hover" id="sample_1">
                                <thead>
                                <tr>
                                    <th class="table-checkbox">
                                        <input type="checkbox" class="group-checkable"
                                               data-set="#sample_1 .checkboxes"/>
                                    </th>
                                    <th>
                                        用户id
                                    </th>
                                    <th>
                                        姓名
                                    </th>
                                    <th>
                                        手机号
                                    </th>
                                    <th>
                                        密码
                                    </th>
                                    <th>
                                        用户名
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr class="odd gradeX">
                                        <td>
                                            <input type="checkbox" class="checkboxes" value="1"/>
                                        </td>
                                        <td>
                                                ${user.uid}
                                        </td>
                                        <td>
                                                ${user.name}
                                        </td>
                                        <td>
                                                ${user.phone}
                                        </td>
                                        <td class="center">
                                         ${user.password}
                                        </td>

                                        <td>
                                           ${user.username}
                                        </td>
                                    </tr>

                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>
            </div>

        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="page-footer-inner">
        2017 &copy; made by lovegod.
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/respond.min.js"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-migrate.min.js"
        type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-ui/jquery-ui.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.blockui.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.cokie.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=request.getContextPath()%>/back/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/pages/scripts/table-managed.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        TableManaged.init();
    });
</script>
<script type="text/javascript">
    <c:if test="${!empty error_msg}">alert("${error_msg}");
    </c:if>
</script>
</body>
<!-- END BODY -->
</html>
