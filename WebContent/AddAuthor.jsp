<%@ page contentType="text/html; charset=UTF-8"
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
			
			<div class="jumbotron" ">
			<h1>
					请先添加作者
			</h1>
			<form  action="Addauthor" >
				<div class="form-group">
					 <label for="exampleInputPassword1">AuthorID</label><input name="authorid" class="form-control" id="exampleInputPassword1" type="text" />
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1">Name</label><input name="name" class="form-control" id="exampleInputEmail1" type="text" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Age</label><input name="age" class="form-control" id="exampleInputPassword1" type="text" />
				</div>
				<div class="form-group">
				<label for="exampleInputPassword1">Country</label><input name="country" class="form-control" id="exampleInputPassword1" type="text" />
				</div>
				<button class="btn btn-default" type="submit">Submit</button>
			</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>