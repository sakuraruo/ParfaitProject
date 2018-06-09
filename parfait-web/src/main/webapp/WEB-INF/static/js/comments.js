$(function(){
	/*var id = $("#albumId").val();;
	alert(id);*/
	$("#comments_test").keyup(function(){
		var len=$(this).val().length;
		if(len>79){
			$(this).val($(this).val().substring(0,79));
		}
		var num=80-len;
		$("#wordrest").text(num);
	});

});
