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
					salary: 5000,
					salaryc: 7000
				},

				{
					fname : "rahul",
					lname : "yadav",
					salary: 6000,
					salaryc: 7000
				},

				{
					fname : "dinesh",
					lname : "yadav",
					salary: 7000,
					salaryc: 7000
				} ];
				$scope.employees = employees;
				$scope.rowlimit=2;
			});
</script>

</head>
<body ng-controller="control">
<input type="number" step="1" min="0" max="5" ng-model="rowlimit">
<table>
<tr>
<td>fname</td>
<td>lname</td>
<td>salary</td>
<td>curr sal</td>
</tr>
<!-- <tr ng-repeat="emp in employees  | orderBy : 'salary' :true"> -->
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
					salary: 5000,
					salaryc: 7000
				},

				{
					fname : "rahul",
					lname : "yadav",
					salary: 6000,
					salaryc: 7000
				},

				{
					fname : "dinesh",
					lname : "yadav",
					salary: 7000,
					salaryc: 7000
				} ];
				$scope.employees = employees;
				$scope.rowlimit=2;
			});
</script>

</head>
<body ng-controller="control">
<input type="number" step="1" min="0" max="5" ng-model="rowlimit">
<table>
<tr>
<td>fname</td>
<td>lname</td>
<td>salary</td>
<td>curr sal</td>
</tr>
<!-- <tr ng-repeat="emp in employees  | orderBy : 'salary' :true"> -->
<tr ng-repeat="emp in employees  | orderBy : '+salary' ">
<td>{{emp.fname | uppercase }}</td>
<td>{{emp.lname }}</td>
<td>{{emp.salary | number}}</td>
<td>{{emp.salaryc | currency:"$"}}</td>
</tr>
</table>
</body>
</html>
<td>{{emp.fname | uppercase }}</td>
<td>{{emp.lname }}</td>
<td>{{emp.salary | number}}</td>
<td>{{emp.salaryc | currency:"$"}}</td>
</tr>
</table>
</body>
</html>