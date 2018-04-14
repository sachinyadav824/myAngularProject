myapp.filter("fname",function(){
	return function(fname)
	{
		switch(fname)
		{
		case "sachin" :
			return "sachin";
		case "rahul" :
			return "dineshyadav";
		case "dinesh" :
			return "rahul";
		case "" :
			return "no found";
		}
	}
});