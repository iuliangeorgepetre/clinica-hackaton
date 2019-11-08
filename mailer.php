<?php
$msg = $_POST['text'];
$address = $_POST['mail'];
$nume = $_POST['Nume'] .' '. $_POST['Prenume'];
mail($address, $nume, $msg);
echo "MERGE <br>";
echo $nume . '<br>';
header("Location: ../clinica/contact.php?info=reusit")
?>