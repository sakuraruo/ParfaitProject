/**
 * singles.jsp数据绑定、请求所在
 */

var albumapp = angular.module("singleApp", []);
albumapp.controller("singlecontroller",function($scope,$http){
	
	
	var singlesInfo=null;
	$scope.SingleLyric=null;
	console.log($scope.SingleLyric);
	var id = $("#singleId").val();
	//ajax请求单曲信息。
	$http({
		params:{"singleId":id},
	    method: 'GET',
	    url: '/singleDetail'
	}).then(function successCallback(response) {
		$scope.SingleInfo=response.data;
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});
	
	$http({
		params:{"singlesId":id},
	    method: 'GET',
	    url: '/LyricInfo'
	}).then(function successCallback(response) {
		$scope.SingleLyric=null;
		$scope.SingleLyric=response.data;
		console.log($scope.SingleLyric);
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});
	//ajax请求专辑歌词信息。
	/*$http({
		params:{"singleId":id},
	    method: 'GET',
	    url: '/singlesInfo'
	}).then(function successCallback(response) {
		$scope.singlesInfo=response.data;
	    }, function errorCallback(response) {
	    	alert("出错了！");
	});*/
	
});