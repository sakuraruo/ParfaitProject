<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PafaitMusic</title>
</head>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/audio.css">
<link rel="stylesheet" href="../dist/css/bootstrap.min.css">
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../dist/js/bootstrap.min.js"></script>
<script src="../js/comments.js"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../js/audio.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/pageAngularJS/albumdata.js"></script>
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
} /*非常重要的样式让背景图片100%适应整个屏幕*/
.bg {
	display: table;
	width: 100%;
	height: 100%;
	padding: 100px 0;
	text-align: center;
	color: #fff; no-repeat bottom center;
	background-color: #000;
	background-size: cover;
	background-image: url(../img/Theme/mymusic_bg.jpg);
}

.my-navbar {
	padding: 20px 0;
	transition: background 0.5s ease-in-out, padding 0.5s ease-in-out;
}

.my-navbar a {
	background: transparent !important;
	color: #fff !important
}

.my-navbar a:hover {
	color: #45bcf9 !important;
	background: transparent;
	outline: 0
}

.my-navbar a {
	transition: color 0.5s ease-in-out;
} /*-webkit-transition ;-moz-transition*/
.top-nav {
	padding: 0;
	background: #000;
}

button.navbar-toggle {
	background-color: #fbfbfb;
} /*整个背景都是transparent透明的，会看不到，所以再次覆盖一下*/
button.navbar-toggle>span.icon-bar {
	background-color: #dedede
}
</style>
</head>
<body>
	<input type="hidden" value="${albumId}" id="albumId">
	<!--<div style="height: 100px; border: 1px solid;">-->
	<nav class="navbar navbar-fixed-top my-navbar top-nav"
		role="navigation">
	<div ng-app="userApp" ng-controller="usercontroller" class="container-fluid">
		<div class="navbar-header">
			<a><img height="50px" src="../img/Theme/Parfait_logo.png" /></a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="/index">Parfait音乐</a>


		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/mymusic">我的音乐</a></li>
				<li><a href="/search">发现音乐</a></li>
				<li><a href="/musicHall">热门音乐</a></li>
			</ul>
			<ul class="nav navbar-nav pull-right">
				<li class="active" >
				<img src="/coverInfo?coverId={{user.coverId}}&width=40&height=40">
				</li>
			</ul>
			<div class="input-group"
				style="margin-top: 11px; margin-left: 600px;">
				<div class="input-group-btn">
					<button id="searchFor" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" selectValue="单曲">单曲
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" style="width: 76px;">
						<li><i style="color: #0F0F0F;">单曲</i></li>
						<li><i style="color: #0F0F0F;">专辑</i></li>
						<li><i style="color: #0F0F0F;">歌单</i></li>
						<!--<li role="separator" class="divider"></li>
          <li><a href="#">Separated link</a></li>-->
					</ul>
				</div>
				<input type="text" class="form-control searchInfo" aria-label="..."
					style="width: 200px; height: 34px;" ng-keyup="search($event)">
			</div>
		</div>

	</div>
	</nav>
	<div class="bg" style="height: 638px;">
		<div ng-app="albumApp" ng-controller="albumcontroller" id="my_music"
			style="height: 502px; width: 930px; margin-left: 180px; margin-right: 180px;">
			<!--个人歌单-->

			<!--歌单详情 包括歌单介绍 歌单歌曲 以及歌单评论-->
			<div
				style="float: left; border: 1px solid; padding: 3px; PADDING: 0px; width: 828px; height: 500px; margin-left: 100px; OVERFLOW: auto; overflow-x: hidden;">
				<!--歌单详细-->
				<div id="song_list_detail" style="height: 315px;">
					<div>
						<div style="height: 238px;">
							<div
								style="width: 208px; height: 208px; margin-left: 36px; margin-top: 10px; padding: 4px 4px 4px 4px; float: left;">
								<img src="/coverInfo?coverId={{albumInfo.coverId}}&width=200&height=200"
									style="padding: 2px 2px 2px 2px; border: 2px #9D9D9D solid; height: 200px; width: 200px">
							</div>
							<div
								style="width: 400px; height: 208px; margin-right: 80px; margin-top: 10px; padding: 2px 2px 2px 2px; float: right;">
								<div style="height: 24px; width: 100%; margin-top: 10px;">
									<button style="float: left;" class="btn btn-danger">
										<span class="glyphicon glyphicon-tags"></span> 专辑
									</button>
									<h2>{{albumInfo.albumName}}</h2>
								</div>
								<!--<div style="height: 35px;width: 100%;margin-top: 20px;">
   								<a style="float: left;">
   									<img src="http://p1.music.126.net/GXCYPFKU0sDbIAg56qANtg==/18694996208922717.jpg?param=35y35">
   								</a>
   									<span style="float: left;margin-left: 10px;margin-top: 5px;"><a>Try-white</a></span>
   									<span style="float: left;margin-left: 15px;margin-top: 5px;"><a style="color: #000000;text-decoration: none;">2017-3-20创建</a></span>
   							</div>-->
								<div
									style="width: 100%; margin-top: 20px; color: #080808; text-align: left;">
									<p>歌手：{{albumInfo.singerName}}</p>
									<p>发行时间：{{albumInfo.publishTime}}</p>
									<p>发行公司： {{albumInfo.publisher}}</p>
								</div>
								<div style="height: 31px; width: 100%; margin-top: 10px;">
									<button class="btn btn-primary" style="float: left">
										<em class="glyphicon glyphicon-play"></em>播放
									</button>
									<button class="btn btn-default"
										style="float: left; margin-left: 10px;">
										<em class="glyphicon glyphicon-folder-open"></em> <a
											style="text-decoration: none;">收藏</a>
									</button>
									<button class="btn btn-default"
										style="float: left; margin-left: 10px;">
										<em class="glyphicon glyphicon-share"> </em> <a
											style="text-decoration: none;">分享</a>
									</button>
									<button class="btn btn-default"
										style="float: left; margin-left: 10px;">
										<em class="glyphicon glyphicon-download-alt"> </em> <a
											style="text-decoration: none;">下载</a>
									</button>
									<button class="btn btn-default"
										style="float: left; margin-left: 10px;">
										<em class="glyphicon glyphicon-edit"> </em> <a
											style="text-decoration: none;">评论</a>
									</button>
								</div>
								<!--<div style="height: 35px;width: 100%;margin-top: 20px;float: left;color: #000000;">
   								<b style="float: left;">标签：</b>
   								<a class="btn btn-primary btn-lg active btn-xs" style="float: left;">acg</a>
   							</div>-->
								<div style="margin-top: 5px;">
									<p style="float: left; color: #000000;">
										<b style="float: left;">专辑介绍：</b> {{albumInfo.albumDes}}
									</p>
								</div>

							</div>
						</div>
					</div>
					<div
						style="height: 35px; margin-top: 20px; color: #000000; float: left; margin-left: 0px;">
						<h3 style="float: left; margin-left: 36px;">
							<span>歌曲列表</span>
						</h3>

						<HR
							style="background-color: #F10B0B; width: 809px; height: 5px; size: a4;">
					</div>
				</div>
				<!--歌曲列表-->
				<div id="song_list">
					<table id="music_table">
						<thead>
							<th>
								<div
									style="background: url(../img/footer/table.png) repeat-x 0px 5px; width: 74px; height: 34px;"></div>
							</th>
							<th><div
									style="background: url(../img/footer/table.png) repeat-x 0px 5px; width: 283px; height: 34px; text-align: center; color: #000000; margin-left: 2px;">歌曲标题</div></th>
							<th><div
									style="background: url(../img/footer/table.png) repeat-x 0px 5px; width: 111px; height: 34px; text-align: center; color: #000000; margin-left: 2px;">时长</div></th>
							<th><div
									style="background: url(../img/footer/table.png) repeat-x 0px 5px; width: 103px; height: 34px; text-align: center; color: #000000; margin-left: 2px;">歌手</div></th>
							<th><div
									style="background: url(../img/footer/table.png) repeat-x 0px 5px; width: 231px; height: 34px; text-align: center; color: #000000; margin-left: 2px;">专辑</div></th>
						</thead>
						<tbody class="music_table">
							<tr ng-repeat="x in singlesInfo| filter: singlesId">
								<td style="color: #101010; height: 26px">
									<div style="margin-top: 4px;">
										<a
											style="text-decoration: none; float: left; margin-left: 15px;"></a>
										<a class="ply-icon{{$index+1}}" ng-mouseenter="over($index+1)"
											ng-mouseleave="leave($index+1)" ng-click="ply($index+1)"
											style="width: 17px; height: 17px; background: url(../img/footer/table.png) repeat-x 0px -105px; float: left; margin-left: 25px;"></a>
									</div>
								</td>
								<td>
									<div
										style="float: left; color: #0F0F0F; text-align: center; width: 100%; height: 100%;">
										<a ng-href="/single?singleId={{x.singlesId}}">{{x.singlesName}}</a>
									</div>
								</td>
								<td>
									<div
										style="float: left; color: #0F0F0F; text-align: center; width: 100%; height: 100%;">
										<a>{{x.singlesDuration}}</a>
									</div>
								</td>
								<td>
									<div
										style="float: left; color: #0F0F0F; text-align: center; width: 100%; height: 100%;">
										<a>{{x.singerName}}</a>
									</div>
								</td>
								<td>
									<div
										style="float: left; color: #0F0F0F; text-align: center; width: 100%; height: 100%;">
										<a>{{x.albumName}}</a>
									</div>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
				<!--评论-->
				<div id="comments">
					<div>
						<h3 style="float: left; margin-left: 36px; color: #000000;">
							<span>评论</span>
						</h3>
						<HR
							style="background-color: #F10B0B; width: 809px; height: 5px; size: a4;">
					</div>
					<div>
						<div>
							<div style="float: left; margin-left: 15px; margin-right: 5px;">
								<img
									src="http://p3.music.126.net/y7GLjwWPu1yI73U_pkEiiQ==/109951163060280393.jpg?param=50y50">
							</div>
							<div style="float: left;">
								<div>
									<textarea id="comments_test" placeholder="评论"
										style="width: 614px; height: 63px; resize: none; color: #0F0F0F;"></textarea>
								</div>
								<div style="float: right;">
									<span id="wordrest">80</span>
									<button type="button" class="btn btn-primary btn-xs">提交</button>
								</div>
							</div>
						</div>
						<div style="float: left; margin-left: 50px; text-align: left;">
							<h5>最新评论</h5>
							<HR
								style="background-color: #0F0F0F; width: 680px; height: 2px; size: a4;">
						</div>
						<div style="float: left; margin-left: 50px; text-align: left;">
							<div>
								<div ng-repeat="x in commentsInfo" style="width: 616px;">
									<div style="float: left; margin-left: 15px; margin-right: 5px;">
										<img
											src="http://p1.music.126.net/abFiFeTbbQCj6XEYnFGwew==/3393092907441831.jpg?param=50y50">
									</div>
									<div style="float: left; width: 546px; color: #0F0F0F;">
										<div>
											<a>{{x.comment_user_name}}</a>
											<textarea
												style="width: 546px; background-color: #D4D4D4; resize: none; color: #000000; overflow: hidden; resize: none;">{{x.comment_content}}
