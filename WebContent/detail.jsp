<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
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
						<li>
							 <a href="Login">返回主页</a>
						</li>

					</ul>
					<form class="navbar-form navbar-left" role="search" action = "Search">
						<div class="form-group">
							<input class="form-control" type="text" name="username" placeholder="请输入作者名"/>
						</div> <button class="btn btn-default" type="submit">Search</button>
					</form>

				</div>
				
			</nav>
			<div class="jumbotron" >
			
			    <h1>
        <s:property value="username" />详细信息
    </h1>
<table border="1" align="center">
<tr>
    <td>编号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>国家</td>
<tr>
    <%List<String> list0 = (List<String>)session.getAttribute("list0");
    for (int i = 0; i < list0.size(); i++) {
  out.print("<td align=\"center\">"+list0.get(i)+"</td>");
} %>
</tr>
</table>
<h1>书籍详细信息</h1>
<table border="1" align="center" class="table">
<tr>
    <th>ISBN</th>
    <th>书名</th>
    <th>作者编号</th>
    <th>出版社</th>
    
    <th>出版日期</th>
    <th>价格</th>
    <th>修改</th>
    <th>删除</th>
<tr>
    <%List<String> list = (List<String>)session.getAttribute("list");
    for (int i = 0; i < list.size(); i+=6) {
  out.print("<td align=\"center\">"+list.get(i)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+1)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+2)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+3)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+4)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+5)+"</td>");
  out.print("<td align=\"center\"><a href=Gotoedit?isbn="+list.get(i)+"><button type=\"button\">修改</button></a></td>");
  out.print("<td align=\"center\"><a href=Delete?isbn="+list.get(i)+"><button type=\"button\">删除</button></a></td>");
} %>
</tr>
</table>
<a href=Search?username=<%out.print(list0.get(1)); %>>
			
			
			
			</div>
			
		</div>
	</div>
</div>




</body>
</html>