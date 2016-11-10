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
		<title>新闻资讯- 重庆禧纳都家居有限公司</title>
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
		<SCRIPT LANGUAGE="JavaScript">
	var record = 4;//每页显示多少条记录 
	var count = 11;//记录总数 
	var pageTotal = ((count + record - 1) / record) | 0;//总页数 
	var pagenum = 1;//将要显示的页码 

	Cookie = {
		Set : function() {
			var name = arguments[0], value = escape(arguments[1]), days = 365, path = "/";
			if (arguments.length > 2)
				days = arguments[2];
			if (arguments.length > 3)
				path = arguments[3];
			with (new Date()) {
				setDate(getDate() + days);
				days = toUTCString();
			}
			document.cookie = "{0}={1};expires={2};path={3}".format(name,
					value, days, path);
		},
		Get : function() {
			var returnValue = document.cookie.match(new RegExp("[b^;]?"
					+ arguments[0] + "=([^;]*)(?=;|b|$)", "i"));
			return returnValue ? unescape(returnValue[1]) : returnValue;
		}
	}
	String.prototype.format = function() {
		var tmpStr = this;
		var iLen = arguments.length;
		for ( var i = 0; i < iLen; i++) {
			tmpStr = tmpStr.replace(new RegExp("\{" + i + "\}", "g"),
					arguments[i]);
		}
		return tmpStr;
	}
	function setPagenum() {//整理Cookie 
		pagenum = Cookie.Get("pagenum");
		if (pagenum == "" || pagenum < 1) {
			pagenum = 1;
		}
	}

	setPagenum();

	//重新整理当前页码，如果页面小于1，则赋值为1，如果大于总页数，则等于总页数 
	coordinatePagenum(pagenum);

	//根据当前要显示的页码取得当前面里第一条记录的号码 
	var pageBegin = (record * (pagenum - 1) + 1) | 0;

	//根据当前要显示的页码取得当前面里最后一条记录的号码 
	var pageEnd = record * pagenum;

	function showhiddenRecord(pagenum) {
		number.innerHTML = pagenum;
		if (pagenum <= 1) {
			theFirstPage.innerHTML = "第一页";
			thePrePage.innerHTML = "上一页";
		} else {
			theFirstPage.innerHTML = "<a href="
			javascript: firstPage()
			">第一页__tag_85$60_";
			thePrePage.innerHTML = "<a href="
			javascript: prePage()
			">上一页__tag_86$56_";
		}
		if (pagenum >= pageTotal) {
			theNextPage.innerHTML = "下一页";
			theLastPage.innerHTML = "最后一页";
		} else {
			theNextPage.innerHTML = "<a href="
			javascript: nextPage()
			">下一页__tag_92$58_";
			theLastPage.innerHTML = "<a href="
			javascript: lastPage()
			">最后一页__tag_93$59_";
		}
		document.getElementById('goto').value = pagenum;
		//根据当前要显示的页码取得当前面里第一条记录的号码 
		pageBegin = (record * (pagenum - 1) + 1) | 0;

		//根据当前要显示的页码取得当前面里最后一条记录的号码 
		pageEnd = record * pagenum;
		for ( var i = 1; i <= count; i++) {
			if (i >= pageBegin && i <= pageEnd) {
				mytable.rows[i].style.display = "";
			} else {
				mytable.rows[i].style.display = "none";
			}
		}
		Cookie.Set("pagenum", pagenum);
	}

	function firstPage() {
		pagenum = 1;
		showhiddenRecord(pagenum);
	}

	function lastPage() {
		showhiddenRecord(pageTotal);
	}

	//重新整理当前页码，如果页面小于1，则赋值为1，如果大于总页数，则等于总页数 
	function coordinatePagenum(num) {
		if (num < 1) {
			num = "1";
		} else if (num > pageTotal) {
			num = pageTotal;
		}
	}

	function prePage() {
		pagenum--;
		coordinatePagenum(pagenum);
		showhiddenRecord(pagenum);
	}

	function nextPage() {
		pagenum++;
		coordinatePagenum(pagenum);
		showhiddenRecord(pagenum);
	}

	function gotoPage(num) {
		coordinatePagenum(pagenum);
</SCRIPT>
	</head>

	<body onLoad="showhiddenRecord(pagenum)">
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
						href="login.jsp">登陆</a> &nbsp;
					<a
						style="position: relative; font-weight: bold; color: White; right: -640px;"
						target="_top" href="register.jsp">注册</a>
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
						<a href="${pageContext.request.contextPath}/MainpageServlet">首 页</a>
						<a href="aboutus.jsp">关于我们</a>
               <a href="${pageContext.request.contextPath}/ShowServlet">产品展示</a>
						<a href="${pageContext.request.contextPath}/DesignServlet">布置房间</a>
						<a href="${pageContext.request.contextPath}/ModifyServlet">个人信息</a>
						<a href="${pageContext.request.contextPath}/OutcomeServlet">成功案例</a>
						<a href="location.jsp">交通位置</a>
						<a href="${pageContext.request.contextPath}/messageservlet">在线留言</a>
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
									<span>当前位置：<a href="${pageContext.request.contextPath}/MainpageServlet">首页 </a>&gt; <a
										href="${pageContext.request.contextPath}/news1servlet">企业新闻</a>
									</span>
								</div>
							</div>
							<div class="sdlkjfksdgf">
								<div class="sdijfgisddsg">

									<div class="comment_box" style="padding-top: 0; border: 0;">
										<h3 class="add">
											新闻资讯
										</h3>
										<table>
											<tr>
												<th align="left" width="550px">
													<h2>&nbsp; 
														标题 
													</h2>
												</th>
												<th align="right">
													<h2>
														时间 &nbsp;
													</h2>
												</th>
											</tr>
											<c:forEach items="${requestScope.news}" var="news">
												<tr>
													<td align="left" width="550px">
														<a href="${pageContext.request.contextPath}/NewsServlet?id=${news.newsid}"><h3>${news.title}</h3></a>
													</td>
													<td align="right">
														<h3>${news.time}</h3>
													</td>
												</tr>
											</c:forEach>
										</table>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font face="楷体"><strong><a
													href="${pageContext.request.contextPath}/news1servlet?change=decrease">前一页</a>
													&nbsp; 第<font color="#ff0000">${PageNum}</font>页 &nbsp; <a
													href="${pageContext.request.contextPath}/news1servlet?change=increase">后一页</a>
											</strong>
											</font>
										</p>
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
						<a href="${pageContext.request.contextPath}/MainpageServlet">首页</a>
						<a href="aboutus.jsp">关于我们</a>
						<a href="${pageContext.request.contextPath}/ShowServlet">产品展示</a>
						<a href="${pageContext.request.contextPath}/DesignServlet">布置房间</a>
						<a href="${pageContext.request.contextPath}/ModifyServlet">个人信息</a>
						<a href="${pageContext.request.contextPath}/OutcomeServlet">成功案例</a>
						<a href="location.jsp">交通位置</a>
						<a href="${pageContext.request.contextPath}/messageservlet">在线留言</a>
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
	</body>
</html>
