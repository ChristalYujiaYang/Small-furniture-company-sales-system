<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>交通位置 - 重庆禧纳都家居有限公司</title>
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

		<style type="text/css">
html,body {
	margin: 0;
	padding: 0;
}

.iw_poi_title {
	color: #CC5522;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	padding-right: 13px;
	white-space: nowrap
}

.iw_poi_content {
	font: 12px arial, sans-serif;
	overflow: visible;
	padding-top: 4px;
	white-space: -moz-pre-wrap;
	word-wrap: break-word
}
</style>
		<script type="text/javascript"
			src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
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
						target="_top" href="register.jsp">注册</a>
				</div>
			</div>
			<!--header-->
			<!--list-->
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
									<span>当前位置：						<a href="${pageContext.request.contextPath}/MainpageServlet">首 页</a>
&gt;<a
										href="location.jsp">交通位置</a>
									</span>
								</div>
							</div>
							<div class="sdlkjfksdgf">
								<div
									style="width: 690px; height: 550px; border: #ccc solid 1px;"
									id="dituContent"></div>
								<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(106.576445,29.651859);//定义一个中心点坐标
        map.centerAndZoom(point,16);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"重庆禧纳都家具",content:"我的备注",point:"106.572636|29.652204",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
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