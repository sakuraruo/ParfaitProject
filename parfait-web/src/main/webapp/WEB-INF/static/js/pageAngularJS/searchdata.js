/**
 * 搜索页面数据绑定
 */

$(function(){
	var type=$("#type").val();
	var msg=$("#msg").val();

	if(type!=""){
	$("#searchForin").html(type+"<span class='caret'></span>");
	if(msg!=""){
		$(".searchInfo").val(msg);
	}
}
});

var searchapp = angular.module("searchApp", []);
searchapp.controller("searchcontroller",function($scope,$http){
	var type=$("#type").val();
	var msg=$("#msg").val();
	//默认加载请求
	$scope.search=function(){
		if(type=="专辑"){
			$http({
				params:{"albumName":msg},
			    method: 'GET',
			    url: '/searchAlbum'
			}).then(function successCallback(response) {
				$scope.albumesInfo=response.data;
				$scope.albumesInfo.publishTime=String($scope.albumesInfo.publishTime).substring(0,10);
				console.log($scope.albumesInfo);
			    }, function errorCallback(response) {
			    	alert("出错了！");
			});
		}
		else if(type=="单曲"){
			$http({
				params:{"singlesName":msg},
			    method: 'GET',
			    url: '/searchSingle'
			}).then(function successCallback(response) {
				$scope.singlesInfo=response.data;
				console.log($scope.singlesInfo);
			    }, function errorCallback(response) {
			    	alert("出错了！");
			});
		}
	}
	$scope.search();
});
