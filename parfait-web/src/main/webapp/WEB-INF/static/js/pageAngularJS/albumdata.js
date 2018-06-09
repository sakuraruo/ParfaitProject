/**
 * album.jsp数据绑定、请求所在
 */
document.write("<script type='text/javascript' src='../js/audio.js'></script>");
var audioFn=null;
var song=null;
var userId=null;
$(function(){
	 var song = [
		
		{
			'cover' : '/coverInfo?coverId=1&width=200&height=200',
			'src' : '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/Answer.mp3',
			'title' : 'Answer'
		}
	]; 

	 audioFn = audioPlay({
		song : song,
		autoPlay : true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	/* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
	/*audioFn.newSong({
		'cover' : '../img/footer/cover4.jpg',
		'src' : 'http://so1.111ttt.com:8282/2016/5/06m/06/199061931237.m4a?tflag=1494769315&pin=a0b26b2dddd976d74724841f6d2641d6&ip=114.233.172.33#.mp3',
		'title' : '极乐净土 - GARNiDELiA'
	},false);*/
	
	
	/* 
	

	$scope.click=function(num){
		console.log(albumInfo[num]);
	} */

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

var userapp=angular.module("userApp", []);
userapp.controller("usercontroller",function($scope,$http){
	$scope.search=function(e){
		if(e.keyCode==13){
		var type=$("#searchFor").attr("selectValue");
		var msg=$(".searchInfo").val();
		window.location.href="/search?type="+type+"&msg="+msg;
		/*//请求跳转search页面
		$http({
			params:{"type":type,"msg":msg},
		    method: 'GET',
		    url: '/search'
		}).then(function successCallback(response) {
			windows.location.href("/search");
		    }, function errorCallback(response) {
		    	alert("出错了！");
		});*/
		}
	}
	//请求用户信息
	$http({
	    method: 'GET',
	    url: '/getUserInfo'
	}).then(function successCallback(response) {
		$scope.userInfo=response.data;
		userId=$scope.userInfo.userId;
		//通过用户id查询用户封面id
		$http({
			params:{"userId":userId},
		    method: 'GET',
		    url: '/findUserById'
		}).then(function successCallback(response) {
			$scope.user=response.data;
			}, function errorCallback(response) {

		});
		
		}, function errorCallback(response) {
	    	alert("出错了！");
	});
	
	
	
	
});

var albumapp = angular.module("albumApp", []);
albumapp.controller("albumcontroller",function($scope,$http){
	
	
	//专辑信息
	var albumInfo=null;
	//专辑对应单曲 信息
	var singlesInfo=null;
	var id = $("#albumId").val();
	//ajax请求专辑信息。
	$http({
		params:{"albumId":id},
	    method: 'GET',
	    url: '/albumInfo'
	}).then(function successCallback(response) {
		$scope.albumInfo=response.data;
		if($scope.albumInfo.albumId==null){
			window.location.href="/errorpage";
		}
		$scope.albumInfo.publishTime=$scope.albumInfo.publishTime.toString().substring(0,10);
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});
	
	//ajax请求专辑单曲信息。
	$http({
		params:{"albumId":id},
	    method: 'GET',
	    url: '/singlesInfo'
	}).then(function successCallback(response) {
		$scope.singlesInfo=response.data;
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});
	
	//请求评论信息
	$http({
		params:{"albumId":id},
	    method: 'GET',
	    url: '/findComments'
	}).then(function successCallback(response) {
		$scope.commentsInfo=response.data;
		console.log($scope.commentsInfo);
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});
	$scope.over=function(num){
		$(".ply-icon"+num).css("background","url(../img/footer/table.png) repeat-x 0px  -128px");
	}
	$scope.leave=function(num){
		$(".ply-icon"+num).css("background","url(../img/footer/table.png) repeat-x 0px  -105px");
	}
	$scope.ply=function(num){
		//获取单曲的coverpath
		/*$http({
			params:{"coverId":$scope.singlesInfo[num].coverId,"width":"80","height":"80"},
		    method: 'GET',
		    url: '/cover'
		}).then(function successCallback(response) {
			cover=response.data.coverPath;
		    }, function errorCallback(response) {
		    	alert("出错了！");
		});*/
		/* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
		audioFn.newSong({
			'cover' : '/coverInfo?coverId='+$scope.singlesInfo[num-1].coverId+'&width=200&height=200',
			'src' : $scope.singlesInfo[num-1].singlesPath,
			'title' : $scope.singlesInfo[num-1].singlesName
		},true);
	}
});




