<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>index</title>
</head>

<body>
<div class="i_left">
    <div class="box1 clearfix">
        <div class="item bg1">
            <img src="<c:url value="/image/img/a1.png"/>" alt="">
            <div class="inline">
                <p class="f">¥9999.00</p>
                <p>今日销售总额</p>
            </div>
        </div>
        <div class="item bg3 i_m_le">
            <img src="<c:url value="/image/img/a2.png"/>" alt="">
            <div class="inline">
                <p class="f c_12_i">8888.00</p>
                <p style="color: #555;">今日订单总数</p>
            </div>
        </div>
        <div class="item bg3">
            <img src="<c:url value="/image/img/a3.png"/>" alt="">
            <div class="inline">
                <p class="f c_13_i">524</p>
                <p style="color: #555;">今日新增商品</p>
            </div>
        </div>
        <div class="item bg2 i_m_le">
            <img src="<c:url value="/image/img/a4.png"/>" alt="">
            <div class="inline">
                <p class="f">234</p>
                <p>合伙人</p>
            </div>
        </div>
    </div>
    <div class="i_order">
        <h3 class="a" style="margin-top:0;padding-left: 10px; "><img src="<c:url value="/image/img/t1.png"/>" class="t1_i" alt="">订单</h3>
        <div class="box2 clearfix">
            <div class="item">
                <a href="" class=" m_box2_mr">
                    <img src="<c:url value="/image/img/w2.png"/>" alt="">
                    <p>全部订单</p>
                    <span class="i_red">23424</span>
                </a>
            </div>
            <div class="item">
                <a href="" class=" m_box2_mr">
                    <img src="<c:url value="/image/img/w1.png"/>" alt="">
                    <p>待支付订单</p>
                    <span class="i_red">345</span>
                </a>
            </div>
            <div class="item">
                <a href="" class=" m_box2_mr">
                    <img src="<c:url value="/image/img/w3.png"/>" alt="">
                    <p>待发货订单</p>
                    <span class="i_red">234</span>
                </a>
            </div>
            <div href="" class="item">
                <a href="">
                    <img src="<c:url value="/image/img/w4.png"/>" alt="">
                    <p class="">退货退款申请</p>
                    <span class="i_red">23</span>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="i_right">
    <div class="huiyuan-box clearfix">
        <h3><img src="<c:url value="/image/img/t2.png"/>" class="t1_i" alt="">会员信息</h3>
        <a href="">
            <p class="nub">22</p>
            <p>今日新增</p>
        </a>
        <a href="">
            <p class="nub">34</p>
            <p>昨日新增</p>
        </a>
        <a href="">
            <p class="nub">3392</p>
            <p>本月新增</p>
        </a>
        <a href="">
            <p class="nub">66</p>
            <p>会员总数</p>
        </a>
    </div>
    <div class="huiyuan-box ddd_box clearfix " style="margin-right: 2%;">
        <h3> <img src="<c:url value="/image/img/t3.png"/>" class="t1_i" alt="">分销</h3>
        <div class="item">
            <img src="<c:url value="/image/img/s1.png"/>" alt="">
            <span>合伙人数量</span>
            <span class="f_right">22</span>
        </div>
        <div class="item">
            <img src="<c:url value="/image/img/s2.png"/>" alt="">
            <span>订单数量</span>
            <span class="f_right">234</span>
        </div>
    </div>
    <div class="huiyuan-box ddd_box clearfix ">
        <h3 ><img src="<c:url value="/image/img/t4.png"/>" class="t1_i" alt="">供货商</h3>
        <div class="item">
            <img src="<c:url value="/image/img/s3.png"/>" alt="">
            <span>商品总数</span>
            <span class="f_right">22</span>
        </div>
        <div class="item">
            <img src="<c:url value="/image/img/s4.png"/>" alt="">
            <span>商店总数</span>
            <span class="f_right">24</span>
        </div>
    </div>
</div>
</body>

</html>


