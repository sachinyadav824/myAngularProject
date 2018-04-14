<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myapp">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.js"></script>
<script type="text/javascript">
var myapp=angular
.module("myapp",[])
.controller("control",function($scope)
		{
			
			
	var employees = [ {
					fname : "sachin",
					lname : "yadav",
					salary : 2700
					
				},

				{
					fname : "sachin",
					lname : "yadav",
					salary : 1500
					
				},

				{
					fname : "sachin",
					lname : "yadav",
					salary : 1300
					
				} ];
				$scope.employees = employees;

			});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-controller="control">
hide name :<input type="checkbox" ng-model="hidefname">
show name :<input type="checkbox" ng-model="showfname">
<table>
<tr>
<td>fname</td>
<td>lname</td>
<td ng-show="showfname" ng-hide="!hidefname">salary</td>

</tr>
<tr ng-repeat="emp in employees  ">
<td>{{emp.fname | uppercase }}</td>
<td>{{emp.lname }}</td>
<td ng-show="showfname" ng-hide="!hidefname">{{emp.salary | number}}</td>

</tr>

</table>

</body>
</html>