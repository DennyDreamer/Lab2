<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>
<body style="background-image:url(wallhaven-567961.png)"/>。

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="Gotoadd">添加书籍</a>
						</li>

					</ul>
					<form class="navbar-form navbar-left" role="search" action = "Search">
						<div class="form-group">
							<input class="form-control" type="text" name="username" placeholder="请输入作者名"/>
						</div> <button class="btn btn-default" type="submit">Search</button>
					</form>

				</div>
				
			</nav>
			<div class="jumbotron" ">
			    <h1>该作家作品</h1>
    <h2>
        <s:property value="username" />作品：
    </h2>
    <center>书籍名称</center>
<table border="1" align="center" >
    <%List<String> list = (List<String>)session.getAttribute("list");
    String username = (String)session.getAttribute("username");
    for (int i = 0; i < list.size(); i++) {
  out.print("<td align=\"center\"><a href=Detail?title="+list.get(i)+"&username="+username+">"+list.get(i)+"</td>");
} %>
</tr>
</table>
</div>
		</div>
	</div>
</div>

</body>
</html>