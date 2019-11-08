<?php
	session_start();
	$conectare = mysqli_connect('localhost', 'root', '','hackaton');
	if(!$conectare){
		echo('Conectarea la DB nu a reusit!');
    }
    
	
	
	$boala = $_POST['boala'];
	$status = $_POST['status'];
	$dataDiag = $_POST['dataDiag'];
    $cnp = $_POST['cnp'];
	
	

	$pass_hashuita = $pass;


	$querry = "INSERT INTO patologii(cnp, numePatologie, status, dataDiag) VALUES ('$cnp', '$boala' , '$status' , '$dataDiag')";
	$rezultat = mysqli_query($conectare, $querry) or die(mysqli_error($conectare));
	

	if($rezultat){
		
		header("Location: ../clinica/pacient.php?pacient=".$cnp."&info=reusit");
		echo "<script type='text/javascript'>alert('Operatie efectuata cu succes!');</script>";
	}else{
		
		header("Location: ../clinica/pacient.php?pacient=".$cnp."&info=failed");
		echo"<script type='text/javascript'>alert('Operatia a esuat!');</script>";
	}

?>