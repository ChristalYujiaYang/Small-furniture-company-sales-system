<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>重庆禧纳都家居有限公司</title>
		<link rel="stylesheet" href="jquery-easyui-1.4.1/themes/icon.css" />
		<link rel="stylesheet"
			href="jquery-easyui-1.4.1/themes/default/easyui.css" />
		<link type="text/css" rel="stylesheet" href="css/style.css" />
		<script type="text/javascript"
			src="jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="jquery-easyui-1.4.1/easyloader.js"></script>
		<script type="text/javascript" src="jquery-easyui-1.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/base.js"></script>
		<script type="text/javascript" src="js/js.js"></script>
		<link href="css/zzsc.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/zzsc.js"></script>
	</head>

	<body>
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
						target="_top" href="register.jsp">注册</a>&nbsp;
						<a
						style="position: relative; font-weight: bold; color: White; right: -640px;"
						target="_top" href="adlogin.jsp">管理员入口</a>
				</div>
			</div>
			<!--header-->
			<!--nav-->
			<div class="nav">
				<div class="nav_bg">
					<div class="logo">
						<a href="mainpage.jsp"><img
								src="<%=request.getContextPath()%>/images/logo.gif" />
						</a>
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

				<!--contnet3-->
				<div class="content3">
					<div class="copdnmfdg">
						<div class="top_bg">
							产品分类
							<span class="span1"> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="客厅系列">客厅系列</a> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="卧室系列">卧室系列</a> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="餐厅系列">餐厅系列</a> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="书房系列">书房系列</a> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="户外系列">户外系列</a> <a
								href="${pageContext.request.contextPath}/ShowServlet"
								title="休闲系列">休闲系列</a> </span>
						</div>
						<div class="iuhbdsdfg">
							<div class="ionfdsgdf">
								<ul class="ul3">
									<!--取得一个DataTable-->
										<c:forEach items="${requestScope.brand}" var="brand">
											<a
												href="${pageContext.request.contextPath}/BrandServlet?id=${brand.goodid}">
												<img src="<%=request.getContextPath()%>/${brand.photo1}"
													alt="${brand.goodname}" /> </a>
											<div class="nssdsd">
												<p>
													产品名称：
													<span class="klndsgfg">${brand.goodname}</span>
												</p>
												<p>
													人气指数：
													<span class="klndsgfg">${brand.ordernumber}次</span>
												</p>
												<p>
													参考价格：
													<span class="klndsgfg">${brand.price}</span>
												</p>
												<p>
													联系电话：
													<span class="klndsgfg">${brand.phonenumber}</span>
												</p>
											</div>
										</c:forEach>
										<div class="clear"></div>
								</ul>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
				<!--contnet3-->
				<!--contnet4-->
				<div class="content4">
					<div class="lkjddsjkndf">
						<div class="top_bg">
							店长推荐
						</div>
						<div class="lkjdfgfgf">
							<div class="iohdsnknfdf">
								<div class="ugbfdgffg">
									<ul class="ul4">
										<span class="span1">
											<li>
												<div class="ijdnfgdfg">
													<a title="阿玛尼系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=1">
														<img src="<%=request.getContextPath()%>/images/amnxl.png"
															width="218px" height="148px" alt="阿玛尼系列" />
													</a>
													<p>
														<a title="阿玛尼系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=1">阿玛尼系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="纯真岁月系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=3">
														<img src="<%=request.getContextPath()%>/images/czsyxl.png"
															width="218px" height="148px" alt="纯真岁月系列" />
													</a>
													<p>
														<a title="纯真岁月系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=3">纯真岁月系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="雅丽斯系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=8">
														<img src="<%=request.getContextPath()%>/images/ylsxl.png"
															width="218px" height="148px" alt="雅丽斯系列" />
													</a>
													<p>
														<a title="雅丽斯系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=8">雅丽斯系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="奥克系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=9">
														<img src="<%=request.getContextPath()%>/images/akxl.png"
															width="218px" height="148px" alt="奥克系列" />
													</a>
													<p>
														<a title="奥克系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=9">奥克系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="爱蒂思系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=10">
														<img src="<%=request.getContextPath()%>/images/adsxl.png"
															width="218px" height="148px" alt="爱蒂思系列" />
													</a>
													<p>
														<a title="爱蒂思系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=10">爱蒂思系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="城市恋人系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=4">
														<img src="<%=request.getContextPath()%>/images/cslrxl.png"
															width="218px" height="148px" alt="城市恋人系列" />
													</a>
													<p>
														<a title="城市恋人系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=4">城市恋人系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="威尔仕系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=5">
														<img src="<%=request.getContextPath()%>/images/wesxl.png"
															width="218px" height="148px" alt="威尔仕系列" />
													</a>
													<p>
														<a title="威尔仕系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=5">威尔仕系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="凯嵘系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=6">
														<img src="<%=request.getContextPath()%>/images/krxl.png"
															width="218px" height="148px" alt="凯嵘系列" />
													</a>
													<p>
														<a title="凯嵘系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=6">凯嵘系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="美加庄园系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=7">
														<img src="<%=request.getContextPath()%>/images/mjzyxl.png"
															width="218px" height="148px" alt="美加庄园系列" />
													</a>
													<p>
														<a title="美加庄园系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=7">美加庄园系列</a>
													</p>
												</div>
											</li>

											<li>
												<div class="ijdnfgdfg">
													<a title="名流公馆系列"
														href="${pageContext.request.contextPath}/BrandServlet?id=11">
														<img src="<%=request.getContextPath()%>/images/mlggxl.png"
															width="218px" height="148px" alt="名流公馆系列" />
													</a>
													<p>
														<a title="名流公馆系列"
															href="${pageContext.request.contextPath}/BrandServlet?id=11">名流公馆系列</a>
													</p>
												</div>
											</li>
										</span>
										<div class="clear"></div>
									</ul>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--contnet4-->
				<!--contnet2-->
				<div class="content2">
					<div class="c2bg">
						<div class="c2left">
							<div class="top_bg">
								促销活动
							</div>
							<div class="cganlnr">
								<div class="kgdfj">
									<div class="biaoti1">
										促销活动
									</div>
									<div class="neeronfg">
										<div class="youjndf">
											<ul class="ul1">
												<!--取得一个DataTable-->

												<li>
													<div class="nreojnfdsg" style="display: block">
														<a
															href="${pageContext.request.contextPath}/BrandServlet?id=1"
															title="优惠三折起！"><img
																src="<%=request.getContextPath()%>/images/yhszq.png"
																height="168px" width="248px" />
														</a>
														<div class="kjndfjg">
															<span title="优惠三折起！"><a
																href="${pageContext.request.contextPath}/BrandServlet?id=1">优惠三折起！…</a>
															</span>
														</div>
													</div>
													<div class="biaotidf">
														<span title="优惠三折起！">优惠三折起！…</span>
													</div>
													<div class="clear"></div>
												</li>

												<li>
													<div class="nreojnfdsg">
														<a
															href="${pageContext.request.contextPath}/BrandServlet?id=9"
															title="特价产品"><img
																src="<%=request.getContextPath()%>/images/tjcp.png"
																height="168px" width="248px" />
														</a>
														<div class="kjndfjg">
															<span title="特价产品"><a
																href="${pageContext.request.contextPath}/BrandServlet?id=9">特价产品</a>
															</span>
														</div>
													</div>
													<div class="biaotidf">
														<span title="特价产品">特价产品</span>
													</div>
													<div class="clear"></div>
												</li>


												<li>
													<div class="nreojnfdsg">
														<a
															href="${pageContext.request.contextPath}/BrandServlet?id=16"
															title="欧美家具出样"><img
																src="<%=request.getContextPath()%>/images/omjj.png"
																height="168px" width="248px" />
														</a>
														<div class="kjndfjg">
															<span title="欧美家具出样"><a
																href="${pageContext.request.contextPath}/BrandServlet?id=16">欧美家具出样…</a>
															</span>
														</div>
													</div>
													<div class="biaotidf">
														<span title="欧美家具出样">欧美家具出样…</span>
													</div>
													<div class="clear"></div>
												</li>


												<li>
													<div class="nreojnfdsg">
														<a
															href="${pageContext.request.contextPath}/BrandServlet?id=3"
															title="儿童系列"><img
																src="<%=request.getContextPath()%>/images/etxl.png"
																height="168px" width="248px" />
														</a>
														<div class="kjndfjg">
															<span title="儿童系列"><a
																href="${pageContext.request.contextPath}/BrandServlet?id=3">儿童系列</a>
															</span>
														</div>
													</div>
													<div class="biaotidf">
														<span title="儿童系列">儿童系列</span>
													</div>
													<div class="clear"></div>
												</li>




											</ul>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
						<div class="c2right">
							<div class="top_bg">
								成功案例
							</div>
							<div class="nhdsf">
								<div class="ondsgds">

									<div class="lijdsff">
										<a title="现代简约风格"
											href="${pageContext.request.contextPath}/CaseServlet?id=1"><img
												width="120" height="120"
												src="<%=request.getContextPath()%>/images/xdjyfg.png"
												alt="现代简约风格" />
										</a>
										<div class="noidshdfg">
											<h2>
												<a
													href="${pageContext.request.contextPath}/CaseServlet?id=1"
													title="现代简约风格">现代简约风格</a>
											</h2>
											<p title="现代简约风格">
												<a
													href="${pageContext.request.contextPath}/CaseServlet?id=1"
													title="现代简约风格">城市恋人15件套
													1.38万卧室5件套型号尺寸数量特供价LD805床1.8米13680LD801-4衣柜四门衣柜1LD805床头柜2LD804妆台1次卧…</a>
											</p>
										</div>
										<div class="clear"></div>
									</div>


									<div class="jkdnsjkg">
										<ul class="ul2">

											<li>
												<span>01-29</span><a title="阿玛尼客厅系列"
													href="${pageContext.request.contextPath}/CaseServlet?id=5">阿玛尼客厅系列</a>
											</li>

											<li>
												<span>01-29</span><a title="别墅方案配置"
													href="${pageContext.request.contextPath}/CaseServlet?id=6">别墅方案配置</a>
											</li>

											<li>
												<span>01-19</span><a title="新中式（实木）风格"
													href="${pageContext.request.contextPath}/CaseServlet?id=7">新中式（实木）风格</a>
											</li>

											<li>
												<span>01-19</span><a title="美式田园风格"
													href="${pageContext.request.contextPath}/CaseServlet?id=9">美式田园风格</a>
											</li>


										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!--contnet2-->
				<!--contnet5-->
				<div class="content5">
					<div class="uionasfdsf">
						<div class="top_bg">
							品牌推荐
						</div>
						<div class="oisdfkjdfg">
							<div class="ionsdmfnsdfds">
								<div class="oisdnfjdfc">
									<div class="jsnajfd">
										<ul class="ul5">
											<span class="span1">
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=6"><img
																	src="<%=request.getContextPath()%>/goods/kr.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=6">凯嵘</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=5"><img
																	src="<%=request.getContextPath()%>/goods/wes.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=5">威尔仕</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=1"><img
																	src="<%=request.getContextPath()%>/goods/amn.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=1">阿玛尼</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=16"><img
																	src="<%=request.getContextPath()%>/goods/ylsz.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=16">亚力山卓</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=10"><img
																	src="<%=request.getContextPath()%>/goods/ads.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=10">爱蒂思</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=17"><img
																	src="<%=request.getContextPath()%>/goods/atx.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=17">傲天祥</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=9"><img
																	src="<%=request.getContextPath()%>/goods/ak.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=9">奥克</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=15"><img
																	src="<%=request.getContextPath()%>/goods/bn.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=15">百宁</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=4"><img
																	src="<%=request.getContextPath()%>/goods/cslr.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=4">城市恋人</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=3"><img
																	src="<%=request.getContextPath()%>/goods/czsy.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=3">纯真岁月</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=18"><img
																	src="<%=request.getContextPath()%>/goods/atsdds.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=18">奥特斯汀灯饰</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=9"><img
																	src="<%=request.getContextPath()%>/goods/gdjs.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=9">格调家私</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=9"><img
																	src="<%=request.getContextPath()%>/goods/hmx.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=13">和木轩</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=12"><img
																	src="<%=request.getContextPath()%>/goods/hf.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=12">和风</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a href='goods/85/1.html'><img
																	src="<%=request.getContextPath()%>/goods/ygl.png" />
															</a>
															<p>
																<a href='goods/85/1.html'>英格利</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=7"><img
																	src="<%=request.getContextPath()%>/goods/mjzy.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=7">美加庄园</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a href='goods/104/1.html'><img
																	src="<%=request.getContextPath()%>/goods/zyrj.png" />
															</a>
															<p>
																<a href='goods/104/1.html'>自由人家</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a href='goods/103/1.html'><img
																	src="<%=request.getContextPath()%>/goods/yhgg.png" />
															</a>
															<p>
																<a href='goods/103/1.html'>壹号公馆</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=8"><img
																	src="<%=request.getContextPath()%>/goods/yls.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=8">伊利斯</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a href='goods/101/1.html'><img
																	src="<%=request.getContextPath()%>/goods/yds.png" />
															</a>
															<p>
																<a href='goods/101/1.html'>雅迪斯</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a href='goods/100/1.html'><img
																	src="<%=request.getContextPath()%>/goods/we.png" />
															</a>
															<p>
																<a href='goods/100/1.html'>唯尔</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a href='goods/99/1.html'><img
																	src="<%=request.getContextPath()%>/goods/yr.png" />
															</a>
															<p>
																<a href='goods/99/1.html'>有容</a>
															</p>
														</div>
													</div>
												</li>
												<li>
													<div class='insjfsdfs'>
														<div class='ihsjdfdsf'>
															<a href='goods/98/1.html'><img
																	src="<%=request.getContextPath()%>/goods/or.png" />
															</a>
															<p>
																<a href='goods/98/1.html'>欧瑞</a>
															</p>
														</div>
														<div class='ihsjdfdsf'>
															<a
																href="${pageContext.request.contextPath}/BrandServlet?id=11"><img
																	src="<%=request.getContextPath()%>/goods/mlgg.png" />
															</a>
															<p>
																<a
																	href="${pageContext.request.contextPath}/BrandServlet?id=11">名流公馆</a>
															</p>
														</div>
													</div>
												</li> </span>
											<div class="clear"></div>
										</ul>
										<div class="clear"></div>
									</div>
								</div>
								<div class="zuooudf"></div>
								<div class="oijsdfkdf"></div>
							</div>
						</div>
					</div>
				</div>
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
									height="31" />
							</a>

							<a target="_blank" href="http://www.cnzz.com" title="CNZZ流量统计"><img
									src="http://www.jiathis.com/resource/images/partners/cnzz.gif"
									width="88" height="31" />
							</a>

							<a target="_blank" href="http://www.chinaz.com" title="中国站长站"><img
									src="http://www.chinaz.com/images/chinaz.gif" width="88"
									height="31" />
							</a>

							<a target="_blank" href="http://www.51aspx.com" title="51ASPX"><img
									src="<%=request.getContextPath()%>/images/51aspx.png"
									width="88" height="31" />
							</a>

							<a target="_blank"
								href="http://www.meilele.com/sem/jiaju/#se=bs!X129d!X!Q288E6B8B3E99!H3!XJ-!QEB6E5A185E5BD91E7B!H!X!QEB6E5A185E5BD91E7B!H"
								title="美乐乐"><img
									src="<%=request.getContextPath()%>/images/meilele.png"
									width="88" height="31" />
							</a>

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
									&nbsp; 023-6039-1282 &nbsp; 023-6730-3366</span>
							</strong>
						</p>
						<p align="center">
							<strong><span style="color: #666666;">版权所有
									重庆禧纳都家居有限公司 © Copyright 2012 - 2013. dtcms.net. All Rights
									Reserved.</span>
							</strong>
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
        summary: "",
        hideMore: false
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