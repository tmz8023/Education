<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE>
<html>
<head>
	<script type="text/javascript" src="resource/framework/js/jquery.min.js"></script>
	<link rel="stylesheet" href="resource/framework/css/bootstrap.css" type="text/css"></link>
	<script type="text/javascript" src="resource/framework/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<table id="tb" class="table table-hover">
			<tr><td>序号</td><td>账号</td></tr>
		</table>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$.ajax({
			type : "post",
			url : "/Edusystem/register/getUser.do",
			datatype : "json",
			success : function(data){
				for(var i=0;i<data.length;i++){
					$("#tb").append("<tr><td>"+data[i].id+"<td>"+data[i].username+"</td>"+"</td></tr>");
				}
			}
		})
	})
</script>
</html>
