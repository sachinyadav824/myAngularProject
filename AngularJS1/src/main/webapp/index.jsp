<html ng-app="myapp">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.js"></script>
<script type="text/javascript">
/* var myapp=angular.module("myapp",[]);
/* var control=function($scope)
{
   $scope.name=12;	
}
myapp.controller("control",control); */
/*myapp.controller("control",function($scope){
	var employee = {
		fname:"sachin",
		lname:"yadav",
		age : 27
	};
	$scope.employee=employee;
	$scope.name=12;
}); */
var myapp=angular
				.module("myapp",[])
				.controller("control",function($scope)
						{
							var country = {
								name :"india",
								capital : "delhi",
								image : "image/abc.png"
							};
							var employee={
									fname :"sachin",
									lname : "yadav",
									age : 27
							};
							$scope.employee=employee;
							$scope.name=12;
							$scope.country=country;
							$scope.msg="my name is ?";
						});
</script>
<body  ng-controller="control">

<input type="text" ng-model="employee.fname">
<input type="text" ng-model="employee.lname">
<input type="text" ng-model="employee.age">
<br>
{{employee.fname}}

{{employee.lname}}
{{employee.age}}









<!-- <h2>{{[1,2,3,4,5][3]}}</h2>
<h2>{{name*12}}</h2>
<h2>{{employee.fname}}</h2>
<h2>{{employee.lname}}</h2>
<h2>{{employee.age}}</h2>
<h2>{{country.name}}</h2>
<h2>{{country.capital}}</h2>
<img src="{{country.image}}" 
alt="{{country.name}}"
width="200px" height="200px"/>
<img ng-src="{{country.image}}" 
alt="{{country.name}}"
width="200px" height="200px"/> -->
</body>
</html>
