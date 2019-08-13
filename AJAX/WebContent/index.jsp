<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一个 AJAX</title>
<script src="jquery/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="#" id="form" onsubmit=" return false">
	<input type="text" id="input" onblur="on()">
<!-- 	<button onclick="on()">点我试试</button> -->
	<i id="i"></i>
	<input type="submit" value="sub">
</form>	
	
	<script type="text/javascript">
	function on(){
		/* var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4&xmlhttp.status==200){
				document.getElementById("i").innerHTML=xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET","BController?id=123&name=admin");
		xmlhttp.send(); */
		
//		$.post("BController?id=123&name=admin");
		
		$.post({
			url:"BController",
			data:{
				id:957,
				name:$("#input").val()
			},
			success:function(data){            //成功时执行
				if(data=="1"){
					$("#i").text("账号已经注册");
				}else{
					$("#i").text("账号可以使用");
				}

			},
			error:function(XMLHttpRequest,textStatus,errorThrown){  //错误时执行
				alert(textStatus);
				alert(errorThrown);
			},
			asybc:false     //asybc默认值是true，是否走AJAX
		})
	}
	
	
	</script>
	
	
</body>
</html>