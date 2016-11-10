<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>发布新闻 - 重庆禧纳都家居有限公司</title>
		<link rel="stylesheet" href="jquery-easyui-1.4.1/themes/icon.css" />
		<link rel="stylesheet"
			href="jquery-easyui-1.4.1/themes/default/easyui.css" />
		<link type="text/css" rel="stylesheet" href="css/pagination.css" />
		<link type="text/css" rel="stylesheet" href="css/style.css" />
		<link type="text/css" rel="stylesheet" href="css/StyleSheet1.css" />
		<script type="text/javascript"
			src="jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="jquery-easyui-1.4.1/easyloader.js"></script>
		<script type="text/javascript" src="jquery-easyui-1.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/base.js"></script>
		<script type="text/javascript" src="js/js.js"></script>
		<link href="css/zzsc.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/zzsc.js"></script>
		<script language="javascript" type="text/javascript">
        var code;
        function createCode() {
            code = "";
            var codeLength = 6; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }      
     </script>
	</head>

	<body onload="createCode()">
		<div class="qqserver">
			<div class="qqserver_fold">
				<div></div>
			</div>
			<div class="qqserver-body" style="display: block;">
				<div class="qqserver-header">
					<div></div>
					<span class="qqserver_arrow"></span>
				</div>
				<ul>
					<li>
						<a title="点击这里给我发消息"
							href="http://wpa.qq.com/msgrd?v=3&amp;uin=2226872658&amp;site=qq&amp;menu=yes"
							target="_blank">
							<div>
								客服咨询
							</div> <span>琳琳</span> </a>
					</li>
					<li>
						<a title="点击这里给我发消息"
							href="http://wpa.qq.com/msgrd?v=3&amp;uin=2226872658&amp;site=qq&amp;menu=yes"
							target="_blank">
							<div>
								客服咨询
							</div> <span>云云</span> </a>
					</li>
					<li>
						<a title="点击这里给我发消息"
							href="http://wpa.qq.com/msgrd?v=3&amp;uin=2226872658&amp;site=qq&amp;menu=yes"
							target="_blank">
							<div>
								推广合作
							</div> <span class="qqserver-service-alert">单单</span> </a>
					</li>
				</ul>
				<div class="qqserver-footer">
					<span class="qqserver_icon-alert"></span><a class="text-primary"
						href="http://crystal-vaio:8080/xndfurniture/feedback.jsp"
						target="_blank">大家都在说</a>
				</div>
			</div>
		</div>
		<div class="main">

			<!-- .header -->
			<!--header-->
			<div class="header">
				<div class="hear">
					<a href="mainpage.jsp"><img
							src="<%=request.getContextPath()%>/images/dh.gif" /> </a>
					<a
						style="position: relative; font-weight: bold; color: White; right: -620px;"
						href="adlogin.jsp">管理员登陆</a> 
				</div>
			</div>
			<!--header-->
			<!--list-->
			<div class="nav">
				<div class="nav_bg">
					<div class="logo">
						<a href="mainpage.jsp"><img
								src="<%=request.getContextPath()%>/images/logo.gif" /> </a>
					</div>
					<div class="liebiao">
						<a href="admainpage.jsp">首 页</a>
						<a href="${pageContext.request.contextPath}/ShowcServlet">用户信息</a>
						<a href="${pageContext.request.contextPath}/ShowoServlet">订单信息</a>
						<a href="${pageContext.request.contextPath}/SendServlet">发布新闻</a>
					</div>
				</div>
			</div>
			<!--nav-->
			<!-- /.header -->
			<!--contnet-->
			<div class="content">
				<!--contnet1-->
				<div class="content1">
					<div class="donghua">
						<img src="<%=request.getContextPath()%>/images/content.gif"
							alt="gif" />
					</div>
				</div>
				<!--contnet1-->
				<!--contnet8-->
				<div class="contnet8">
					<div class="c8list">
						<div class="c8left">
							<div class="tidjfh">
								<div class="ssdjgds">
									<div class="toubudfg jhdfdgf">
										新闻资讯类别
										<div class="jiahao">
											+
										</div>
										<div class="jianhao" style="left: 166px; width: 11px;">
											-
										</div>
									</div>
									<div class="kjdfgdfg">

										<a href="${pageContext.request.contextPath}/news1servlet">企业新闻</a>

										<a href="${pageContext.request.contextPath}/news1servlet">行业新闻</a>


										<div class="clear"></div>
									</div>
								</div>
								<div class="sdofksdgfsdfg jhsdfgsdf">
									<div class="toubudfg jhdfdgf">
										推荐产品
									</div>
									<div class="sdfdfjghfdg">
										<div class="sdkfjsdgf">
											<ul>
