<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2017/2/17
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>查看用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <%--<link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />--%>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="<%=request.getContextPath()%>/assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/chosen/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/datatables/css/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/datatables/css/ColVis.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/datatables/css/TableTools.css">


    <link href="<%=request.getContextPath()%>/assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="bg-1">




<!-- Preloader -->
<div class="mask"><div id="loader"></div></div>
<!--/Preloader -->

<!-- Wrap all page content here -->
<div id="wrap">




    <!-- Make page fluid -->
    <div class="row">





        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" role="navigation" id="navbar">



            <!-- Branding -->
            <div class="navbar-header col-md-2">
                <a class="navbar-brand" href="index.html">
                    <strong>面部签到</strong>小桥
                </a>
                <div class="sidebar-collapse">
                    <a href="#">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
            </div>
            <!-- Branding end -->


            <!-- .nav-collapse -->
            <div class="navbar-collapse">

                <!-- Page refresh -->
                <ul class="nav navbar-nav refresh">
                    <li class="divided">
                        <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
                    </li>
                </ul>
                <!-- /Page refresh -->

                <!-- Search -->
                <div class="search" id="main-search">
                    <i class="fa fa-search"></i> <input type="text" placeholder="搜索...">
                </div>
                <!-- Search end -->

                <!-- Quick Actions -->
                <ul class="nav navbar-nav quick-actions">


                    <li class="dropdown divided">

                        <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i>
                            <span class="label label-transparent-black">${wantLeaveC}</span>
                        </a>

                        <ul class="dropdown-menu wide arrow nopadding bordered">
                            <li><h1>有 <strong>${wantLeaveC}</strong> 条未受理请假</h1></li>

                            <c:forEach items="${wantL}" var="leave" varStatus="dex">
                                <c:if test="${dex.index<4}">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoWLeave.form">
                                            <span class="label label-green"><i class="fa fa-user"></i></span>
                                                ${leave.uname}
                                            <span class="small">${leave.identity}</span>
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                            <li><a href="${pageContext.request.contextPath }/meet/intoWLeave.form">查看所有 <i class="fa fa-angle-right"></i></a></li>
                        </ul>

                    </li>

                    <li class="dropdown divided user" id="current-user">
                        <div class="profile-photo">
                            <img src="<%=request.getContextPath()%>/assets/images/profile-photo.jpg" alt/>
                        </div>
                        <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                            Admin <i class="fa fa-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu arrow settings">

                            <li>

                                <h3>Backgrounds:</h3>
                                <ul id="color-schemes">
                                    <li><a href="#" class="bg-1"></a></li>
                                    <li><a href="#" class="bg-2"></a></li>
                                    <li><a href="#" class="bg-3"></a></li>
                                    <li><a href="#" class="bg-4"></a></li>
                                    <li><a href="#" class="bg-5"></a></li>
                                    <li><a href="#" class="bg-6"></a></li>
                                </ul>

                                <div class="form-group videobg-check">
                                    <label class="col-xs-8 control-label">Video BG</label>
                                    <div class="col-xs-4 control-label">
                                        <div class="onoffswitch greensea small">
                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox"
                                                   id="videobg-check">
                                            <label class="onoffswitch-label" for="videobg-check">
                                                <span class="onoffswitch-inner"></span>
                                                <span class="onoffswitch-switch"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                            </li>

                            <li class="divider"></li>

                            <%--<li>--%>
                            <%--<a href="#"><i class="fa fa-user"></i> 个人主页</a>--%>
                            <%--</li>--%>

                            <%--<li>--%>
                            <%--<a href="#"><i class="fa fa-calendar"></i> 日程</a>--%>
                            <%--</li>--%>

                            <li>
                                <a href="#"><i class="fa fa-envelope"></i> 请假 <span class="badge badge-red"
                                                                                    id="user-inbox">${wantLeaveC}</span></a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="${pageContext.request.contextPath }/meet/logOut.form"><i class="fa fa-power-off"></i> 退出</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#mmenu"><i class="fa fa-comments"></i></a>
                    </li>
                </ul>
                <!-- /Quick Actions -->



                <!-- Sidebar -->
                <ul class="nav navbar-nav side-nav" id="sidebar">

                    <li class="collapsed-content">
                        <ul>
                            <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                        </ul>
                    </li>

                    <li class="navigation" id="navigation">
                        <a href="#" class="sidebar-toggle" data-toggle="#navigation">管理 <i
                                class="fa fa-angle-up"></i></a>

                        <ul class="menu">

                            <li class="">
                                <a href="${pageContext.request.contextPath }/meet/index.form">
                                    <i class="fa fa-tachometer"></i> 主页
                                    <%--<span class="badge badge-red">1</span>--%>
                                </a>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-list"></i> 会议管理 <b class="fa fa-plus dropdown-plus"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/getMeetingList.form">
                                            <i class="fa fa-caret-right"></i> 查看会议
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoAddMeeting.form">
                                            <i class="fa fa-caret-right"></i> 添加会议
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/getNotice.form">
                                            <i class="fa fa-caret-right"></i> 查看会议通知
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoAddNotice.form">
                                            <i class="fa fa-caret-right"></i> 添加会议通知
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-pencil"></i> 用户管理 <b class="fa fa-plus dropdown-plus"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/getAllUser.form">
                                            <i class="fa fa-caret-right"></i> 查看用户
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-pencil"></i> 会议室管理 <b class="fa fa-plus dropdown-plus"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/roomList.form">
                                            <i class="fa fa-caret-right"></i> 查看会议室
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoAdroom.form">
                                            <i class="fa fa-caret-right"></i> 添加会议室
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-pencil"></i> 假务管理 <b class="fa fa-plus dropdown-plus"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoRleaved.form">
                                            <i class="fa fa-caret-right"></i> 最近已受理 <span class="badge badge-red">${resentLeaveC}</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoWLeave.form">
                                            <i class="fa fa-caret-right"></i> 未受理 <span class="badge badge-red">${wantLeaveC}</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/meet/intoAllLeaves.form">
                                            <i class="fa fa-caret-right"></i>所有已受理
                                            <span class="badge badge-red">${AllLeaveC}</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </li>
                </ul>
                <!-- Sidebar end -->





            </div>
            <!--/.nav-collapse -->





        </div>
        <!-- Fixed navbar end -->






        <!-- Page content -->
        <div id="content" class="col-md-12">









            <!-- page header -->
            <div class="pageheader">


                <h2><i class="fa fa-thumb-tack" style="line-height: 48px;padding-left: 1px;"></i> 查看用户 <span>此页面查看用户...</span></h2>


                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li>我得位置</li>
                        <li><a href="index.html">主页</a></li>
                        <li><a href="form-elements.html">会议查看</a></li>
                        <li class="active">查看用户</li>
                    </ol>
                </div>


            </div>
            <!-- /page header -->






            <!-- content main container -->
            <div class="main">




                <!-- row -->
                <div class="row">

                    <!-- col 12 -->
                    <div class="col-md-12">



                        <!-- tile -->
                        <section class="tile transparent">


                            <!-- tile header -->
                            <div class="tile-header transparent">
                                <h1><strong>查看</strong> 用户 </h1>
                                <span class="note">包括: <span class="italic">各部门用户</span></span>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body color transparent-black rounded-corners">

                                <div class="table-responsive">
                                    <table  class="table table-datatable table-custom" id="basicDataTable">
                                        <thead>
                                        <tr>
                                            <th class="sort-numeric">工号</th>
                                            <th class="sort-amount">姓名</th>
                                            <th class="sort-amount">职称</th>
                                            <%--<th class="sort-numeric">结束时间</th>--%>
                                            <th class="sort-amount">部门</th>
                                            <th class="sort-numeric">电话</th>
                                            <%--<th>操作</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${userList}" var="user">
                                            <tr class="gradeA">
                                                <td class="text-center">${user.id}</td>
                                                <td>${user.uname}</td>
                                                <td>${user.title}</td>
                                                <td>${user.depart}</td>
                                                <td>${user.cellphone}</td>
                                                <%--<td><a href="${pageContext.request.contextPath }/meet/deleteMeeting.form?mid=${meeting.mid}" class="btn btn-danger">删除</a> </td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            <!-- /tile body -->



                        </section>
                        <!-- /tile -->




                    </div>
                    <!-- /col 6 -->


                </div>
                <!-- /row -->






            </div>
            <!-- /content container -->






        </div>
        <!-- Page content end -->



        <!--右侧消息栏-->
        <div id="mmenu" class="right-panel">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#mmenu-users" data-toggle="tab"><i class="fa fa-users"></i></a></li>
                <li class=""><a href="#mmenu-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
                <li class=""><a href="#mmenu-friends" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
                <li class=""><a href="#mmenu-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="mmenu-users">
                    <h5><strong>Online</strong> Users</h5>

                    <ul class="users-list">

                        <li class="online">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="online">
                            <div class="media">

                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                                </a>
                                <span class="badge badge-red unread">3</span>

                                <div class="media-body">
                                    <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>

                            </div>
                        </li>

                        <li class="online">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Kosice, Slovakia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="online">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/george-avatar.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">George <strong>McCain</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Prague, Czech Republic</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="busy">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="busy">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar2.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Jesse <strong>Phoenix</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Berlin, Germany</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                    </ul>

                    <h5><strong>Offline</strong> Users</h5>

                    <ul class="users-list">

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar4.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Dell <strong>MacApple</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Paris, France</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">

                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar5.jpg" alt>
                                </a>

                                <div class="media-body">
                                    <h6 class="media-heading">Roger <strong>Flopple</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Rome, Italia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>

                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar6.jpg" alt>

                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Nico <strong>Vulture</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Kyjev, Ukraine</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar7.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Bobby <strong>Socks</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Moscow, Russia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                    </ul>

                </div>

                <div class="tab-pane" id="mmenu-history">
                    <h5><strong>Chat</strong> History</h5>

                    <ul class="history-list">

                        <li class="online">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                                    <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="busy">
                            <div class="media">

                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                                </a>
                                <span class="badge badge-red unread">3</span>

                                <div class="media-body">
                                    <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                                    <small>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</small>
                                    <span class="badge badge-outline status"></span>
                                </div>

                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                                    <small>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit </small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                    </ul>

                </div>

                <div class="tab-pane" id="mmenu-friends">
                    <h5><strong>Friends</strong> List</h5>
                    <ul class="favourite-list">

                        <li class="online">
                            <div class="media">

                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                                </a>
                                <span class="badge badge-red unread">3</span>

                                <div class="media-body">
                                    <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>

                            </div>
                        </li>

                        <li class="offline">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="busy">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                        <li class="online">
                            <div class="media">
                                <a class="pull-left profile-photo" href="#">
                                    <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                                </a>
                                <div class="media-body">
                                    <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                                    <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>

                <div class="tab-pane pane-settings" id="mmenu-settings">
                    <h5><strong>Chat</strong> Settings</h5>

                    <ul class="settings">

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">Show Offline Users</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-offline" checked="">
                                        <label class="onoffswitch-label" for="show-offline">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">Show Fullname</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-fullname">
                                        <label class="onoffswitch-label" for="show-fullname">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">History Enable</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-history" checked="">
                                        <label class="onoffswitch-label" for="show-history">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">Show Locations</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-location" checked="">
                                        <label class="onoffswitch-label" for="show-location">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">Notifications</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-notifications">
                                        <label class="onoffswitch-label" for="show-notifications">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="form-group">
                                <label class="col-xs-8 control-label">Show Undread Count</label>
                                <div class="col-xs-4 control-label">
                                    <div class="onoffswitch greensea">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-unread" checked="">
                                        <label class="onoffswitch-label" for="show-unread">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </li>

                    </ul>

                </div><!-- tab-pane -->

            </div><!-- tab-content -->
        </div>






    </div>
    <!-- Make page fluid-->




