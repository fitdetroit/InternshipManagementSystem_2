<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax with Jquery</title>
</head>
<body>
<h1>Ajax with Jquery Simple Example</h1>
<h3>madushankaperera.wordpress.com</h3>
<br>
<form name="form1" method="GET" action="Ajaxexample" id="form1">
<table>
<tr>
<td>Number 1</td><td><input type="text" name="n1" id ="n1"/></td>
</tr>
<tr>
<td>Number 2</td><td><input type="text" name="n2" id ="n2"/></td>
</tr>
<tr>
<td></td><td><input type="submit" value="Calculate"/></td>
</tr>
<tr>
<td>Result</td><td><input type="text" value="" id="result"/></td>
</tr>
</table>
</form>
</body>
</html>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

var form = $('#form1');
form.submit(function () {

$.ajax({
type: form.attr('method'),
url: "Ajaxexample",
data: {n1:$('#n1').val(),n2:$('#n2').val()},
success: function (data) {
var result=data;

if(result == 1){
	
	$('#result').attr("value","yes");
	
}
else{
	
	$('#result').attr("value","no");
}

}
});

return false;
});
</script>
