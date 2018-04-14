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
.controller("control",function($scope,$http,$log)
		{
	     $http({
	    	 method:'GET',
	    	 url: "http://localhost:8080/RestApplication/webapi/service/4get/1"
	     }).then(function(response){
	    	 $log.info(response);
	    	 $scope.employees = response.data; 
	    	 
	     },function(reason){
	    	 $scope.error=reason.data;
	    	 $log.info(reason);
	     });
			/* $http.get("http://localhost:8080/RestApplication/webapi/service/get/1")
			     .then(function(response){
			    	 $scope.employees = response.data; 
			     })
				 	 */
				 	/*$scope.jspview="hideandshow.jsp"; */
			});
</script>

</head>
<body ng-controller="control">
<!-- <div ng-include="jspview"></div> -->
{{error}}
{{employees}}
</body>
</html>