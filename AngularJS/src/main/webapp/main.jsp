<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.js"></script>
<script type="text/javascript"
	src="https://code.angularjs.org/1.6.9/angular-route.js"></script>
<script type="text/javascript">
var myapp=angular
.module("myapp",["ngRoute"])
.config(function($routeProvider,$locationProvider){
	$routeProvider.when("/topbottom",
			{
		
		/* template:"<h1>this is inline template</h1>", */
		templateUrl:"topbottom.jsp",
	  controller:"topbottomCon",
	  controllerAs:"top",
	  caseInsensitiveMatch:true,
	  resolve: { emplist : function(){
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
			return employees;
	  }
	  }
		}).when("/likedislike",{
		  templateUrl:"like_dislike.jsp",
		  controller:"likedislikeCon"
		}).when("/hideshow/:id",{
			  templateUrl:"hideandshow.jsp",
			  controller:"showhideCon"
			});/* .otherwise({
				redirectTo:"/topbottom"
			}) */
	$locationProvider.html5Mode(true);
})
.controller("topbottomCon",function($route,$log,emplist)
		{
	        $log.info(emplist[0].fname+emplist[1].fname);
			var gender="male";
	       var vm=this;
	       vm.name="sachin yadav";
			vm.vmview=function()
			{
				$log.info("this is inside");
				vm.gender="female";
				$route.reload();
				
				
			}
			vm.sachin=gender;
		}).controller("likedislikeCon",function($scope,$log)
				{
			      $log.info("like disslike");
				}).controller("showhideCon",function($http,$scope,$route,$log)
						{
					
						$scope.$on("$locationChangeStart",function(event,next,current)
								{
							
								$log.info("locationChangeStart fired");
								$log.info(event);
								$log.info(next);
								$log.info(current);
							});
						$scope.$on("$routeChangeStart",function(event,next,current)
								{
							
								$log.info("routeChangeStart fired");
								$log.info(event);
								$log.info(next);
								$log.info(current);
							});
						/* $rootScope.$on("$locationChangeSuccess",function()
								{
							
								$log.info("locationChangeSuccess fired");
							});
						$rootScope.$on("$routeChangeSuccess",function()
								{
							
								$log.info("routeChangeSuccess fired");
							}); */
					/*  /* $scope.$on("$routeChangeStart",function(event,next,current){ */
						/*  $scope.$on("$locationChangeStart",function(event,next,current){
				    	   if(!confirm("are you navigete to ontehr url"+next)){
				    		   event.preventDefault();
				    	   }
				       }); */
					// $log.info("like disslike*********"+$routeParams.id); */
					 
						});
</script>
<base href="/AngularJS/" />
</head>
<body ng-app="myapp">
	<table border=1 width="50%">
		<tr style="height: 70px;">
			<td colspan="2"></td>
		</tr>
		<tr style="height: 400px;">
			<td>sachin*************{{top.name}} <a href="topboTTom">topbottom</a><br>
				<a href="likedislike">likedislike</a><br> <a href="hideshow/20">hideandshow</a>
			</td>
			<td>
				<div ng-view></div>
			</td>
		</tr>
		<tr style="height: 70px;">
			<td colspan="2"></td>

		</tr>
	</table>
</body>
</html>