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
					age : 27,
					address : [ {
						city : "indore",
						pincode : 455001
					}, {
						city : "dewas",
						pincode : 455001
					} ]
				},

				{
					fname : "sachin",
					lname : "yadav",
					age : 27,
					address : [ {
						city : "indore",
						pincode : 455001
					}, {
						city : "dewas",
						pincode : 455001
					} ]
				},

				{
					fname : "sachin",
					lname : "yadav",
					age : 27,
					address : [ {
						city : "indore",
						pincode : 455001
					}, {
						city : "dewas",
						pincode : 455001
					} ]
				} ];
				$scope.employees = employees;

			});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-controller="control">
<table>
<thead>
<tr>
<th>fname</th><th>lname</th><th>age</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="emp in employees" ng-init="parent=$index">

<td >{{emp.fname}}{{index=$index}}</td><td>{{emp.lname}}</td><td>{{emp.age}}</td>
<td ng-repeat="cit in emp.address ">
{{index=$index}}-"parent index"={{parent}}
{{cit.city}} {{cit.pincode}}
</td>
</tr>
</tbody>
</table>
</body>
</html>