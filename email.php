  <!--Модула за автоматично изпращане на съобщения до ученици-->  
<!DOCTYPE html>
<html lang="bg">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--Авоматично рефрешване на всеки 12 часа = 43 200 сек.-->
    <meta http-equiv="refresh" content="43200" >
    <title>Send e-mail</title>
</head>
<body>
<?php
include_once 'dbConnection.php';

	$result = mysqli_query($con, "SELECT * FROM graph ") or die('Error66');
	    while ($row = mysqli_fetch_array($result)) {
	        $clase    = $row['clase'];
	        $data     = $row['data'];
	        $namechas = $row['namechas'];
	        $nametest = $row['nametest'];  
	        
			$date=date_create($data);
			date_add($date,date_interval_create_from_date_string("3 days"));
			$lastdate = date_format($date,"Y-m-d");
			$nowdate = date("Y-m-d");
			

			if ($lastdate == $nowdate) {

				$rer = mysqli_query($con, "SELECT * FROM user WHERE branch='$clase' ") or die('Error699');

				while ($row = mysqli_fetch_array($rer)) {
				$name      = $row['name'];
			        $phno      = $row['phno'];
			        $gender    = $row['gender'];
			        $email     = $row['rollno'];
			        $branch    = $row['branch'];	     
    $to = $email;
    $subject = "Въпросник.БГ";
    $message = '<div style="font-size: 19px;">До <p>'.$name.' от '.$branch.' клас</p>
    <p>Предстоящо контролно по <i style="color:#0D47A1"><b>'.$namechas.'</b></i> относно <i style="color:#0D47A1"><b>'.$nametest.'</b></i> , което ще се проведе през <b><i style="color:#0D47A1">'.$data.' г.</b></i></p>
     <p><i>Поздрави от екипа на,</i></p><p><b><i style="color:#0D47A1">Въпросник.БГ</i></b></p></div>';

    $from = 'office@vaprosnik.dx.am';

    if(mail($to, $subject, $message)){
        echo 'Успешно е изпратено';
    } else{
        echo 'Не е изпратено, възникна проблем';
            }	
        }
	}
}
?>
</body>
</html>