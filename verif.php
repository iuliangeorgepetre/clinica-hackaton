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
						<li class="nav-item  active ">
							<a class="nav-link   " href="verif.php" style="font-size: 25px;">Verifica Medicamente</a>
						</li>


					</ul>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2"><span class="navbar-toggler-icon text-dark"></span></button>
			</nav>
		</header>
		<div class="container  text-justify mt-5">



			<?php
			if ($rezultat) {
				echo '
					<h2 class="text-center display-4" style="font-size:35px;">Medicamente din Stocul Spitalului care nu sunt in conformitate cu normele Europene:</h2>
								<table class="table" id="myDataTable">
							<thead class="thead-dark table-light">
										<tr>
														<th scope="col">#</th>
														<th scope="col">Nume</th>
														<th scope="col">Interzis din</th>
														
										</tr>
							</thead> <tbody>';



				while ($row) {
					echo "<tr>
								<th scope=\"row\">" . $row['id'] . "</th>
									<td>" . $row['nume'] . "</td>
									<td>" . $row['since'] . "</td>
							</tr>";

					$row = $rezultat->fetch_assoc();
					$k=1;
				}
			} else {

				echo "<h1 class=\"text-center\">Nu exista medicamente interzise in stoc!</h1>
				</tbody>
			</table>
				";
				$k=1;
			}
			

			$query = "SELECT * FROM stocmedicamente";
			$rezultat = mysqli_query($conectare, $query) or die(mysqli_error($conectare));
			$row = $rezultat->fetch_assoc();
			$today = date('Y-m-d');

			
			if ($rezultat && $k) {
				echo '
				
									<table class="table" id="myDataTable2">
								<thead class="thead-dark table-light">
											<tr>
															<th scope="col">#</th>
															<th scope="col">Nume</th>
															<th scope="col">Expirat din</th>
															
											</tr>
								</thead> <tbody>';



				while ($row) {
					$dataExpirare = $row['doe'];
					if ($dataExpirare < $today) {
						echo "<tr>
									<th scope=\"row\">" . $row['id'] . "</th>
										<td>" . $row['nume'] . "</td>
										<td>" . $row['doe'] . "</td>
								</tr>";
					}
					$row = $rezultat->fetch_assoc();
				}
			} else {

				echo "<h1 class=\"text-center\">Nu exista medicamente interzise in stoc!</h1>
					</tbody>
				</table>
					";
			}



			?>




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