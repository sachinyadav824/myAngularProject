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
.controller("controlRedCol",function($scope,$rootScope)
		{
	$scope.redname="india";
	$rootScope.rootname="world";
		}).controller("controlGreCol",function($scope)
				{
			$scope.grename="us";
				});
</script>						
</head>
<body>
<div ng-controller="controlRedCol">
{{redname}}
{{rootname}}
<span style="color:red" ng-show="grename==undefined">
grename is undefined</span>
</div>
<div ng-controller="controlGreCol">
<span style="color:red" ng-show="redname==undefined">
redname is undefined</span>
{{rootname}}
{{grename}}
</div>
</body>
</html>