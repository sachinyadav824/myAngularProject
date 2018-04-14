<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.js"></script>
<script type="text/javascript">
var myapp=angular
.module("myapp",[])
.controller("controlCon",function()
		{
	this.name="india";
		}).controller("controlSt",function()
				{
			this.name="madhya pradesh";
				}).controller("controlCi",function()
						{
					this.name="indore";
						});
/* .controller("controlCon",function($scope)
		{
	$scope.name="india";
		}).controller("controlSt",function($scope)
				{
			$scope.name="madhya pradesh";
				}).controller("controlCi",function($scope)
						{
					$scope.name="indore";
						}); */
</script>		
</head>
<body >
<div ng-controller="controlCon  as con">
{{con.name}}
<div ng-controller="controlSt as st">
{{con.name}}---{{st.name}}
<div ng-controller="controlCi as ci">
{{con.name}}---{{st.name}}---{{ci.name}}
</div>
</div>
</div>
</body>
</html>