<li>
													<div class="isdjgksdg">
														<a title="阿玛尼系列" href="${pageContext.request.contextPath}/BrandServlet?id=1"> <img
																src="<%=request.getContextPath()%>/images/amnxl.png"
																alt="阿玛尼系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="阿玛尼系列" href="${pageContext.request.contextPath}/BrandServlet?id=1"> <span>阿玛尼系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

												<li>
													<div class="isdjgksdg">
														<a title="纯真岁月系列" href="${pageContext.request.contextPath}/BrandServlet?id=3"> <img
																src="<%=request.getContextPath()%>/images/czsyxl.png"
																alt="纯真岁月系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="纯真岁月系列" href="${pageContext.request.contextPath}/BrandServlet?id=3"> <span>纯真岁月系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

												<li>
													<div class="isdjgksdg">
														<a title="雅丽斯系列" href="${pageContext.request.contextPath}/BrandServlet?id=8"> <img
																src="<%=request.getContextPath()%>/images/ylsxl.png"
																alt="雅丽斯系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="雅丽斯系列" href="${pageContext.request.contextPath}/BrandServlet?id=8"> <span>雅丽斯系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

												<li>
													<div class="isdjgksdg">
														<a title="奥克系列" href="${pageContext.request.contextPath}/BrandServlet?id=9"> <img
																src="<%=request.getContextPath()%>/images/akxl.png"
																alt="奥克系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="奥克系列" href="${pageContext.request.contextPath}/BrandServlet?id=9"> <span>奥克系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

												<li>
													<div class="isdjgksdg">
														<a title="爱蒂思系列" href="${pageContext.request.contextPath}/BrandServlet?id=10"> <img
																src="<%=request.getContextPath()%>/images/adsxl.png"
																alt="爱蒂思系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="爱蒂思系列" href="${pageContext.request.contextPath}/BrandServlet?id=10"> <span>爱蒂思系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

												<li>
													<div class="isdjgksdg">
														<a title="城市恋人系列" href="${pageContext.request.contextPath}/BrandServlet?id=4"> <img
																src="<%=request.getContextPath()%>/images/cslrxl.png"
																alt="城市恋人系列" /> </a>
														<div class="sdajf">
															<h5>
																<a title="城市恋人系列" href="${pageContext.request.contextPath}/BrandServlet?id=4"> <span>城市恋人系列</span>
																</a>
															</h5>
														</div>
														<div class="clear"></div>
													</div>
												</li>

											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="c8right">
							<div class="c8dsfsdf jhdfdgf">
								<div class="toubudfg jksdfsd">
									<span>当前位置：						<a href="admainpage.jsp">首 页</a>
