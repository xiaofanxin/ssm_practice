<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="base.jsp"%>

<body>
    <!--表格-->
    <table id="userList" name="userList" style="width:auto;height:auto">
    </table>
    <!--工具栏-->
    <div id="toolbar">
        <div id="searchBar" style="height: 40px">
            注册时间：<input class="easyui-datebox" id="beginTime" style="width:110px">
            至<input class="easyui-datebox" id="endTime" style="width:110px">
            姓名：<input class="easyui-textbox" id="realName" style="width:120px">
            用户名：<input class="easyui-textbox" id="userName" style="width:120px">
            手机号：<input class="easyui-textbox" id="mobile" style="width:100px">
            角色：
            <select class="easyui-combobox" id="roleId" style="width:auto;">
                <option value="1">普通会员</option>
                <option value="2">一级分销商</option>
                <option value="3">二级分销商</option>
            </select>
            <a href="javascript:void(0)" onclick="doSearch()" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
        </div>
    </div>

    <!--查看弹框-->
    <div id="dlgShow" class="easyui-dialog" style="width:500px;height:600px" closed="true" buttons="#dlg-buttons">
        <form id="frmShow" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">用户信息</div>
            <div style="margin-bottom:10px">
                <input name="user_id" type="hidden">
                <input name="user_name" class="easyui-textbox" data-options="readonly:true" label="用户名:" style="width:60%">
            </div>
            <div style="margin-bottom:10px">
                <input name="real_name" class="easyui-textbox" data-options="readonly:true" label="姓名:" style="width:60%">
            </div>
            <div style="margin-bottom:10px">
                <input name="nick_name" class="easyui-textbox" data-options="readonly:true" label="昵称:" style="width:60%">
            </div>
            <div style="margin-bottom:10px">
                <input name="age" class="easyui-textbox" data-options="readonly:true" label="年龄:" style="width:60%">岁
            </div>
            <div style="margin-bottom:10px">
                <select class="easyui-combobox" name="sex" label="性别:" style="width:60%;">
                    <option value="0">男</option>
                    <option value="1">女</option>
                </select>
            </div>
            <div style="margin-bottom:10px">
                <input name="mobile" class="easyui-textbox"   data-options="readonly:true" label="联系电话:" style="width:60%">
            </div>
            <div style="margin-bottom:10px">
                <input name="email" class="easyui-textbox" data-options="readonly:true" label="昵称:" style="width:60%">
            </div>
            <div style="margin-bottom:10px">
                头像:<br/>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <img src="" id="headerImg" style="width:100px;height:100px"/>
            </div>
            <div style="margin-bottom:10px">
                <select class="easyui-combobox" name="role_id" label="角色:" style="width:60%;">
                    <option value="1">普通会员</option>
                    <option value="2">一级分销商</option>
                    <option value="3">二级分销商</option>
                </select>
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlgShow').dialog('close')" style="width:90px">取消</a>
    </div>
    <!--弹框结束-->
    <!--查看弹框-->
    <div id="dlgShowWallet" class="easyui-dialog" style="width:400px;height:200px" closed="true" buttons="#dlg-buttons">
        <form id="frmShowWallet" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">钱包信息</div>
            <div style="margin-bottom:10px">
                <input name="user_id" type="hidden">
                <input name="balance" class="easyui-textbox" data-options="readonly:true" label="余额:" style="width:90%">
            </div>
            <div style="margin-bottom:10px">
                <input name="score" class="easyui-textbox" data-options="readonly:true" label="积分:" style="width:90%">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlgShowWallet').dialog('close')" style="width:90px">取消</a>
    </div>
    <!--查看弹框-->
    <div id="dlgShowBankCards" class="easyui-dialog" style="width:700px;height:300px" closed="true" buttons="#dlg-buttons">
        <table id="bankCardsList" name="bankCardsList" style="width:100%;height:auto">
        </table>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlgShowBankCards').dialog('close')" style="width:90px">取消</a>
    </div>
    </body>


    <script type="text/javascript">
        $(function () {
            $('#userList').datagrid({
                title: '用户列表',
                url: '${pageContext.request.contextPath}/backend/userAjaxList',
                //rownumbers: true,
                singleSelect: true,
                pagination: true,
                toolbar: '#toolbar',
                loadMsg: '数据加载中请稍后……',
                emptyMsg: '未找到数据',
                idField: 'user_id',
                columns: [[
                    {
                        field: 'userId',
                        title: '用户ID',
                        width: 80
                    },
                    {
                        field: 'userName',
                        title: '用户名',
                        width: 150
                    },
                    {
                        field: 'realName',
                        title: '姓名',
                        width: 80
                    },
                    {
                        field: 'mobile',
                        title: '联系电话',
                        width: 100
                    },
                    {
                        field: 'roleId',
                        title: '角色',
                        width: 80,
                        formatter: function (value, row, index) {
                            var role = "";
                            switch (value)
                            {
                                case 1:
                                    role = "普通会员";
                                    break;
                                case 2:
                                    role = "一级分销商";
                                    break;
                                case 3:
                                    role = "二级分销商";
                                    break;
                            }

                            return role;
                        }
                    },
                    {
                        field: 'isDelete',
                        title: '状态',
                        width: 80,
                        formatter: function (value, row, index) {
                            //状态0:待审核 1:审核通过 2:审核未通过 3:解除合作
                            var status = "";
                            switch (value)
                            {
                                case 0:
                                    status = "正常";
                                    break;
                                case 1:
                                    status = "禁止";
                                    break;
                            }

                            return status;
                        }
                    },
                    {
                        field: 'regTime',
                        title: '注册时间',
                        width: 150
                    },
                    {
                        field: 'opt',
                        title: '操作',
                        align: 'center',
                        formatter: function (value, row, index) {
                            //查看
                            var opt = '<a href="javascript:void(0)" class="easyui-linkbutton l-btn l-btn-small l-btn-plain" iconcls="icon-search" plain="true" onclick="show(' + row.userId + ')" group="" id="">' +
                                '<span class="l-btn-left l-btn-icon-left">' +
                                '<span class="l-btn-text">详情</span>' +
                                '<span class="l-btn-icon icon-search">&nbsp;</span>' +
                                '</span></a>';
                            opt += '<a href="javascript:void(0)" class="easyui-linkbutton l-btn l-btn-small l-btn-plain" iconcls="icon-help" plain="true" onclick="showWallet(' + row.userId + ')" group="" id="">' +
                                '<span class="l-btn-left l-btn-icon-left">' +
                                '<span class="l-btn-text">钱包</span>' +
                                '<span class="l-btn-icon icon-help">&nbsp;</span>' +
                                '</span></a>';
                            opt += '<a href="javascript:void(0)" class="easyui-linkbutton l-btn l-btn-small l-btn-plain" iconcls="icon-search" plain="true" onclick="showBankCards(' + row.userId + ')" group="" id="">' +
                                '<span class="l-btn-left l-btn-icon-left">' +
                                '<span class="l-btn-text">银行卡</span>' +
                                '<span class="l-btn-icon icon-search">&nbsp;</span>' +
                                '</span></a>';
                            return opt;
                        }
                    }
                ]]
            });


            $('#bankCardsList').datagrid({
                title: '用户列表',
                rownumbers: true,
                singleSelect: true,
                pagination: false,
                loadMsg: '数据加载中请稍后……',
                emptyMsg: '未找到数据',
                idField: 'card_id',
                columns: [[
                    {
                        field: 'user_id',
                        title: '用户ID',
                        width: 80
                    },
                    {
                        field: 'card_no',
                        title: '卡号',
                        width: 150
                    },
                    {
                        field: 'card_holder',
                        title: '持卡人',
                        width: 80
                    },
                    {
                        field: 'bank_name',
                        title: '银行',
                        width: 80
                    },
                    {
                        field: 'bank_place',
                        title: '支行所在地',
                        width: 150
                    }
                ]]
            });
        });

        //搜索
        function doSearch() {
            var beginTime = $('#beginTime').datebox('getValue');
            var endTime = $('#endTime').datebox('getValue');
            var realName = $('#realName').textbox('getValue');
            var userName = $('#userName').textbox('getValue');
            var roleId = $('#roleId').combogrid('getValue');
            var mobile = $('#mobile').textbox('getValue');
            //条件JSON
            var paras = {"beginTime": beginTime, "endTime": endTime, "realName": realName, "userName": userName, "roleId": roleId, "mobile": mobile};
            $('#userList').datagrid('load', paras);
        }
        //查看详情
        function show(id) {
            //清空表单
            $('#frmShow').form('clear');
            //ajax请求
            $('#dlgShow').dialog('open').dialog('center').dialog('setTitle', '');
            //Ajax获取用户信息
            $.ajax({
                type: 'GET',
                url: '__ADMIN_DOMAIN__/user/getObj?id=' + id,
                data: {},
                success: function (data) {
                    //获取数据
                    var obj = data.data;
                    $("#headerImg").attr("src", obj.header_img)
                    $('#frmShow').form('load', obj);
                }
            });
        }

        function showWallet(id) {
            //清空表单
            $('#frmShowWallet').form('clear');
            //ajax请求
            $('#dlgShowWallet').dialog('open').dialog('center').dialog('setTitle', '');
            //Ajax获取用户信息
            $.ajax({
                type: 'GET',
                url: '__ADMIN_DOMAIN__/user/getWallet?id=' + id,
                data: {},
                success: function (data) {
                    //获取数据
                    var obj = data.data;
                    $('#frmShowWallet').form('load', obj);
                }
            });
        }

        function showBankCards(id) {

            $('#dlgShowBankCards').dialog('open').dialog('center').dialog('setTitle', '');
            //ajax请求
//            if ($('#bankCardsList').datagrid() != undefined)
//            {
//                $('#bankCardsList').datagrid('load', {"id": id});
//            } else
//            {

            $('#bankCardsList').datagrid('options').url = "__ADMIN_DOMAIN__/user/getBankCards";
            $('#bankCardsList').datagrid('load', {"id": id});
//            }
        }
    </script>