<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="base.jsp"%>
<c:set var="user" value="${sessionScope.USER_SESSION}"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/indexReset/reset.css"/>">
<style>
    body,
    p {
        margin: 0;
        padding: 0;
    }

    body {
        background: #F1F2F7;
    }
    .panel-body {
        background: #F1F2F7;
    }

    .i_left,
    .i_right {
        width: 50%;
        float: left;
    }

    .clearfix:after {
        content: ".";
        /**/
        /*内容为“.”就是一个英文的句号而已。也可以不写。*/
        display: block;
        /**/
        /*加入的这个元素转换为块级元素。*/
        clear: both;
        /**/
        /*清除左右两边浮动。*/
        visibility: hidden;
        /**/
        /*可见度设为隐藏。注意它和display:none;是有区别的。visibility:hidden;仍然占据空间，只是看不到而已；*/
        line-height: 0;
        /**/
        /*行高为0；*/
        height: 0;
        /**/
        /*高度为0；*/
        font-size: 0;
        /**/
        /*字体大小为0；*/
    }

    .clearfix {
        *zoom: 1;
    }

    .i_left .box1 {
        padding: 20px;
    }

    .bg1 {
        background: #31CC80;
    }

    .bg2 {
        background: #6C6FC0;
    }

    .bg3 {
        background: #E1E1E9;
    }

    .bg4 {
        background: #F7F7F7;
    }

    .i_left .box1 .item {
        height: 165px;
        width: 49%;
        float: left;
        margin-bottom: 10px;
        border-radius: 5px;
    }

    .i_m_le {
        margin-left: 2%
    }

    .i_order {
        padding: 20px;
        padding-bottom: 10px;
        padding-top: 10px;
    }

    .i_order .a {
        background: #fff;
        border-radius: 5px;
        height: 60px;
        line-height: 60px;
        margin-bottom: 10px;
    }

    .i_left .i_order .box2 a {
        color: #555;
        text-decoration: none;
        display: block;
        background: #fff;
        padding-top: 30px;
        padding-bottom: 20px;
    }

    .i_left .i_order .box2 .item {
        display: block;
        float: left;
        width: 25.0%;
        text-align: center;
        border-radius: 5px;
        overflow: hidden;
    }

    .i_left .i_order .box2 .item a p {
        padding: 10px 0;
    }

    .m_box2_mr {
        margin-right: 10px;
    }

    .i_red {
        color: #EE6767;
    }

    .inline {
        display: inline-block;
    }

    .i_left .box1 .item img {
        margin-top: 40px;
        margin-left: 10%;
        margin-right: 5%;
    }

    .i_left .box1 .item .inline {
        /*vertical-align: middle;*/
        position: relative;
        bottom: 8px;
        color: #fff;
    }

    .i_left .box1 .item .inline p {
        padding: 10px 0;
        text-align: center;
    }

    .i_left .box1 .item .inline p.f {
        font-size: 25px;
    }

    .c_12_i {
        color: #31CC80;
    }

    .c_13_i {
        color: #6C6FC0;
    ;
    }

    .huiyuan-box {
        color: #555;
        width: 98%;
        background: #fff;
        border-radius: 5px;
        margin-top: 20px;
        padding-bottom: 25px;
    }

    .huiyuan-box h3 {
        border-bottom: 1px solid #BCBCBC;
        margin: 0;
        padding: 15px 0;
        margin-left: 15px;
    }

    .huiyuan-box a {
        display: block;
        float: left;
        width: 25%;
        text-align: center;
        color: #555;
        text-decoration: none;
    }

    .huiyuan-box a p {
        padding: 20px 0;
    }

    .huiyuan-box a p.nub {
        font-size: 25px;
        padding-top: 30px;
        font-weight: bold;
    }

    .ddd_box {
        width: 48%;
        float: left;
    }

    .ddd_box .item {
        background: #F7F7F7;
        height: 105px;
        line-height: 105px;
        width: 92%;
        margin-left: 4%;
        margin-top: 20px;
        border-radius: 5px;
    }

    .ddd_box .item img {
        vertical-align: middle;
        margin-left: 6%;
        margin-right: 3%;
    }

    .ddd_box .item .f_right {
        float: right;
        font-size: 25px;
        font-weight: bold;
        margin-right: 6%;
    }
    .t1_i{
        position: relative;
        top: 3px;
        margin-right: 7px;
    }
</style>

<script type="text/javascript">
    $(function () {
        $('#tt').tabs({
            onLoad: function (panel) {
                var plugin = panel.panel('options').title;
                panel.find('textarea[name="code-' + plugin + '"]').each(function () {
                    var data = $(this).val();
                    data = data.replace(/(\r\n|\r|\n)/g, '\n');
                    if (data.indexOf('\t') == 0) {
                        data = data.replace(/^\t/, '');
                        data = data.replace(/\n\t/g, '\n');
                    }
                    data = data.replace(/\t/g, '    ');
                    var pre = $('<pre name="code" class="prettyprint linenums"></pre>').insertAfter(this);
                    pre.text(data);
                    $(this).remove();
                });
            }
        });
        var sw = $(window).width();
        if (sw < 767) {
            $('body').layout('collapse', 'west');
        }
        $('.navigation-toggle span').bind('click', function () {
            $('#head-menu').toggle();
        });
    });
    function createFrame(url) {
        var s = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
        return s;
    }

    function open1(url, title) {
        if ($('#tt').tabs('exists', title)) {
            $('#tt').tabs('select', title);
        } else {
            var content = createFrame(url);
            $('#tt').tabs('add', {
                title: title,
                content: content,
                closable: true
            });

        }
    }