</div>
<!-- Wrap all page content end -->



<section class="videocontent" id="video"></section>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/videobackground/jquery.videobackground.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/vendor/blockui/jquery.blockUI.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/ColReorderWithResize.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/colvis/dataTables.colVis.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/tabletools/ZeroClipboard.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/datatables/dataTables.bootstrap.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/vendor/chosen/chosen.jquery.min.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/minimal.min.js"></script>

<script>
    $(function(){

        // Add custom class to pagination div
        $.fn.dataTableExt.oStdClasses.sPaging = 'dataTables_paginate paging_bootstrap paging_custom';

        /*************************************************/
        /**************** BASIC DATATABLE ****************/
        /*************************************************/

        /* Define two custom functions (asc and desc) for string sorting */
        jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
            return ((x < y) ? -1 : ((x > y) ?  1 : 0));
        };

        jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
            return ((x < y) ?  1 : ((x > y) ? -1 : 0));
        };

        /* Add a click handler to the rows - this could be used as a callback */
        $("#basicDataTable tbody tr").click( function( e ) {
            if ( $(this).hasClass('row_selected') ) {
                $(this).removeClass('row_selected');
            }
            else {
                oTable01.$('tr.row_selected').removeClass('row_selected');
                $(this).addClass('row_selected');
            }

            // FadeIn/Out delete rows button
            if ($('#basicDataTable tr.row_selected').length > 0) {
                $('#deleteRow').stop().fadeIn(300);
            } else {
                $('#deleteRow').stop().fadeOut(300);
            }
        });

        /* Build the DataTable with third column using our custom sort functions */
        var oTable01 = $('#basicDataTable').dataTable({
            "sDom":
            "R<'row'<'col-md-6'l><'col-md-6'f>r>"+
            "t"+
            "<'row'<'col-md-4 sm-center'i><'col-md-4'><'col-md-4 text-right sm-center'p>>",
            "oLanguage": {
                "sSearch": ""
            },
            "aaSorting": [ [0,'asc'], [1,'asc'] ],
            "aoColumns": [
                null,
                null,
                { "sType": 'string-case' },
                null,
                null
            ],
            "fnInitComplete": function(oSettings, json) {
                $('.dataTables_filter input').attr("placeholder", "Search");
            }
        });

        // Append delete button to table
        var deleteRowLink = '<a href="#" id="deleteRow" class="btn btn-red btn-xs delete-row">删除选中的行</a>'
        $('#basicDataTable_wrapper').append(deleteRowLink);

        /* Add a click handler for the delete row */
        $('#deleteRow').click( function() {
            var anSelected = fnGetSelected(oTable01);
              var id=anSelected[0].cells[0].innerHTML;
            $.ajax({
                type:"post",
                async:true,
                url:"${pageContext.request.contextPath }/meet/deleteUser.form",
                data:'id='+id,
                success:function (result) {
                },
                error:function (errMsg) {
                    alert("删除用户数据失败!");
                }
            });
            if (anSelected.length !== 0 ) {
                oTable01.fnDeleteRow(anSelected[0]);
                $('#deleteRow').stop().fadeOut(300);
            }
        });

        /* Get the rows which are currently selected */
        function fnGetSelected(oTable01Local){
            return oTable01Local.$('tr.row_selected');
        };

        /*******************************************************/
        /**************** INLINE EDIT DATATABLE ****************/
        /*******************************************************/

        function restoreRow (oTable02, nRow){
            var aData = oTable02.fnGetData(nRow);
            var jqTds = $('>td', nRow);

            for ( var i=0, iLen=jqTds.length ; i<iLen ; i++ ) {
                oTable02.fnUpdate( aData[i], nRow, i, false );
            }

            oTable02.fnDraw();
        };

        function editRow (oTable02, nRow){
            var aData = oTable02.fnGetData(nRow);
            var jqTds = $('>td', nRow);
            jqTds[0].innerHTML = '<input type="text" value="'+aData[0]+'">';
            jqTds[1].innerHTML = '<input type="text" value="'+aData[1]+'">';
            jqTds[2].innerHTML = '<input type="text" value="'+aData[2]+'">';
            jqTds[3].innerHTML = '<input type="text" value="'+aData[3]+'">';
            jqTds[4].innerHTML = '<input type="text" value="'+aData[4]+'">';
            jqTds[5].innerHTML = '<a class="edit save" href="#">Save</a><a class="delete" href="#">Delete</a>';
        };

        function saveRow (oTable02, nRow){
            var jqInputs = $('input', nRow);
            oTable02.fnUpdate( jqInputs[0].value, nRow, 0, false );
            oTable02.fnUpdate( jqInputs[1].value, nRow, 1, false );
            oTable02.fnUpdate( jqInputs[2].value, nRow, 2, false );
            oTable02.fnUpdate( jqInputs[3].value, nRow, 3, false );
            oTable02.fnUpdate( jqInputs[4].value, nRow, 4, false );
            oTable02.fnUpdate( '<a class="edit" href="#">Edit</a><a class="delete" href="#">Delete</a>', nRow, 5, false );
            oTable02.fnDraw();
        };



        var oTable02 = $('#inlineEditDataTable').dataTable({
            "sDom":
            "R<'row'<'col-md-6'l><'col-md-6'f>r>"+
            "t"+
            "<'row'<'col-md-4 sm-center'i><'col-md-4'><'col-md-4 text-right sm-center'p>>",
            "oLanguage": {
                "sSearch": ""
            },
            "aoColumnDefs": [
                { 'bSortable': false, 'aTargets': [ "no-sort" ] }
            ],
            "fnInitComplete": function(oSettings, json) {
                $('.dataTables_filter input').attr("placeholder", "Search");
            }
        });

        // Append add row button to table
        var addRowLink = '<a href="#" id="addRow" class="btn btn-green btn-xs add-row">Add row</a>'
        $('#inlineEditDataTable_wrapper').append(addRowLink);

        var nEditing = null;

        // Add row initialize
        $('#addRow').click( function (e) {
            e.preventDefault();

            // Only allow a new row when not currently editing
            if ( nEditing !== null ) {
                return;
            }

            var aiNew = oTable02.fnAddData([ '', '', '', '', '', '<a class="edit" href="">Edit</a>', '<a class="delete" href="">Delete</a>' ]);
            var nRow = oTable02.fnGetNodes(aiNew[0]);
            editRow(oTable02, nRow);
            nEditing = nRow;

            $(nRow).find('td:last-child').addClass('actions text-center');
        });

        // Delete row initialize
        $(document).on( "click", "#inlineEditDataTable a.delete", function(e) {
            e.preventDefault();

            var nRow = $(this).parents('tr')[0];
            oTable02.fnDeleteRow( nRow );
        });

        // Edit row initialize
        $(document).on( "click", "#inlineEditDataTable a.edit", function(e) {
            e.preventDefault();

            /* Get the row as a parent of the link that was clicked on */
            var nRow = $(this).parents('tr')[0];

            if (nEditing !== null && nEditing != nRow){
                /* A different row is being edited - the edit should be cancelled and this row edited */
                restoreRow(oTable02, nEditing);
                editRow(oTable02, nRow);
                nEditing = nRow;
            }
            else if (nEditing == nRow && this.innerHTML == "Save") {
                /* This row is being edited and should be saved */
                saveRow(oTable02, nEditing);
                nEditing = null;
            }
            else {
                /* No row currently being edited */
                editRow(oTable02, nRow);
                nEditing = nRow;
            }
        });

        /******************************************************/
        /**************** DRILL DOWN DATATABLE ****************/
        /******************************************************/

        var anOpen = [];

        var oTable03 = $('#drillDownDataTable').dataTable({
            "sDom":
            "R<'row'<'col-md-6'l><'col-md-6'f>r>"+
            "t"+
            "<'row'<'col-md-4 sm-center'i><'col-md-4'><'col-md-4 text-right sm-center'p>>",
            "oLanguage": {
                "sSearch": ""
            },
            "aoColumnDefs": [
                { 'bSortable': false, 'aTargets': [ "no-sort" ] }
            ],
            "aaSorting": [[ 1, "asc" ]],
            "bProcessing": true,
            "sAjaxSource": "assets/js/vendor/datatables/ajax/sources/objects.txt",
            "aoColumns": [
                {
                    "mDataProp": null,
                    "sClass": "control text-center",
                    "sDefaultContent": '<a href="#"><i class="fa fa-plus"></i></a>'
                },
                { "mDataProp": "engine" },
                { "mDataProp": "browser" },
                { "mDataProp": "grade" }
            ],
            "fnInitComplete": function(oSettings, json) {
                $('.dataTables_filter input').attr("placeholder", "Search");
            }
        });

        $(document).on( 'click', '#drillDownDataTable td.control', function () {
            var nTr = this.parentNode;
            var i = $.inArray( nTr, anOpen );

            $(anOpen).each( function () {
                if ( this !== nTr ) {
                    $('td.control', this).click();
                }
            });

            if ( i === -1 ) {
                $('i', this).removeClass().addClass('fa fa-minus');
                $(this).parent().addClass('drilled');
                var nDetailsRow = oTable03.fnOpen( nTr, fnFormatDetails(oTable03, nTr), 'details' );
                $('div.innerDetails', nDetailsRow).slideDown();
                anOpen.push( nTr );
            }
            else {
                $('i', this).removeClass().addClass('fa fa-plus');
                $(this).parent().removeClass('drilled');
                $('div.innerDetails', $(nTr).next()[0]).slideUp( function () {
                    oTable03.fnClose( nTr );
                    anOpen.splice( i, 1 );
                } );
            }

            return false;
        });

        function fnFormatDetails( oTable03, nTr ){
            var oData = oTable03.fnGetData( nTr );
            var sOut =
                    '<div class="innerDetails">'+
                    '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
                    '<tr><td>Rendering engine:</td><td>'+oData.engine+'</td></tr>'+
                    '<tr><td>Browser:</td><td>'+oData.browser+'</td></tr>'+
                    '<tr><td>Platform:</td><td>'+oData.platform+'</td></tr>'+
                    '<tr><td>Version:</td><td>'+oData.version+'</td></tr>'+
                    '<tr><td>Grade:</td><td>'+oData.grade+'</td></tr>'+
                    '</table>'+
                    '</div>';
            return sOut;
        };

        /****************************************************/
        /**************** ADVANCED DATATABLE ****************/
        /****************************************************/

        var oTable04 = $('#advancedDataTable').dataTable({
            "sDom":
            "<'row'<'col-md-4'l><'col-md-4 text-center sm-left'T C><'col-md-4'f>r>"+
            "t"+
            "<'row'<'col-md-4 sm-center'i><'col-md-4'><'col-md-4 text-right sm-center'p>>",
            "oLanguage": {
                "sSearch": ""
            },
            "oTableTools": {
                "sSwfPath": "assets/js/vendor/datatables/tabletools/swf/copy_csv_xls_pdf.swf",
                "aButtons": [
                    "copy",
                    "print",
                    {
                        "sExtends":    "collection",
                        "sButtonText": 'Save <span class="caret" />',
                        "aButtons":    [ "csv", "xls", "pdf" ]
                    }
                ]
            },
            "fnInitComplete": function(oSettings, json) {
                $('.dataTables_filter input').attr("placeholder", "Search");
            },
            "oColVis": {
                "buttonText": '<i class="fa fa-eye"></i>'
            }
        });

        $('.ColVis_MasterButton').on('click', function(){
            var newtop = $('.ColVis_collection').position().top - 45;

            $('.ColVis_collection').addClass('dropdown-menu');
            $('.ColVis_collection>li>label').addClass('btn btn-default')
            $('.ColVis_collection').css('top', newtop + 'px');
        });

        $('.DTTT_button_collection').on('click', function(){
            var newtop = $('.DTTT_dropdown').position().top - 45;
            $('.DTTT_dropdown').css('top', newtop + 'px');
        });

        //initialize chosen
        $('.dataTables_length select').chosen({disable_search_threshold: 10});

    })

</script>
<script type="text/javascript">
    <c:if test="${!empty error_msg}">alert("${error_msg}");</c:if>
</script>
</body>
</html>