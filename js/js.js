$(document).ready(function() {
    cgal();
	dztj();
	pptj();
	cpzx();
	tjcp();
});
/*成功案例*/
function cgal(){
	$(".ul1 li").click(function(){
		var kjg = $(this).index();
		$(".nreojnfdsg").hide();
		$(".nreojnfdsg").eq(kjg).show();	
	});
}
/*店长推荐*/
function dztj(){
	var jillkj = 0;
	var jdsnhf = 0;
	var jdhf = $(".ul4 li").length;
	setInterval(function(){
		if(jdsnhf+4>=jdhf){
			jdsnhf = 0;
		}else{
			jdsnhf+=1;	
		}
		jillkj = jdsnhf * 240;
		$(".ul4").animate({left:-jillkj},1000);
	},5000);
}
/*品牌推荐*/
function pptj(){
	var zuobik = 0;
	var lkjfgdf = 0;
	var kjdfsa = $(".ul5 li").length;
	kjdfsa /= 6;
	$(".zuooudf").click(function(){
		if(zuobik+1<=kjdfsa){
			zuobik += 1;
		}
		lkjfgdf = zuobik * 816;
		$(".ul5").animate({left:-lkjfgdf},1000);	
	});
	$(".oijsdfkdf").click(function(){
		if(zuobik>0){
			zuobik -= 1;
		}
		lkjfgdf = zuobik * 816;
		$(".ul5").animate({left:-lkjfgdf},1000);	
	});
}
/*产品中心*/
function cpzx(){
	$(".jianhao").click(function(){
		$(".kjdfgdfg").hide();
		$(".jianhao").hide();
		$(".jiahao").show();
	});
	$(".jiahao").click(function(){
		$(".kjdfgdfg").show();
		$(".jianhao").show();
		$(".jiahao").hide();
	});
}
/*推荐产品*/
function tjcp(){
	var dfgkf = $(".sdkfjsdgf li").length;
	$(".sdkfjsdgf li").eq(dfgkf-1).addClass("skdjfksdjkfjd");
}