&gt; <a href="${pageContext.request.contextPath}/SendServlet">发布新闻</a>
									</span>
								</div>
							</div>
							<div class="sdlkjfksdgf">
								<div class="sdijfgisddsg">

									<div class="comment_box" style="padding-top: 0; border: 0;">
										<h3 class="add">
											发布新闻
										</h3>
										<form id="comment_form" name="comment_form" method="post"
											action="SendnewsServlet" onsubmit="return validateCode();">
											<div align="center">
												
												<br><br><br><br>新闻标题：
												<input type="text" id="txtTitle" name="txtTitle"
													class="text normal required">
												<br>
												<br><br><br><br>
												新闻内容：
												<textarea id="txtContent" name="txtContent"
													class="text required" style="width: 500px;"></textarea>
												<br>
												<br><br><br><br>
												验 证 码：
												<input type="text" size="20" maxlength="20" id="inputCode">
												&nbsp; 请输入验证码
												<div class="code" id="checkCode" onclick="createCode()"></div>
												<a href="#" onclick="createCode()">看不清换一张</a>
												<br>
												<br><br><br>
												<input type="submit" name="btnSubmit" value="发布新闻"
													class="submit">
												<br>
											</div>
											<div class="clear"></div>
											<br>
										</form>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!--contnet9-->
				<div class="contnet6">
					<div class="kjhnjdsnj">
						<div class="top_bg">
							友情链接
						</div>
						<div class="clear"></div>
						<div class="klsndkfdsf">

							<a target="_blank" href="www.ju9ju.com">重庆花卉</a>

							<a target="_blank" href="http://www.hzfwq.com/">中国合租网</a>

							<a target="_blank" href="http://www.zcool.com.cn/">站酷网</a>

							<a target="_blank" href="http://www.51aspx.com/">51Aspx源码</a>

							<a target="_blank" href="http://www.tenpay.com">财付通</a>

							<a target="_blank" href="http://www.alipay.com">支付宝</a>

							<div class="clear"></div>
						</div>
						<div class="klsndkfdsf">

							<a target="_blank" href="http://www.ju9ju.com"
								title="重庆融香植物花卉园林网"><img
									src="<%=request.getContextPath()%>/images/ju9ju.jpg" width="88"
									height="31" /> </a>

							<a target="_blank" href="http://www.cnzz.com" title="CNZZ流量统计"><img
									src="http://www.jiathis.com/resource/images/partners/cnzz.gif"
									width="88" height="31" /> </a>

							<a target="_blank" href="http://www.chinaz.com" title="中国站长站"><img
									src="http://www.chinaz.com/images/chinaz.gif" width="88"
									height="31" /> </a>

							<a target="_blank" href="http://www.51aspx.com" title="51ASPX"><img
									src="<%=request.getContextPath()%>/images/51aspx.png"
									width="88" height="31" /> </a>

							<a target="_blank"
								href="http://www.meilele.com/sem/jiaju/#se=bs!X129d!X!Q288E6B8B3E99!H3!XJ-!QEB6E5A185E5BD91E7B!H!X!QEB6E5A185E5BD91E7B!H"
								title="美乐乐"><img
									src="<%=request.getContextPath()%>/images/meilele.png"
									width="88" height="31" /> </a>

							<div class="clear"></div>

						</div>
					</div>
				</div>

				<!--contnet9-->
				<!--contnet7-->
				<div class="contnet7"></div>
				<!--contnet7-->
			</div>
			<!--content-->
			<!-- .footer -->
			<div class="footer">
				<div class="foor">
					<div class="shjshddsf">
						<a href="admainpage.jsp">首 页</a>
						<a href="${pageContext.request.contextPath}/ShowcServlet">用户信息</a>
						<a href="${pageContext.request.contextPath}/ShowoServlet">订单信息</a>
						<a href="${pageContext.request.contextPath}/SendServlet">发布新闻</a>
					</div>
					<div class="clear"></div>
					<div class="knaksdasd">
						<p align="center">
							<strong><span style="color: #E53333; font-size: 14px;">客户服务电话：023-6730-3388
									&nbsp; 023-6039-1282 &nbsp; 023-6730-3366</span> </strong>
						</p>
						<p align="center">
							<strong><span style="color: #666666;">版权所有
									重庆禧纳都家居有限公司 © Copyright 2012 - 2013. dtcms.net. All Rights
									Reserved.</span> </strong>
						</p>
						&nbsp;
					</div>
					<div class="clear" style="height: 55px; text-align: center;"></div>
					<div class="knaksdasd">
						<!-- JiaThisButtonBEGIN -->
						<div class="jiathis_style_32x32">
							<a class="jiathis_button_qzone"></a>
							<a class="jiathis_button_tsina"></a>
							<a class="jiathis_button_tqq"></a>
							<a class="jiathis_button_renren"></a>
							<a class="jiathis_button_kaixin001"></a>
							<a class="jiathis_button_tieba"></a>
							<a class="jiathis_button_baidu"></a>
							<a class="jiathis_button_cqq"></a>
							<a class="jiathis_button_mop"></a>
							<a class="jiathis_button_t163"></a>
							<a class="jiathis_button_xiaoyou"></a>
							<a class="jiathis_button_tsohu"></a>
							<a class="jiathis_button_qq"></a>
							<a class="jiathis_button_tianya"></a>
							<a class="jiathis_button_google"></a>
							<a class="jiathis_button_qingsina"></a>
							<a class="jiathis_button_googleplus"></a>
							<a class="jiathis_button_email"></a>
							<a class="jiathis_button_copy"></a>
							<a class="jiathis_button_fav"></a>
							<a class="jiathis_button_print"></a>
							<a href="http://www.jiathis.com/share"
								class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis"
								target="_blank"></a>
							<a class="jiathis_counter_style"></a>
						</div>
						<script type="text/javascript">
	var jiathis_config = {
		summary : "",
		hideMore : false
	}
</script>
						<script type="text/javascript"
							src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
						<!-- JiaThisButtonEND -->

					</div>
				</div>

			</div>
			<!-- /.footer -->
		</div>
		<!-- javaScript 函数 validateLogin(),用来验证验证码 -->
		<script language="javaScript">
     function validateCode()
     {
     var UserName = document.comment_form.txtUserName.value;
      var Title = document.comment_form.txtTitle.value;
      var Content = document.comment_form.txtContent.value;
      if( UserName=="" )
      {
       alert("请输入用户昵称！");
       return false;
      }
      if( Title=="" )
      {
       alert("请输入留言标题！");
       return false;
      }
      if( Content=="" )
      {
       alert("请输入留言内容！");
       return false;
      }
		var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0) 
            {
                alert("请输入验证码！");
                return false;
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) 
            {
                alert("验证码输入有误！");
                createCode();
                return false;
            }
            else 
            {
                return true;
            }
     }
    </script>
	</body>
</html>
