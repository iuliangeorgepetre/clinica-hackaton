<?php 
	session_start();
?>

<?php

	$conectare = mysqli_connect('localhost', 'root', '','hackaton');

	if(!$conectare){
		die('Nu se poate conecta la DB');
	}


	if(isset($_POST['user']) && isset($_POST['pass'])){
		$user= strtolower($_POST['user']);
		$pass= $_POST['pass'];
	}

	



	$sql = "SELECT * FROM users WHERE user = '$user'";
	$result = mysqli_query($conectare, $sql);



	$row = $result->fetch_assoc();
	$hash_pass = $row['pass'];

	
	$goodPass = 1;

	if($goodPass == 0){
		header("Location: ../clinica/index.php?info=gresit");
		die();
	}else{
		$sql = "SELECT * FROM users WHERE user = '$user' AND pass = '$pass'";
		$result = mysqli_query($conectare, $sql);

			if(!$row = $result->fetch_assoc()){
				header("Location: ../clinica/index.php?info=gresit");
			die();
		}else{
			$_SESSION['id'] = $row['id'];
			$_SESSION['user'] = $row['user'];
			$_SESSION['nume'] = $row['nume'];
			$_SESSION['prenume'] = $row['prenume'];
			$_SESSION['tipuser'] = $row['tipuser'];
			$_SESSION['cnp'] = $row['cnp'];
		}
		header("Location:../clinica/profile.php?info=".$_SESSION['tipuser']);
	}

?>