</textarea>
											<div style="float: left; width: 546px;">
												<div style="float: left;">{{x.create_time}}</div>
												<a style="float: right;" class="glyphicon glyphicon-comment">回复
												</a>
											</div>
										</div>
										<div ng-repeat="y in x.comment_response">
											<div
												style="float: left; margin-left: 15px; margin-right: 5px;">
												<img
													src="http://p3.music.126.net/y7GLjwWPu1yI73U_pkEiiQ==/109951163060280393.jpg?param=50y50">
											</div>
											<a>{{y.response_user_name}}</a>
											<div ng-repeat="z in y.response_Content">
												<textarea
													style="width: 526px; background-color: #D4D4D4; resize: none; color: #000000; overflow: hidden; resize: none; margin-left: 20px;">回复@{{x.comment_user_name}}:{{z}}</textarea>
												<div style="float: left; width: 546px;">
													<div style="float: left;">{{y.create_time}}</div>
													<a style="float: right;"
														class="glyphicon glyphicon-comment">回复 </a>
												</div>
											</div>

											<div
												style="float: left; margin-left: 15px; margin-right: 5px;">
												<img
													src="http://p1.music.126.net/abFiFeTbbQCj6XEYnFGwew==/3393092907441831.jpg?param=50y50">
											</div>
											<a>{{x.comment_user_name}}</a>
											<div ng-repeat="m in y.get_reply">
												<textarea
													style="width: 506px; background-color: #D4D4D4; resize: none; color: #000000; overflow: hidden; resize: none; margin-left: 20px;">回复@{{y.response_user_name}}:{{m}}</textarea>
												<div style="float: left; width: 546px;">
													<div style="float: left;">{{y.create_time}}</div>
													<a style="float: right;"
														class="glyphicon glyphicon-comment">回复 </a>
												</div>
											</div>

										</div>
									</div>
									<div style="float: left; text-align: left;">
										<HR style="border: 1 dashed #987cb9;" width="680px"
											color=#987cb9 SIZE=1>
									</div>
								</div>
								<div>
									<div>
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
		</div>
		<!--<script>  
    	var themeCount=1;
        $(window).scroll(function () {  
            if ($(".navbar").offset().top > 50) {$(".navbar-fixed-top").addClass("top-nav");  
            }else {$(".navbar-fixed-top").removeClass("top-nav");}  
        })
        
    </script>-->
		<div class="row" style="height: 188px;">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<p>
					<a>关于Parfait音乐</a> <span class="line">|</span> <a>客户服务</a> <span
						class="line">|</span> <a>服务条款</a> <span class="line">|</span> <a>网站导航</a>
					<span class="line">|</span> <a>意见反馈</a> <span class="line">|</span>
				</p>
				<p>

					<a hidefocus="true"><img src="../img/Theme/wa2s.png" /> <span>||</span>
						中国白学院运营</a>

				</p>
				<p>
					<a hidefocus="true"><img src="../img/Theme/wa2_tv.png"> <span>||
					</span> sakuraruo版权所有@2017-2018</a>
				</p>
			</div>
		</div>
		<!--<div style="height: 948px; background-image: url(../img/Theme/theme1.jpg);"></div>-->
		<div class="audio-box">
			<div class="audio-container">
				<div class="audio-cover"></div>
				<div class="audio-view">
					<h3 class="audio-title">未知歌曲</h3>
					<div class="audio-body">
						<div class="audio-backs">
							<div class="audio-this-time">00:00</div>
							<div class="audio-count-time">00:00</div>
							<div class="audio-setbacks">
								<i class="audio-this-setbacks"> <span
									class="audio-backs-btn"></span>
								</i> <span class="audio-cache-setbacks"> </span>
							</div>
						</div>
					</div>
					<div class="audio-btn">
						<div class="audio-select">
							<div class="audio-prev"></div>
							<div class="audio-play"></div>
							<div class="audio-next"></div>
							<div class="audio-menu"></div>
							<div class="audio-volume"></div>
						</div>
						<div class="audio-set-volume">
							<div class="volume-box">
								<i><span></span></i>
							</div>
						</div>
						<div class="audio-list">
							<div class="audio-list-head">
								<p>播放列表</p>
								<span class="menu-close">关闭</span>
							</div>
							<ul class="audio-inline">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
angular.bootstrap(document.getElementById("my_music"), ["albumApp"]);
</script>
</html>