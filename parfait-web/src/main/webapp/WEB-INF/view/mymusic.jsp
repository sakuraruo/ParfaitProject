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
        html, body {width:100%;height:100%;} /*非常重要的样式让背景图片100%适应整个屏幕*/  
        .bg {display: table;width: 100%;height: 100%;padding: 100px 0;text-align: center;color: #fff; no-repeat bottom center;background-color: #000;background-size: cover;background-image: url(../img/Theme/mymusic_bg.jpg);}  
        .my-navbar {padding:20px 0;transition: background 0.5s ease-in-out, padding 0.5s ease-in-out;}  
        .my-navbar a{background:transparent !important;color:#fff !important}  
        .my-navbar a:hover {color:#45bcf9 !important;background:transparent;outline:0}  
        .my-navbar a {transition: color 0.5s ease-in-out;}/*-webkit-transition ;-moz-transition*/  
        .top-nav {padding:0;background:#000;}  
        button.navbar-toggle {background-color:#fbfbfb;}/*整个背景都是transparent透明的，会看不到，所以再次覆盖一下*/  
        button.navbar-toggle > span.icon-bar {background-color:#dedede}  
    </style> 
</head>
<body>
	<!--<div style="height: 100px; border: 1px solid;">-->
		<nav class="navbar navbar-fixed-top my-navbar top-nav" role="navigation">  
        <div class="container-fluid">  
            <div class="navbar-header">
            	<a><img height="50px" src="../img/Theme/Parfait_logo.png"/></a>
                <button type="button" class="navbar-toggle" data-toggle="collapse"  
                        data-target="#example-navbar-collapse">  
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
   	<div id="my_music" style="height: 502px;border: 1px solid #d3d3d3;margin-left: 180px;margin-right:180px;">
   		<!--个人歌单-->
   		<div  style="float:left;border:1px solid ;padding:3px; PADDING:0px; width:258px;height: 500px;  OVERFLOW:auto;overflow-x: hidden;  ">
   			<!--创建的歌单-->
   			<div id="create_song_list" class="row">
   			<h2>
   			
   			<span>
   				<i class="glyphicon glyphicon-menu-right"></i>
   				<i>创建的歌单</i>
   				   			<a hidefocus="true">
   				<button class="btn btn-default btn-xs">
   					
   						<i class="glyphicon glyphicon-plus"></i>
   				
   				</button>
   			</a>
   			</span>
   			
   			</h2>
   			<div class="song_list-item ">
   				<ul>
   					<li>
   						<div class="item-left">
   							<div class="left">
   								<a hidefocus="true" style="float: left;margin-left: 20px;">
   									<img src="http://p1.music.126.net/gAuQOZnWAj6rXgSnzrF2MA==/18930291695457509.jpg?param=40y40" alt="">
   								</a>
   							</div>
   						</div>
   						<p>
   							<a>nieR:AutoMata</a>
   						</p>
   						<p>
   							<i hidefocus="true">137首by ogiso setsuna</i>
   						</p>
   					</li>
   					<li>
   						<div class="item-left">
   							<div class="left">
   								<a hidefocus="true" style="float: left;margin-left: 20px;">
   									<img src="http://p1.music.126.net/AYACT-x_Y_Tlhq1Iy5bLaQ==/7703178464485055.jpg?param=40y40" alt="">
   								</a>
   							</div>
   						</div>
   						<p>
   							<a>White Album2音乐集</a>
   						</p>
   						<p>
   							<i hidefocus="true">137首by ogiso setsuna</i>
   						</p>
   					</li>
   					<li></li>
   					<li></li>
   					<li></li>
   				</ul>
   			</div>
   			</div>
   			<!--收藏的歌单-->
   			<div id="collect_song-list"></div>
   			<h2>
   				
   			<span>
   				<i class="glyphicon glyphicon-menu-right"></i>
   				<i>收藏的歌单</i>
   				<a>
   				<button class="btn btn-default btn-xs" hidden="hidden">
   					
   						<i class="glyphicon glyphicon-plus"></i>
   				
   				</button>
   			</a>
   			</span>
   			</h2>
   		</div>
   		<!--歌单详情 包括歌单介绍 歌单歌曲 以及歌单评论-->
   		<div style="float:right;border:1px solid ;padding:3px; PADDING:0px; width:703px;height: 500px;  OVERFLOW:auto;overflow-x: hidden;  ">
   			<!--歌单详细-->
   			<div id="song_list_detail" style="height: 315px;">
   				<div>
   					<div style="height: 238px;">
   						<div style="width: 208px;height: 208px;margin-left: 36px; margin-top: 10px;padding: 4px 4px 4px 4px;float: left;">
   							<img id="flag_cover" src="http://p1.music.126.net/gAuQOZnWAj6rXgSnzrF2MA==/18930291695457509.jpg?param=200y200" style="padding: 2px 2px 2px 2px;border: 2px #9D9D9D solid;">
   						</div>
   						<div style="width: 400px;height: 208px;margin-right: 30px;margin-top: 10px; padding: 2px 2px 2px 2px;float: right;">
   							<div style="height: 24px;width: 100%;margin-top: 10px;">
   								<button style="float: left;" class="btn btn-danger">
   									<span class="glyphicon glyphicon-tags"></span>
   									歌单
   								</button>
   								<h2>NieR:Automata(尼尔2：机械纪元)</h2>
   							</div>
   							<div style="height: 35px;width: 100%;margin-top: 20px;">
   								<a style="float: left;">
   									<img src="http://p1.music.126.net/GXCYPFKU0sDbIAg56qANtg==/18694996208922717.jpg?param=35y35">
   								</a>
   									<span style="float: left;margin-left: 10px;margin-top: 5px;"><a>Try-white</a></span>
   									<span style="float: left;margin-left: 15px;margin-top: 5px;"><a style="color: #000000;text-decoration: none;">2017-3-20创建</a></span>
   							</div>
   							<div style="height: 31px;width: 100%;margin-top: 10px;">
   								<button class="btn btn-primary" style="float:left">
   									<em class="glyphicon glyphicon-play"></em>播放
   								</button>
   								<button class="btn btn-default" style="float: left;margin-left: 10px;">
   									<em class="glyphicon glyphicon-folder-open"></em>
   									<a style="text-decoration: none;">收藏</a>
   								</button>
   								<button class="btn btn-default" style="float: left;margin-left: 10px;">
   									<em class="glyphicon glyphicon-share"> </em>
   									<a style="text-decoration: none;">分享</a>
   								</button>
   								<button class="btn btn-default" style="float: left;margin-left: 10px;">
   									<em class="glyphicon glyphicon-download-alt"> </em>
   									<a style="text-decoration: none;">下载</a>
   								</button>
   								<button class="btn btn-default" style="float: left;margin-left: 10px;">
   									<em class="glyphicon glyphicon-edit"> </em>
   									<a style="text-decoration: none;">评论</a>
   								</button>
   							</div>
   							<div style="height: 35px;width: 100%;margin-top: 20px;float: left;color: #000000;">
   								<b style="float: left;">标签：</b>
   								<a class="btn btn-primary btn-lg active btn-xs" style="float: left;">acg</a>
   							</div>
   							<p style="float:left;color: #000000;">
   								<b style="float: left;">介绍：</b>
   								WHITE ALBUM2 相关音乐
   							</p>
   						</div>
   					</div>
   				</div>
   				<div style="height: 35px;margin-top: 20px;color: #000000;float: left;margin-left: 0px;">
   					<h3 style="float: left;margin-left: 36px;">
   						<span>歌曲列表</span>
   					</h3>
   					
   					<HR style="background-color: #F10B0B;width: 680px;height:5px;size: a4;">
   				</div>
   			</div>
   			<!--歌曲列表-->
   			<div id="song_list">
   				<table id="music_table">
   					<thead>
   					<th >
   						<div style="background: url(../img/footer/table.png) repeat-x 0px 5px ;width: 74px;height: 34px; "></div>
   					</th>
   					<th><div style="background: url(../img/footer/table.png) repeat-x 0px 5px ;width: 283px;height: 34px;text-align: center;color: #000000;margin-left: 2px; ">歌曲标题</div></th>
   					<th><div style="background: url(../img/footer/table.png) repeat-x 0px 5px ;width: 111px;height: 34px;text-align: center;color: #000000;margin-left: 2px;  ">时长</div></th>
   					<th><div style="background: url(../img/footer/table.png) repeat-x 0px 5px ;width: 103px;height: 34px;text-align: center;color: #000000;margin-left: 2px;  ">歌手</div></th>
   					<th><div style="background: url(../img/footer/table.png) repeat-x 0px 5px ;width: 147px;height: 34px;text-align: center;color: #000000;margin-left: 2px;  ">专辑</div></th>
   					</thead>
   					<tbody class="music_table">
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						<tr>
   							<td style="color: #101010;">
   							<div style="margin-top: 4px;">
   								<a style="text-decoration: none;float: left;margin-left: 15px;">1</a>
   								<div style="width: 17px; height: 17px;background: url(../img/footer/table.png) repeat-x 0px -103px;float: left;margin-left: 30px;"></div>
   							</div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>White Album</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>05:05</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>冬馬かずさ</a></div>
   						</td>
   						<td>
   							<div style="float: left;color: #0F0F0F;text-align: center;width: 100%;height: 100%;"><a>WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～</a></div>
   						</td>
   						</tr>
   						
   					</tbody>
   				</table>
   			</div>
   			<!--评论-->
   			<div id="comments">
   				<div>
   				<h3 style="float: left;margin-left: 36px;color: #000000;">
   						<span>评论</span>
   					</h3>
   				<HR style="background-color: #F10B0B;width: 680px;height:5px;size: a4;">
   				</div>
   				<div>
   					<div>
   						<div style="float: left;margin-left: 15px; margin-right: 5px;">
   							<img src="http://p3.music.126.net/y7GLjwWPu1yI73U_pkEiiQ==/109951163060280393.jpg?param=50y50">
   						</div>
   						<div style="float: left;"> 
   							<div><textarea id="comments_test" placeholder="评论" style="width: 614px;height: 63px;resize: none;color: #0F0F0F;"></textarea></div>
   							<div style="float: right;">
   								<span id="wordrest">80</span>
   								<button type="button" class="btn btn-primary btn-xs">提交</button></div>
   						</div>
   					</div>
   					<div style="float: left;margin-left: 16px;text-align: left;">
   						<h5>最新评论</h5>
   						<HR style="background-color: #0F0F0F;width: 680px;height:2px;size: a4;">
   					</div>
   					<div style="float: left;margin-left: 16px;text-align: left;">
   						<div>
   							<div style="width: 616px;">
   								<div style="float: left;margin-left: 15px; margin-right: 5px;">
   									<img src="http://p1.music.126.net/abFiFeTbbQCj6XEYnFGwew==/3393092907441831.jpg?param=50y50">
   								</div>
   								<div style="float: left;width: 546px;">
   									<div>
   										<a>Sakuraruo:</a>
   										我永远喜欢小木曾雪菜.jpg我永远喜欢小木曾雪菜.jpg我永远喜欢小木曾雪菜.jpg我永远喜欢小木曾雪菜.jpg我永远喜欢小木曾雪菜.jpg.....
   										</div>
   									<div>
   										<textarea style="width: 100%;background-color: #666;resize: none;" >   rigako:我永远喜欢夏海里伽子.jpg</textarea>
   									</div>
   									<div style="float: left;width: 546px;">
   										<div style="float: left;">2月15日   02:52</div>
   										<a style="float: right;" class="glyphicon glyphicon-thumbs-up">
   											(999)
   										</a>
   									</div>
   								</div>
   							</div>
   							<div style="float: left;text-align: left;"><HR style="border:1 dashed #987cb9;" width="680px" color=#987cb9 SIZE=1></div>
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
				<span>||</span>
				中国白学院运营</a>
				
			</p>
			<p><a hidefocus="true"><img src="../img/Theme/wa2_tv.png">
			<span>||  </span>
			sakuraruo版权所有@2017-2018</a></p>
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
$(function(){
	var song = [
		{
			'cover' : '/coverInfo?coverId=1&width=200&height=200',
			'src' : '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/Answer.mp3',
			'title' : 'Answer'
		}
	];

	var audioFn = audioPlay({
		song : song,
		autoPlay : true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	/* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
	audioFn.newSong({
		'cover' : '/coverInfo?coverId=7&width=200&height=200',
		'src' : '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/WHITE ALBUM.mp3',
		'title' : 'WHITE ALBUM'
	},false);

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