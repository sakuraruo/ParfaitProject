<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ParfaitMusic</title>
		<script src="../js/jquery-3.2.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../css/audio.css">
		<link rel="stylesheet" href="../dist/css/bootstrap.min.css">
		<script src="../js/jquery-3.2.1.min.js"></script>
		<script src="../dist/js/bootstrap.min.js"></script>
		<script src="../js/comments.js"></script>
		<style type="text/css">
			html,
			body {
				width: 100%;
				height: 100%;
			}
			/*非常重要的样式让背景图片100%适应整个屏幕*/
			
			.bg {
				display: table;
				width: 100%;
				height: 100%;
				padding: 100px 0;
				text-align: center;
				color: #fff;
				no-repeat bottom center;
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
			}
			/*-webkit-transition ;-moz-transition*/
			
			.top-nav {
				padding: 0;
				background: #000;
			}
			
			button.navbar-toggle {
				background-color: #fbfbfb;
			}
			/*整个背景都是transparent透明的，会看不到，所以再次覆盖一下*/
			
			button.navbar-toggle>span.icon-bar {
				background-color: #dedede
			}
		</style>
		<style type="text/css">
			.clear {
				overflow: hidden;
				clear: both;
				width: 0px;
				height: 0px;
			}
			
			.imgbox {
				width: 640px;
				margin: 0 auto;
				text-align: center;
			}
			
			ul {
				padding: 0px;
				margin: 0px;
			}
			
			#banner_img ul li {
				float: left;
				list-style: none;
			}
			
			ul li.select {
				display: block;
			}
			
			.imgnum span {
				border-radius: 10px;
				font: normal normal bold 12px/15px 微软雅黑;
				color: #FFF;
				margin-left: 5px;
				padding: 3px 6px 3px 6px;
				background-color: #F90;
				cursor: pointer;
			}
			
			.imgnum span.onselect {
				background-color: #F00;
			}
			
			.imgnum {
				text-align: center;
				float: right;
				margin: -30px 30px;
				position: relative;
			}
		</style>
	</head>

	<body>
		<!--<div style="height: 100px; border: 1px solid;">-->
		<nav class="navbar navbar-fixed-top my-navbar top-nav" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a><img height="50px" src="../img/Theme/Parfait_logo.png" /></a>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">  
                    <span class="sr-only">切换导航</span>  
                    <span class="icon-bar"></span>  
                    <span class="icon-bar"></span>  
                    <span class="icon-bar"></span>  
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
					<li class="active" id="themeChange"><a>主题切换</a>

					</li>
				</ul>
					<div class="input-group" style="margin-top: 11px;margin-left: 600px;">
						<div class="input-group-btn">
							<button id="searchFor" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">单曲<span class="caret"></span></button>
							<ul class="dropdown-menu" style="width: 76px;">
								<li><i style="color: #0F0F0F;">单曲</i></li>
								<li><i style="color: #0F0F0F;">专辑</i></li>
								<li><i style="color: #0F0F0F;">歌单</i></li>
								<!--<li role="separator" class="divider"></li>
          <li><a href="#">Separated link</a></li>-->
							</ul>
						</div>
						<input type="text" class="form-control" aria-label="..." style="width: 200px;height: 34px;">
					</div>
				</div>

			</div>
		</nav>
		<div class="bg" style="height: 638px;">
			<div id="my_music" style="height: 502px;margin-left: 180px;margin-right:180px;">
				<div style="float:left;padding:3px; PADDING:0px; width:828px;height: 500px;margin-left: 60px;  OVERFLOW:auto;overflow-x: hidden;  ">
					<!--轮播图效果 STRART-->
					<div class="imgbox">
						<ul id="banner_img">
							<li><img src="../CarouselReference/img/ca1.jpg" /></li>
							<li><img src="../CarouselReference/img/ca2.jpg" /></li>
							<li><img src="../CarouselReference/img/ca3.jpg" /></li>
							<li><img src="../CarouselReference/img/ca4.jpg" /></li>
							<li><img src="../CarouselReference/img/ca5.jpg" /></li>
						</ul>
						<div class="clear"></div>
						<div class="imgnum">
							<span class="onselect">1</span>
							<span>2</span>
							<span>3</span>
							<span>4</span>
							<span>5</span>
						</div>
					</div>
					<script type="text/javascript">
						var time = "";
						var index = 1;
						$(function() {
							showimg(index);
							//鼠标移入移出
							$(".imgnum span").hover(function() {
								clearTimeout(time);
								var icon = $(this).text();
								$(".imgnum span").removeClass("onselect").eq(icon - 1).addClass("onselect");
								$("#banner_img li").hide().stop(true, true).eq(icon - 1).fadeIn("slow");
							}, function() {
								index = $(this).text() > 4 ? 1 : parseInt($(this).text()) + 1;
								time = setTimeout("showimg(" + index + ")", 3000);
							});
						});

						function showimg(num) {
							index = num;
							$(".imgnum span").removeClass("onselect").eq(index - 1).addClass("onselect");
							$("#banner_img li").hide().stop(true, true).eq(index - 1).fadeIn("slow");
							index = index + 1 > 5 ? 1 : index + 1;
							time = setTimeout("showimg(" + index + ")", 3000);
						}
					</script>

					<!--轮播图效果 END-->

					<div style="height: 35px;margin-top: 20px;color: #000000;float: left;margin-left: 80px;">
						<h3 style="float: left;margin-left: 36px;">
   						<span>热门推荐</span>
   					</h3>

						<HR style="background-color: #F10B0B;width: 729px;height:5px;size: a4;">
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
					<a>关于Parfait音乐</a>
					<span class="line">|</span>
					<a>客户服务</a>
					<span class="line">|</span>
					<a>服务条款</a>
					<span class="line">|</span>
					<a>网站导航</a>
					<span class="line">|</span>
					<a>意见反馈</a>
					<span class="line">|</span>
				</p>
				<p>

					<a hidefocus="true"><img src="../img/Theme/wa2s.png" />
						<span>||</span> 中国白学院运营
					</a>

				</p>
				<p>
					<a hidefocus="true"><img src="../img/Theme/wa2_tv.png">
						<span>||  </span> sakuraruo版权所有@2017-2018
					</a>
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
								<i class="audio-this-setbacks">
								<span class="audio-backs-btn"></span>
							</i>
								<span class="audio-cache-setbacks">
							</span>
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

	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="../js/audio.js"></script>
	<script type="text/javascript">
		$(function() {
			var song = [{
				'cover' : '/coverInfo?coverId=1&width=200&height=200',
				'src' : '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/Answer.mp3',
				'title' : 'Answer'
			}
			];

			var audioFn = audioPlay({
				song: song,
				autoPlay: true //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
			});

			/* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
			audioFn.newSong({
				'cover' : '/coverInfo?coverId=7&width=200&height=200',
				'src' : '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/WHITE ALBUM.mp3',
				'title' : 'WHITE ALBUM'
			}, false);

			/* 暂停播放 */
			//audioFn.stopAudio();

			/* 开启播放 */
			//audioFn.playAudio();

			/* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
			//audioFn.selectMenu(3,true);

			/* 查看歌单中的曲目 */
			//console.log(audioFn.song);

			/* 当前播放曲目的对象 */
			//console.log(audioFn.audio);
		});
	</script>

</html>