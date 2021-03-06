<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 左侧菜单栏 -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- 菜单 -->
        <ul class="sidebar-menu">
            <li class="${param.menu == 'home' ? 'active' : ''}"><a href="/home"><i class="fa fa-home"></i> <span>首页</span></a></li>
            <li class="header">系统功能</li>
            <!-- 客户管理 -->
            <li class="treeview ${param.menu.startsWith('customer')?'active':''}">
                <a href="#"><i class="fa fa-address-book-o"></i> <span>客户管理</span><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
                <ul class="treeview-menu">
                    <li class="${param.menu=='customer_my'?'active':''}"><a href="/customer/my"><i class="fa fa-circle-o"></i> 我的客户</a></li>
                    <li class="${param.menu=='customer_public'?'active':''}"><a href="/customer/public"><i class="fa fa-circle-o"></i> 公海客户</a></li>
                </ul>
            </li>
            <!-- 工作记录 -->
            <li class="treeview ${param.menu.startsWith('chance')?'active':''}">
                <a href="/chance/${account.userId}/my">
                    <i class="fa fa-bars"></i> <span>工作记录</span>
                    <span class="pull-right-container">
            </span>
                </a>
            </li>
            <!-- 待办事项 -->
            <li class="treeview ${param.menu.startsWith('todo')?'active':''}">
                <a href="javascript:;">
                    <i class="fa fa-calendar"></i> <span>待办事项</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="${param.menu == 'todo'?'active':''}"><a href="/todo/${account.userId}"><i class="fa fa-circle-o"></i> 待办列表</a></li>
                    <li><a href=""><i class="fa fa-circle-o"></i> 逾期事项</a></li>
                </ul>
            </li>
            <!-- 统计报表 -->
            <li class="treeview  class="${param.menu == 'main'?'active':''}"">
                <a href="/statistics/table">
                    <i class="fa fa-pie-chart"></i> <span>统计报表</span>
                    <span class="pull-right-container">
            </span>
                </a>
            </li>
            <li class="${param.menu=='dropbox'?'active':''}"><a href="/disk/company/0"><i class="fa fa-share-alt"></i> <span>公司网盘</span></a></li>
            <li class="header">系统管理</li>
            <!-- 部门员工管理 -->
            <li class="${param.menu=='employeeList'? 'active':'' }"><a href="/employee"><i class="fa fa-users"></i> <span>员工管理</span></a></li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>