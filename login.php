<?php 
	session_start();
	if (isset($_SESSION['id'])) {
		header('Location:../clinica/profile.php');
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
</head>


<body>
    <div class="cover-background-second">
        <div class="container text-center pt-2 text-light">
            <img src="img/logo.png" style="width: 6%;">
            <h4 class="display-4">HEALTHCARE</h4>
        </div>
        <div class="container ">
            <div class="row  text-justify text-white center-horizontally">
                <div class="col-md-6 col-lg-6 col-sm-12 main-content text-center">
                    <h1 style="margin-top:10%;">Conecteaza-te:</h1>
                    <div class=" container text-center">

                        <a href="index.php" class="btn btn-primary pt-3 pl-3 pr-3 text-center">
                            <h5>Back...</h5>
                        </a>
                        <br><br>

                    </div>

                </div>
                <div class="col-md-6 col-lg-6 col-sm-12 main-content">
                    <form action="conectare.php" style=" width:50%; margin: auto" method="post">

                        <div class="form-group">
                            <label for="user"> User</label>
                            <input type="text" name="user" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <label for="pass"> Parola</label>
                            <input type="password" name="pass" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-primary btn-block" type="submit">
                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>
</body>

</html>