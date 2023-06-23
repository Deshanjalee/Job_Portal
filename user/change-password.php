<?php


session_start();

if(empty($_SESSION['id_user'])) {
  header("Location: ../index.php");
  exit();
}

//Including Database Connection From db.php file to avoid rewriting in all files
require_once("../db.php");

//If user Actually clicked login button 
if(isset($_POST)) {

	
	$password = mysqli_real_escape_string($conn, $_POST['password']);

	$password = base64_encode(strrev(md5($password)));

	//sql query to check user login
	$sql = "UPDATE users SET password='$password' WHERE id_user='$_SESSION[id_user]'";
	if($conn->query($sql) === true) {
		header("Location: index.php");
		exit();
	} else {
		echo $conn->error;
	}

 	//Close database connection.
 	$conn->close();

} else {
	//redirect them back to login page.
	header("Location: settings.php");
	exit();
}