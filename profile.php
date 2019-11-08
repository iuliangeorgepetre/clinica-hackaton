<?php
session_start();

$conectare = mysqli_connect('localhost', 'root', '', 'hackaton');
if (!$conectare) {
	echo ('Conectarea la DB nu a reusit!');
}




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
		<div class="container text-justify text-dark mt-5">
			<div class="text-center mt-3">
				<h5 class="display-4"> <?php echo $_SESSION['nume'] . ' ' . $_SESSION['prenume']; ?></h5>
				<img src="img/profile.png" class="rounded-circle" style="width: 20%;"> <br>
				<a href="logout.php" class="btn  btn-dark mt-3">Log Out</a>
			</div>
			<div class="text-center mt-5 patologic">

				<?php


				if ($_SESSION['tipuser'] == 'pacient') {
					$query = "SELECT * FROM patologii INNER JOIN users ON patologii.CNP = users.cnp AND users.tipuser = 'pacient'";
					$rezultat = mysqli_query($conectare, $query) or die(mysqli_error($conectare));
					$row = $rezultat->fetch_assoc();
					echo '<h3>Istoric Patologic</h3>';
					echo '<table class="table" id="myDataTable">';
					echo $_SESSION['tipuser'];


					echo '<thead class="thead-dark table-light">
								<tr>
										<th scope="col">#</th>
										<th scope="col">Nume Conditie Patologica</th>
										<th scope="col">Status</th>
										<th scope="col">An Diagnosticare</th>
								</tr>
						</thead>
						<tbody>';
					while ($row) {
						if ($row['cnp'] == $_SESSION['cnp']) {
							echo "<tr>
												<th scope=\"row\">" . $row['id'] . "</th>
												<td>" . $row['numePatologie'] . "</td>
												<td>" . $row['status'] . "</td>
												<td>" . $row['dataDiag'] . "</td>
										</tr>";
						}
						$row = $rezultat->fetch_assoc();
					}

					echo '</tbody>
						
					</table>';
				} else if ($_SESSION['tipuser'] == 'medic') {
					$query = "SELECT * FROM users";
					$rezultat = mysqli_query($conectare, $query) or die(mysqli_error($conectare));
					$row = $rezultat->fetch_assoc();
					echo '<h3 class="mt-5 display-4"> Pacientii mei </h3>';
					echo '<table class="table container" id="myDataTable">
							<thead>
								<tr>
									<th scope="col">Index</th>
									<th scope="col">Nume</th>
									<th scope="col">Prenume</th>
									<th scope="col">CNP</th>
									<th scope="col"></th>
								</tr>
							</thead>';
					$row = $rezultat->fetch_assoc();
					while ($row) {
						echo "<tr>
												<th scope=\"row\">" . $row['id'] . "</th>
												<td>" . $row['nume'] . "</td>
												<td>" . $row['prenume'] . "</td>
												<td>" . $row['cnp'] . "</td>
												<td><a href=\"pacient.php?pacient={$row['cnp']}\" class=\"btn btn-primary\">Modifica date</a></td>
										</tr>";
						$row = $rezultat->fetch_assoc();
					}

					echo '</table>';
				}
				?>
			</div>
			<div class="row container text-center">
				<a href="profile.php" class="btn btn-dark text-center">
					<h5>Back...</h5>
				</a>
				<?php

				if ($_SESSION['tipuser'] == 'pacient') {
					
				}
				?>



	<br><br>

	</div>
	</div>

	</div>
</body>
<script>
	$(document).ready(function() {
		$('#myDataTable').DataTable();
	});
</script>

</html>