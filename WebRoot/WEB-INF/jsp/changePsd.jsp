<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>

<title>欢迎光临</title>
<!--CSS-->
<link rel="stylesheet" href="/sale/resources/css/styles.css" />
<!--Google Webfont -->
<link href='http://fonts.googleapis.com/css?family=Istok+Web' rel='stylesheet' type='text/css' />
<!--Javascript-->
<script type="text/javascript" src="/sale/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/sale/resources/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/sale/resources/js/jquery.easing.js"></script>
<script type="text/javascript" src="/sale/resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="/sale/resources/js/form_elements.js"></script>
<script type="text/javascript" src="/sale/resources/js/custom.js"></script>
<script type="text/javascript">
	function changePsd(){
		document.getElementById("login-form").submit();
	}
</script>
<!--[if lt IE 9]>
    <script src="js/html5.js"></script>
<![endif]-->
<!-- mobile setting -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<c:if test="${msg!=null}">
	<script>
		alert('${msg}');
	</script>
</c:if>
<div class="wrapper">
    <jsp:include page="common/top.jsp" flush="true"/> 
    <div class="section_container">
        <!--Mid Section Starts-->
        <section>
            <div class="full_page">
                <h1>注册</h1>
                <!--CHECKOUT STEPS STARTS-->
                <div class="checkout_steps">
                    <ol id="checkoutSteps">
                        <li class="section allow active" id="opc-login">
                            <div class="step-title"> <span class="number"></span>
                                <h2>修改密码</h2>
                            </div>
                            <div id="checkout-step-login">
                                <div class="col2-set">
                                    <div class="col-2">
                                        <h3>修改密码</h3>
                                        <form method="post" action="/sale/user/changePsd" id="login-form" />
                                            <fieldset>
                                                <ul class="form-list">
                                                    <li>
                                                        <label class="required" for="login-email"><em>*</em>原密码</label>
                                                        <div class="input-box">
                                                            <input type="password" name="oldpsd" value="" class="input-text" />
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <label class="required" for="login-password"><em>*</em>新密码</label>
                                                        <div class="input-box">
                                                            <input type="password" name="newpsd" class="input-text" />
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <label class="required" for="login-password"><em>*</em>重复新密码</label>
                                                        <div class="input-box">
                                                            <input type="password" name="cpsd" class="input-text" />
                                                        </div>
                                                    </li>
                                                </ul>
                                                <br />
                                                <br />
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                                <div class="col2-set">
                                    <div class="col-1">
                                    </div>
                                    <div class="col-2">
                                        <div class="buttons-set"> <a class="fl_right" href="#"></a>
                                            <button class="button brown_btn" onclick="changePsd();" type="button">确定</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ol>
                </div>
                <!--CHECKOUT STEPS ENDS-->
                <div class="col_right">
                    <div class="block-progress">
                        <div class="block-title">结账流程</div>
                            <ul>
                                <li>>提交订单</li>
                                <li>>填写地址</li>
                                <li>>付款</li>
                                <li>>等待收货</li>
                            </ul>
                    </div>
                    <div class="right_promo">
                    <img src="/sale/resources/images/side_promo_banner.jpg" />
                    </div>
                </div>
            </div>
        </section>
        <!--Mid Section Ends-->
    </div>
    <jsp:include page="common/buttom.jsp" flush="true"/> 
</div>
</body>
</html>