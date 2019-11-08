<?php
session_start();
$conectare = mysqli_connect('localhost', 'root', '', 'hackaton');
if (!$conectare) {
	echo ('Conectarea la DB nu a reusit!');
}
$query = "SELECT * FROM stocmedicamente INNER JOIN medicamente_interzise ON stocmedicamente.nume = medicamente_interzise.nume";
$rezultat = mysqli_query($conectare, $query) or die(mysqli_error($conectare));
$row = $rezultat->fetch_assoc();

?>
<!DOCTYPE html>
<html>

<head>
	<title>Clinica X</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/datatables.min.css" />
	<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
</head>


<body>
	<div>
		<header class="cover-background-main">
			<nav class="navbar navbar-expand-lg navbar-dark ">

				<div class="navbar-collapse collapse w-100 dual-collapse2 order-1 order-md-0">
					<ul class="navbar-nav ml-auto text-center  text-light">

						<li class="nav-item  active ">
							<a class="nav-link   " href="contact.php" style="font-size: 25px;">Contact Medic</a>
						</li>
					</ul>
				</div>
				<div class="mx-auto my-2 order-0 order-md-1 position-relative">
					<a class="mx-auto text-light text-center nav-link nomodify" href="profile.php">
						<img src="img/logo.png" width="150px;">
						<p class="display-4 " style="font-size: 40px; ; color: white;"> HEALTHCARE</p>
					</a>

				</div>
				<div class="navbar-collapse collapse w-100 dual-collapse2 order-2 order-md-2">
					<ul class="navbar-nav mr-auto text-center  text-light">
                    <?php if ($_SESSION['tipuser'] == 'medic') {
                            echo ' <li class="nav-item  active ">
                            <a class="nav-link   " href="verif.php" style="font-size: 25px;">Verifica Medicamente</a>
                        </li>';
                        } ?>


					</ul>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2"><span class="navbar-toggler-icon text-dark"></span></button>
			</nav>
        </header>
        <br> <br>
		<div class=" text-dark text-center col-lg-6 col-sm-6 col-md-6  m-auto">


                        <h1> Scrie un eMail unui medic: </h1>
                        <div>
                            
                            <form method="POST" action="mailer.php">
                                <div class="form-group">
                                    <label for="Nume"> Nume</label>
                                    <input type="text" name="Nume" class="form-control" required>

                                </div>
                                <div class="form-group">
                                    <label for="Prenume"> Prenume</label>
                                    <input type="text" name="Prenume" class="form-control" required>

                                </div>
                                <div class="form-group">
                                    <label for="Initiala"> Initiala</label>
                                    <input type="text" name="Initiala" class="form-control" required>

                                </div>
                                <div class="form-group">
                                    <label for="Clasa"> Medicul caruia doriti sa-i scrieti:</label>
                                    <select name="mail" id="mail" class="form-control" required>
                                        
                                        <?php 
                                        $query = "SELECT * FROM users WHERE tipuser = 'medic'";
                                        $rezultat = mysqli_query($conectare, $query);
                                        $row = $rezultat->fetch_assoc();
                                        while($row){
                                            $name = $row['nume'] .' '. $row['prenume'];
                                            $mail = $row['user'] . "@gmail.com";
                                            echo '<option value="'.$mail.'">'.$name.'</option>';
                                            $row = $rezultat->fetch_assoc();
                                        }
                                        ?>
                                    </select>
                                       
                                </div>
                                <div class="form-group">
                                        <label for="text"></label>
                                        <textarea name="text" class="form-control" rows="8">
                                        </textarea>
                                </div>

                                <div class="form-group">
                                    <input type="submit" name="trimite" value="Trimite"
                                        class="btn-block btn-primary rounded p-2"
                                        style="background-color:#6c5ce7!important;"><br>
                                </div>

                            </form>
                        </div>
                        
                    </div>

	</div>
</body>
<script>
	$(document).ready(function() {
		$('#myDataTable').DataTable();
		$('#myDataTable2').DataTable();
	});
</script>

</html>