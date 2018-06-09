
//document.write("<script type='text/javascript' src='../js/angular.min.js'></script>");
//index页面加载事件
var accountapp = angular.module("accountApp", []);
accountapp.controller("accountcontroller",function($scope,$http){
	$(".submitButton").click(function(){
		var accountName=($(".userNameKeyin").val());
		var password=($(".passwordKeyin").val());
		$http({
			params:{"accountName":accountName,"password":password},
		    method: 'GET',
		    url: '/login'
		}).then(function successCallback(response) {
			alert(response.data.result);
		    }, function errorCallback(response) {
		    	alert("出错了！");
		});
    });
});
$(function () {
		var bg=$(".bg");
		bg.css("background",'url(../img/Theme/theme1.jpg) no-repeat bottom center');
		var theme=document.getElementById('themeChange');
		theme.onclick=function(){
			themeCount++;
			bg.css("background",'url(../img/Theme/theme'+themeCount%4+'.jpg) no-repeat bottom center');
		}
		
		
});