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
.controller("control",function($scope)
		{
			
			
	var employees = [ {
					fname : "sachin",
					lname : "yadav",
					like : 0,
					dislike:0
				},

				{
					fname : "rahul",
					lname : "yadav",
					like : 0,
					dislike:0
					
				},

				{
					fname : "dinesh",
					lname : "yadav",
					like : 0,
					dislike:0
					
				} ];
				$scope.employees = employees;
				$scope.likess=function(name)
				{
					name.like++;
				};
				$scope.dislikess=function(name)
				{
					name.dislike++;
				};
			});
</script>

</head>
<body ng-controller="control">
<table>
<tr>
<td>fname</td>
<td>lname</td>
<td>like</td>
<td>dislike</td>
</tr>
<tr ng-repeat="emp in employees">
<td>{{emp.fname}}</td>
<td>{{emp.lname}}</td>
<td>{{emp.like}}</td>
<td>{{emp.dislike}}</td>
<td>
<input type="button" ng-click="likess(emp)" value="likes">
</td>
<td>
<input type="button" ng-click="dislikess(emp)" value="dislikes">
</td>
</tr>
</table>
</body>
</html>