</script>

<body class="easyui-layout index-body" style="text-align:left">
<div id="head-menu">
    <div class="navbar navbar-right">
        <ul>
            <li><a href="${pageContext.request.contextPath}/backend/index">Home</a></li>
        </ul>
    </div>
</div>
<div region="north" border="false" class="group wrap header index-top" style="height:66px;font-size:100%">
    <div class="content">
        <div class="logo-box">
            <img src="<c:url value="/css/indexReset/logo.png"/>">
        </div>
        <!-- <span class="left">红辣椒管理平台</span> -->
        <span class="right">

                    <a href="javascript:void(0)">欢迎，${user.name}</a>
                    <a href="${pageContext.request.contextPath}/home/logout">退出登录</a>
                </span>
    </div>
</div>
<div region="west" split="true" title="功能" style="width:10%;min-width:260px;padding:5px;">
    <ul class="easyui-tree">
        <li iconCls="icon-base" state="closed"><span>会员管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('${pageContext.request.contextPath}/backend/userList', '会员列表')">会员列表</a></li>
                <%--<li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/Distributor/index', '分销商列表')">分销商列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Pickup/index', '自提点列表')">自提点列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/Relation/index', '分销商列表')">分销关系</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/Withdraw/index', '提现列表')">提现列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/PayLog/index', '支付流水')">支付流水</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/commission/index', '分销商佣金配置列表')">分销商佣金配置列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Safe/index', '安全信息管理')">安全信息管理</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/SysMessage/index', '站内信')">站内信</a></li>--%>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>供应商管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/Supplier/index', '供应商列表')">供应商列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/Shop/index', '店铺列表')">店铺列表</a></li>

            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>产品部分</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/ProductBrand/index', '产品品牌列表')">产品品牌列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/ProductCate/index', '产品 分类列表')">产品分类列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/ProductAttr/index', '产品属性属性值列表')">产品属性属性值列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/ProductTag/index', '产品标签列表')">产品标签列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Goods/index', '所有产品')">所有产品</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>订单管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Orders/index', '全部订单列表')">全部订单列表</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>销售统计</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Statistics/distributor', '团队业绩统计')">团队业绩统计</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Statistics/goods', '商品销量统计')">商品销量统计</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>图片库</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Image/index', '图片库管理')">图片库管理</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>广告管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/AdsManage/index', '广告管理')">广告管理</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/AdsManage/setting', '广告位置管理')">广告位置管理</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>文章管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/Article/index', '文章列表')">文章列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)"
                                            onclick="open1('{$Think.const.ADMIN_DOMAIN}/ArticleCategory/index', '文章分类')">文章分类列表</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>系统管理管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/admin/index', '管理员列表')">管理员列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/role/index', '角色列表')">角色列表</a></li>
                <li iconCls="icon-gears"><a href="javascript:void(0)" onclick="open1('{$Think.const.ADMIN_DOMAIN}/SysLog/index', '系统日志')">系统日志</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>数据库管理</span>
            <ul>
                <li iconCls="icon-gears"><a href="/admin.php/Database/index?type=export">数据库备份</a></li>
            </ul>
        </li>
        <li iconCls="icon-base" state="closed"><span>供货商加入登录机制</span>
            <ul>
                <li iconCls="icon-gears"><a href="/Supplier.php">供货商登录</a></li>
            </ul>
        </li>
    </ul>
</div>
<div region="center">
    <div id="tt" class="easyui-tabs" fit="true" border="false" plain="true">
        <div title="欢迎" href="${pageContext.request.contextPath}/backend/welcome" class="content-doc"></div>
    </div>
</div>
</body>
<script type="text/javascript">
    function setNav() {
        var demosubmenu = $('#demo-submenu');
        if (demosubmenu.length) {
            if ($(window).width() < 450) {
                demosubmenu.find('a:last').hide();
            } else {
                demosubmenu.find('a:last').show();
            }
        }
        if ($(window).width() < 767) {
            $('.navigation-toggle').each(function () {
                $(this).show();
                var target = $(this).attr('data-target');
                $(target).hide();
                setDemoNav();
            });
        } else {
            $('.navigation-toggle').each(function () {
                $(this).hide();
                var target = $(this).attr('data-target');
                $(target).show();
            });
        }
    }
    function setDemoNav() {
        $('.navigation-toggle').each(function () {
            var target = $(this).attr('data-target');
            if (target == '#navbar-demo') {
                if ($(target).is(':visible')) {
                    $(this).css('margin-bottom', 0);
                } else {
                    $(this).css('margin-bottom', '2.3em');
                }
            }
        });
    }
    $(function () {
        setNav();
        $(window).bind('resize', function () {
            setNav();
        });
        $('.navigation-toggle').bind('click', function () {
            var target = $(this).attr('data-target');
            $(target).toggle();
            setDemoNav();
        });
    });
</script>

</html>