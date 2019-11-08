<?php
session_start();
$conectare = mysqli_connect('localhost', 'root', '', 'hackaton');
if (!$conectare) {
	echo ('Conectarea la DB nu a reusit!');
}
$cnp = $_POST['cnp'];

$nume = $_POST['nume'];
$prenume = $_POST['prenume'];
$username = $_POST['user'];
$pass = $_POST['pass'];

if (isset($_POST['tipuser'])) {
	$qual = $_POST['tipuser'];
}

$pass_hashuita = $pass;


$querry = "INSERT INTO users(cnp,nume,prenume,user,pass,tipuser) VALUES ('$cnp', '$nume' , '$prenume' , '$username' , '$pass_hashuita', '$qual')";
$rezultat = mysqli_query($conectare, $querry) or die(mysqli_error($conectare));
$querry = "SELECT * FROM users WHERE cnp = '$cnp' ";
$rezultat = mysqli_query($conectare, $querry) or die(mysqli_error($conectare));
$row = $rezultat ->fetch_assoc();

if ($rezultat) {
	$_SESSION['id'] = $row['id'];
	$_SESSION['user'] = $row['user'];
	$_SESSION['nume'] = $row['nume'];
	$_SESSION['prenume'] = $row['prenume'];
	$_SESSION['tipuser'] = $row['tipuser'];
	$_SESSION['cnp'] = $row['cnp'];
	if($row['tipuser'] == 'pacient')
		header("Location: ../clinica/profile.php?info=pacient");
	if($row['tipuser'] == 'medic')
		header("Location: ../clinica/profile.php?info=medic");
} else {

	header("Location: ../clinica/index.php?info=failed");
	echo "<script type='text/javascript'>alert('Eroare!');</script>";
}
