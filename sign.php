  <!--Добавяне на ученик към системата-->  
<?php
include_once 'dbConnection.php';
ob_start();
$name     = $_POST['name'];
$gender   = $_POST['gender'];
$username = $_POST['username'];
$phno     = $_POST['phno'];
$password = $_POST['password'];
$branch   = $_POST['branch'];
$rollno   = $_POST['rollno'];
$name     = stripslashes($name);
$name     = addslashes($name);
$gender   = stripslashes($gender);
$gender   = addslashes($gender);
$username = stripslashes($username);
$username = addslashes($username);
$phno     = stripslashes($phno);
$phno     = addslashes($phno);
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);

$q3 = mysqli_query($con, "INSERT INTO user VALUES  (NULL,'$name', '$rollno','$branch','$gender' ,'$username' ,'$phno', '$password')");
if ($q3) {
    header("location:dash.php?q=6");
} else {
    header("location:dash.php?q=6=Вече има налична регистрация с тези данни. Моля, направете нова заявка с други данни&name=$name&username=$username&gender=$gender&phno=$phno&branch=$branch&rollno=$rollno");
}
ob_end_flush();
?>