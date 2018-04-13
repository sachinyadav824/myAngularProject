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
.controller("control",function($scope,myservice)
		{
        	  $scope.num1="sachin";
        	  $scope.numm=myservice.number($scope.num1);
          });
</script>
<script src="js/custom_service.js"></script>
</head>
<body ng-controller="control">
enter number :
<input type="text"  ng-model="num1"/><br>
<input type="text" ng-model="numm"/>
</body>
</html>