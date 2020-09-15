<?php 


//connect to a database
$conn = mysqli_connect('localhost',"root","","ajax_test");


echo "Processing ...";

//Check for get Variable
if(isset($_GET['name'])){
	echo "GET: Your name is " . $_GET['name'];
}

//Check for post variable
if(isset($_POST['name'])){
	//echo "Hello World";
	echo "POST: Your name is " . $_POST['name'];
	$name=mysqli_real_escape_string($conn, $_POST['name']);

	$query = "INSERT INTO users(name) 
			  VALUES('$name') ";

	if(mysqli_query($conn, $query)){
		echo "User Added...";
	}else{
		echo "Error ". mysqli_error;
	}
	
}

