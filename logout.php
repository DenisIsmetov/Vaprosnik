  <!--Модул за изход от системата-->  
<?php
session_start();
if (isset($_SESSION['username'])) {
    session_destroy();
}
$ref = @$_GET['q'];
header("location:index.php");
?>