  <!--Модул за учителя-->  
<?php
include_once 'dbConnection.php';

session_start();

if (!(isset($_SESSION['username']))  || ($_SESSION['key']) != '54585c506829293a2d4c3b68543b316e2e7a2d277858545a36362e5f39') {
    
    session_destroy();

    header("location:index.php");
} else {
    $name     = $_SESSION['name'];
    $username = $_SESSION['username'];
} 
?>
<!DOCTYPE html>
<html>
<head>

  <link rel="shortcut icon" type="image/png" href="image/favicon.png">
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>ВЪПРОСНИК.БГ</title>
  <link  rel="stylesheet" href="css/bootstrap.min.css"/>
  <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
  <link rel="stylesheet" href="css/main.css">
  <link  rel="stylesheet" href="css/font.css">
  <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

<script>
$(function () {
    $(document).on( 'scroll', function(){
        console.log('scroll top : ' + $(window).scrollTop());
        if($(window).scrollTop()>=$(".logo").height())
        {
             $(".navbar").addClass("navbar-fixed-top");
        }

        if($(window).scrollTop()<$(".logo").height())
        {
             $(".navbar").removeClass("navbar-fixed-top");
        }
    });
});
</script>

<?php
if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
}
?>
    <script>
function validateForm() {
  var y = document.forms["form"]["name"].value; 
  if (y == null || y == "") {
    document.getElementById("errormsg").innerHTML="Не е попълнено полето за имената на ученика.";
    return false;
  }
  var br = document.forms["form"]["branch"].value;
  if (br == "") {
    document.getElementById("errormsg").innerHTML="Не сте посочили класът на ученика.";
    return false;
  }
  var rn = document.forms["form"]["rollno"].value;
  if (rn == "") {
    document.getElementById("errormsg").innerHTML="Не сте посочили имейл адрес на ученика.";
    return false;
  }
  var g = document.forms["form"]["gender"].value;
  if (g=="") {
    document.getElementById("errormsg").innerHTML="Не сте посочили пол на ученика.";
    return false;
  }
  var x = document.forms["form"]["username"].value;
  if (x.length == 0) {
    document.getElementById("errormsg").innerHTML="Не сте посочили Потребителско име на ученика. (Препоръка: Нека да бъде съставена от букви и цифри)";
    return false;
  }
  if (x.length < 4) {
    document.getElementById("errormsg").innerHTML="Потребителско име трябва да е по дълго от 4 символа. (Препоръка: Нека да бъде съставена от букви и цифри)";
    return false;
  }
  var m = document.forms["form"]["phno"].value;
  if (m.length != 10) {
    document.getElementById("errormsg").innerHTML="Телефония номер трябва да е поне 10 цифри";
    return false;
  }
  var a = document.forms["form"]["password"].value;
  if(a == null || a == ""){
    document.getElementById("errormsg").innerHTML="Не сте посочили парола";
    return false;
  }
  if(a.length<5 || a.length>15){
    document.getElementById("errormsg").innerHTML="Паролата трябва да е от 5 до 15 синвола. (Препоръка: Нека да бъде съставена от букви и числа)";
    return false;
  }
  var b = document.forms["form"]["cpassword"].value;
  if (a!=b){
    document.getElementById("errormsg").innerHTML="Моля, повторете паролата.";
    return false;
  }
}
</script>
<style>
    body {width:100%;  width: 1500px; margin: auto;font: 12px "Century Gothic", "Times Roman", sans-serif;background:#eee;height:auto;background-attachment:fixed;}
    .bg{min-height:540px;}
</style>
</head>
<body style="background:#eee;">
<div class="header">
<div class="row">
<div class="col-lg-6">
<img src="image/logo.png" alt="logo" height="85" width="85" style="margin: 5px"> 
<span class="logo">ВЪПРОСНИК.БГ</span>

</div></div></div>
<nav class="navbar navbar-default title1">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="font-size: 22px" href="dash.php?q=0"><b>КОНТРОЛЕН ПАНЕЛ</b></a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

        <!--Начало на навигацията-->

        <li <?php
if (@$_GET['q'] == 0)
    echo 'class="active"';
?>><a href="dash.php?q=0"><b>ТЕСТОВЕ</b></a></li>
        <li <?php
if (@$_GET['q'] == 7)
    echo 'class="active"';
?>><a href="dash.php?q=7"><b>КЛАСОВЕ</b></a></li>
        <li <?php
if (@$_GET['q'] == 8)
    echo 'class="active"';
?>><a href="dash.php?q=8"><b>ГРАФИК</b></a></li>
    <li <?php
if (@$_GET['q'] == 2)
    echo 'class="active"';
?>><a href="dash.php?q=2"><b>РЕЗУЛТАТИ</b></a></li>
    <li <?php
if (@$_GET['q'] == 3)
    echo 'class="active"';
?>><a href="dash.php?q=3"><b>СЪОБЩЕНИЯ</b></a></li>
        <li <?php
if (@$_GET['q'] == 4)
    echo 'class="active"';
?>><a href="dash.php?q=4"><b>ДОБАВЯНЕ НА ТЕСТ</b></a></li>
        <li <?php
if (@$_GET['q'] == 5)
    echo 'class="active"';
?>><a href="dash.php?q=5"><b>ПРЕМАХВАНЕ НА ТЕСТ</b></a></li>
        <li <?php
if (@$_GET['q'] == 6)
    echo 'class="active"';
?>><a href="dash.php?q=6"><b>ДОБАВЯНЕ НА УЧЕНИК</b></a></li>
        <li <?php
if (@$_GET['q'] == 9)
    echo 'class="active"';
?>><a href="logout.php?q=account.php"><b>ИЗХОД</b></a></li>
        </ul>
    </div>
  </div>
</nav>

    <!--Край на навигацията-->

<div class="container">
<div class="row">
<div class="col-md-12">

<?php

    //Секцията "Тестове"

if (@$_GET['q'] == 0) {
    
    $result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date DESC") or die('Error');
    echo '<div class="panel"><table class="table table-striped title1"  style="vertical-align:middle">
<tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>ТЕСТ</b></td>
<td style="vertical-align:middle"><b>БРОЙ ВЪПРОСИ</b></td><td style="vertical-align:middle"><b>МАКС. БРОЙ ТОЧКИ</b></td>
<td style="vertical-align:middle"><b>РАБОТНО ВРЕМЕ</b></td><td style="vertical-align:middle"><b>СТАТУС</b></td>
<td style="vertical-align:middle"><b>СЪСТОЯНИЕ</b></td><td style="vertical-align:middle"><b>КЛАС</b></td></tr>';
    
    $c = 1;
    while ($row = mysqli_fetch_array($result)) {
        $title   = $row['title'];
        $total   = $row['total'];
        $correct = $row['correct'];
        $time    = $row['time'];
        $eid     = $row['eid'];
        $class   = $row['class'];
        $status  = $row['status'];
        
        if ($status == "enabled") {
            echo '<form name="forml" action="update.php?deidquiz=' . $eid . '"  method="POST">
            <tr><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $title . '</td><td style="vertical-align:middle">' . $total . '</td>
            <td style="vertical-align:middle">' . $correct * $total . '</td><td style="vertical-align:middle">' . $time . '&nbsp;мин.</td>
            <td style="vertical-align:middle">&nbsp&nbsp' . $class . ' клас Включено</td>
            <td style="vertical-align:middle"><b><input id="vip" name="vip" href="update.php?deidquiz=' . $eid . '" value="Изключено" class="btn logb" style="color:#FFFFFF;background:#ff0000;font-size:14px;padding:7px;" type="submit"></b></td>
    
            <td><div class="form-group">
            <label class="col-md-7 control-label" for="chas"></label>  
            <div class="col-md-7">
            <input id="chas" name="chas" placeholder="Клас" class="form-control input-md" style="margin-top:12px;" type="text">
  
          </div>
        </div>
      </fieldset></form></td></tr>';
        } else { 
            echo '<form name="forml" action="update.php?eeidquiz=' . $eid . '"  method="POST">
            <tr><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $title . '</td><td style="vertical-align:middle">' . $total . '</td>
            <td style="vertical-align:middle">' . $correct * $total . '</td><td style="vertical-align:middle">' . $time . '&nbsp;мин.</td>
            <td style="vertical-align:middle">&nbsp&nbsp' . $class . ' клас Изключено</td>
            <td style="vertical-align:middle"><b><input id="lop" name="lop" href="update.php?eeidquiz=' . $eid . '" value="&nbspВключено&nbsp" class="btn logb" style="color:#FFFFFF;background:darkgreen;font-size:14px;padding:7px;" type="submit"></b></td>
            
            <td><div class="form-group">
            <label class="col-md-7 control-label" for="chass"></label>  
            <div class="col-md-7">
            <input id="chass" name="chass" placeholder="Клас" class="form-control input-md" style="margin-top:12px;" type="text">
          
          </div>
          </div>
      </fieldset></form></td></tr>';
        }
    }
}

    //Секцията "Резултати"

if (@$_GET['q'] == 2) {

$result = mysqli_query($con, "SELECT * FROM class") or die('Error');
    echo '<div class="panel"><table class="table table-striped title1">
<tr><td style="text-align: center;"><b>Резултати на учениците по класове</b></td></tr></table>';

      while ($row = mysqli_fetch_array($result)) {
        $class = $row['class'];
        
        echo '<div align="center"><form action="" method="POST">
        <input name="searchn" type="submit" value="'.$class.'" class="btn" style="margin:9px;background:#0D47A1;color:white;width:100px; height:30px">
        <input type="hidden" value="'.$class.'" name="cll">';
    
        echo '</form></div>';
      }
    echo '<div class="panel title">
    <table class="table table-striped title1" >
    <tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>Имена</b></td>
    <td style="vertical-align:middle"><b>Клас</b></td><td style="vertical-align:middle"><b>Потребителско име</b>
    </td><td style="vertical-align:middle"><b>Пол&nbsp&nbsp</b></td><td style="vertical-align:middle"><b>Общи точки </b></td>
    <td style="vertical-align:middle"><b>Tочки от теста</b></td>
    <td style="vertical-align:middle"><b>Tекуща оценка</b></td></tr>';

    if(isset($_POST['searchn'])){

    $cls = $_POST['cll']; 

if(isset($_GET['show']))
    {
        $show = $_GET['show'];
        $showfrom = (($show-1)*10) + 1;
        $showtill = $showfrom + 9;
    }
    else
    {
        $show = 1;
        $showfrom = 1;
        $showtill = 10;
    }


    $c = $showfrom-1;
    $q = mysqli_query($con, "SELECT * FROM rank") or die('Error223');
    $total = mysqli_num_rows($q);
    if($total >= $showfrom){

        $q = mysqli_query($con, "SELECT * FROM rank ORDER BY score DESC, time ASC LIMIT ".($showfrom-1).",10") or die('Error223');
        while ($row = mysqli_fetch_array($q)) {
            $e = $row['username'];
            $s = $row['score'];

            $q12 = mysqli_query($con, "SELECT * FROM user WHERE branch = '$cls' AND username='$e'") or die('Error231');
            while ($row = mysqli_fetch_array($q12)) {
                $name     = $row['name'];
                $branch   = $row['branch'];
                $username = $row['username'];
                $rollno   = $row['rollno'];
                $gender   = $row['gender'];

            $qd = mysqli_query($con, "SELECT * FROM history WHERE username='$e'") or die('Error1560');
            while ($row = mysqli_fetch_array($qd)) {
                 $d = $row['score'];
                 $eid = $row['eid'];

                $q45 = mysqli_query($con, "SELECT * FROM quiz WHERE eid='$eid'") or die('Error1563');
                while ($row = mysqli_fetch_array($q45)) {
                  $ot6     = $row['6ot'];   
                  $do6     = $row['6do']; 
                  $ot5     = $row['5ot'];   
                  $do5     = $row['5do']; 
                  $ot4     = $row['4ot'];   
                  $do4     = $row['4do']; 
                  $ot3     = $row['3ot'];   
                  $do3     = $row['3do']; 
                  $ot2     = $row['2ot'];   
                  $do2     = $row['2do'];

                  $c=$c+1;
            echo '<tr><td style="color:#0D47A1"><b>' . $c . '</b></td><td style="vertical-align:middle">' . $name . '</td>
            <td style="vertical-align:middle">' . $branch . '</td><td style="vertical-align:middle">' . $username . '</td>
            <td style="vertical-align:middle">' . $gender . '</td><td style="vertical-align:middle;text-align: center;">' . $s . '</td>
            <td style="vertical-align:middle;text-align: center;">'. $d . '</td>';
              if ($ot6 >= $d && $d >= $do6) {
              echo '<td style="vertical-align:middle;text-align: center;color:darkred; font-size:18px"><b>Отличен 6</b></td>';
              } else if ($ot5 >= $d && $d >= $do5) {
                echo '<td style="vertical-align:middle;text-align: center;color:darkred; font-size:18px"><b>Мн. Добър 5</b></td>';
              } else if ($ot4 >= $d && $d >= $do4) {
                echo '<td style="vertical-align:middle;text-align: center;color:darkred; font-size:18px"><b> Добър 4</b></td>';
              } else if ($ot3 >= $d && $d >= $do3) {
              echo '<td style="vertical-align:middle;text-align: center;color:darkred; font-size:18px"><b>Среден 3</b></td>';
              } else if ($ot2 >= $d && $d >= $do2) {
              echo '<td style="vertical-align:middle;text-align: center;color:darkred; font-size:18px"><b>Слаб 2</b></td>';
              }
            }
          }
        }
      }
    }
    echo '</tr></table></div>';
    }
}

    //Секцията "Съобщения"

if (@$_GET['q'] == 3) {
    $result = mysqli_query($con, "SELECT * FROM `feedback` ORDER BY `feedback`.`date` DESC") or die('Error');
    echo '<div class="panel"><table class="table table-striped title1">
    <tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>ОТНОСНО</b></td>
    <td style="vertical-align:middle"><b>ИМЕЙЛ АДРЕС</b></td><td style="vertical-align:middle"><b>ДАТА</b></td><td style="vertical-align:middle"><b>ЧАС</b></td>
    <td style="vertical-align:middle"><b>ОТ</b></td><td style="vertical-align:middle"></td><td style="vertical-align:middle"><b>СЪСТОЯНИЕ</b></td></tr>';
    $c = 1;
    while ($row = mysqli_fetch_array($result)) {
        $date      = $row['date'];
        $date      = date("d-m-Y", strtotime($date));
        $time      = $row['time'];
        $subject   = $row['subject'];
        $name      = $row['name'];
        $username1 = $row['username'];
        $id        = $row['id'];
        
        echo '<tr><td style="vertical-align:middle">' . $c++ . '</td>';
        echo '<td style="vertical-align:middle"><a title="Click to open feedback" href="dash.php?q=3&fid=' . $id . '">' . $subject . '</a></td>
        <td style="vertical-align:middle">' . $username1 . '</td><td style="vertical-align:middle">' . $date . '</td><td style="vertical-align:middle">' . $time . '</td>
        <td style="vertical-align:middle">' . $name . '</td><td style="vertical-align:middle"><a title="Отваряне на съобщението" href="dash.php?q=3&fid=' . $id . '"><b>
        <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></b></a></td>';
        
        echo '<td style="vertical-align:middle">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a title="Премахване на съобщението" href="update.php?fdid=' . $id . '"><b>
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td>

  </tr>';
    }
    echo '</table></div>';
}
if (@$_GET['fid']) {
    echo '<br />';
    $id = @$_GET['fid'];
    $result = mysqli_query($con, "SELECT * FROM feedback WHERE id='$id' ") or die('Error');
    while ($row = mysqli_fetch_array($result)) {
        $name     = $row['name'];
        $subject  = $row['subject'];
        $date     = $row['date'];
        $date     = date("d-m-Y", strtotime($date));
        $time     = $row['time'];
        $feedback = $row['feedback'];
        
        echo '<div class="panel"><a title="Затваряне на съобщението" href="dash.php?q=3"><b><span class="glyphicon glyphicon-level-up" aria-hidden="true" style="color: #0D47A1"></span></b></a>
        <h2 style="text-align:center; margin-top:-15px;font-family: "Ubuntu", sans-serif;"><b>' . $subject . '</b></h1>';
        
        echo '<div class="mCustomScrollbar" data-mcs-theme="dark" style="margin-left:10px;margin-right:10px; max-height:450px; line-height:35px;padding:5px;">
        <span style="line-height:35px;padding:5px;">&nbsp;<b>Дата:</b>&nbsp;' . $date . '</span>
        <span style="line-height:35px;padding:5px;">&nbsp;<b>Час:</b>&nbsp;' . $time . '</span>
        <span style="line-height:35px;padding:5px;">&nbsp;<b>От:</b>&nbsp;' . $name . '</span><br />' . $feedback . '</div></div>';
    }
}

    //Секцията "Добавяне на тест"

if (@$_GET['q'] == 4 && !(@$_GET['step'])) {
    echo ' 
<div class="row">
<span class="title1" style="margin-left:37%;font-size:30px;"><b>ДОБАВЯНЕ НА ТЕСТ</b></span><br /><br />
 <div class="col-md-3"></div><div class="col-md-6">   <form class="form-horizontal title1" name="form" action="update.php?q=addquiz"  method="POST">
<fieldset>
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="name" name="name" placeholder="Наименование на теста" class="form-control input-md" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="total"></label>  
  <div class="col-md-12">
  <input id="total" name="total" placeholder="Брой въпроси" class="form-control input-md" type="number">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="right"></label>  
  <div class="col-md-12">
  <input id="right" name="right" placeholder="Точки за верен верни отговора" class="form-control input-md" min="0" type="number">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="wrong"></label>  
  <div class="col-md-12">
  <input id="wrong" name="wrong" placeholder="Точки за сгрешен отговора" class="form-control input-md" min="0" type="number">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="time"></label>  
  <div class="col-md-12">
  <input id="time" name="time" placeholder="Време за изпълнение в минути" class="form-control input-md" min="1" type="number">
    
  </div>
</div>

      <a href="dash.php?q=4&scal=4"><span background-color:#0D47A1; width: 530px;" class="btn btn-success">Добавяне на скала за оценяване</span></a> 
      
      <a href="dash.php?q=4&scal=45"><span background-color:red; width: 530px;" class="btn btn-danger">Премахване на скала за оценяване</span></a>';

          //Оценителната скала

      if (@$_GET['scal'] == 4) {
        echo'
        <span class="title1" style="margin-left:23%;font-size:30px;"><b>Скала за оценяване</b></span><br /><br />

      <div class="form-group">
        <label class="col-md-5 control-label">Отличен 6</label>  
        <div class="col-md-3">
        <input id="exeot" name="exeot" placeholder="От (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
        <label class="col-md-1 control-label">-</label>
        <div class="col-md-3">
        <input id="exedo" name="exedo" placeholder="До (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-5 control-label">Мн. Добър 5</label>  
        <div class="col-md-3">
        <input id="mndot" name="mndot" placeholder="От (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
        <label class="col-md-1 control-label">-</label>
        <div class="col-md-3">
        <input id="mndo" name="mndo" placeholder="До (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-5 control-label">Добър 4</label>  
        <div class="col-md-3">
        <input id="doot" name="doot" placeholder="От (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
        <label class="col-md-1 control-label">-</label>
        <div class="col-md-3">
        <input id="dodo" name="dodo" placeholder="До (точки)" class="form-control input-md" min="1" type="number">
          
        </div>
      </div>

      <div class="form-group">
      <label class="col-md-5 control-label">Среден 3</label>  
      <div class="col-md-3">
      <input id="sreot" name="sreot" placeholder="От (точки)" class="form-control input-md" min="1" type="number">
        
      </div>
      <label class="col-md-1 control-label">-</label>
      <div class="col-md-3">
      <input id="sredo" name="sredo" placeholder="До (точки)" class="form-control input-md" min="1" type="number">
        
      </div>
    </div>

    <div class="form-group">
    <label class="col-md-5 control-label">Слаб 2</label>  
    <div class="col-md-3">
    <input id="slabot" name="slabot" placeholder="От (точки)" class="form-control input-md" min="0" type="number">
      
    </div>
    <label class="col-md-1 control-label">-</label>
    <div class="col-md-3">
    <input id="slabdo" name="slabdo" placeholder="До (точки)" class="form-control input-md" min="0" type="number">
      
    </div>
  </div>';}
  else if (@$_GET['scal'] == 45) {
  }
echo'
  <div class="form-group">
    <label class="col-md-12 control-label"></label>
      <div class="col-md-12"> 
        <input  type="submit" style="background:#0D47A1; width: 550px;" class="btn btn-primary" value=" ДОБАВИ "/>
        
      </div>
  </div>

    </fieldset>
    </form></div>';
}

    //Добавяне на въпроси с техните опции за отговор

if (@$_GET['q'] == 4 && (@$_GET['step']) == 2) {
    echo ' 
<div class="row">
<span class="title1" style="margin-left:35%;font-size:30px;"><b>Добавяне на въпроси</b></span><br /><br />
 <div class="col-md-3"></div><div class="col-md-6">
 <form class="form-horizontal title1" name="form" action="update.php?q=addqns&n=' . @$_GET['n'] . '&eid=' . @$_GET['eid'] . '&ch=4 "  method="POST">
<fieldset>
';
    
    for ($i = 1; $i <= @$_GET['n']; $i++) {
        echo '<b>Въпрос номер&nbsp;' . $i . '&nbsp;:</><br />
<div class="form-group">
  <label class="col-md-12 control-label" for="qns' . $i . ' "></label>  
  <div class="col-md-12">
  <textarea rows="3" cols="5" name="qns' . $i . '" class="form-control" placeholder="Напишете въпрос номер ' . $i . ' тук..."></textarea>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="' . $i . '1"></label>  
  <div class="col-md-12">
  <input id="' . $i . '1" name="' . $i . '1" placeholder="Отговор А" class="form-control input-md" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="' . $i . '2"></label>  
  <div class="col-md-12">
  <input id="' . $i . '2" name="' . $i . '2" placeholder="Отговор Б" class="form-control input-md" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="' . $i . '3"></label>  
  <div class="col-md-12">
  <input id="' . $i . '3" name="' . $i . '3" placeholder="Отговор В" class="form-control input-md" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="' . $i . '4"></label>  
  <div class="col-md-12">
  <input id="' . $i . '4" name="' . $i . '4" placeholder="Отговор Г" class="form-control input-md" type="text">
    
  </div>
</div>
<br/>
<b>Напишете буквата на верния отговор</b>:<br />
<div class="form-group">
  <label class="col-md-12 control-label" for="' . $i . '4"></label>  
  <div class="col-md-12">
  <input id="ans' . $i . '" name="ans' . $i . '" placeholder="Буквата на верния отговор" class="form-control input-md" type="text">
    
  </div>
</div><br/><br />';
    }
    
    echo '<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" style="margin-left:45%; background:#0D47A1;" class="btn btn-primary" value=" ДОБАВИ " class="btn btn-primary"/>
  </div>
</div>

</fieldset>
</form></div>';    
}

    //Секцията "Премахване на тест"

if (@$_GET['q'] == 5) {
    
    $result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date DESC") or die('Error');
    echo '<div class="panel"><table class="table table-striped title1">
<tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>ТЕСТ</b></td>
<td style="vertical-align:middle"><b>БРОЙ ВЪПРОСИ</b></td><td style="vertical-align:middle"><b>МАКС. БРОЙ ТОЧКИ</b></td>
<td style="vertical-align:middle"><b>РАБОТНО ВРЕМЕ</b></td><td style="vertical-align:middle"><b>СЪСТОЯНИЕ</b></td></tr>';
    $c = 1;
    while ($row = mysqli_fetch_array($result)) {
        $title   = $row['title'];
        $total   = $row['total'];
        $correct = $row['correct'];
        $time    = $row['time'];
        $eid     = $row['eid'];
        echo '<tr><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $title . '</td>
        <td style="vertical-align:middle">' . $total . '</td><td style="vertical-align:middle">' . $correct * $total . '</td>
        <td style="vertical-align:middle">' . $time . '&nbsp;мин.</td>
        <td style="vertical-align:middle"><b><a href="update.php?q=rmquiz&eid=' . $eid . '" class="btn" style="margin:0px;background:#0D47A1;color:white">&nbsp;
        <span class="title1"><b>Изтрий</b></span></a></b></td></tr>';
    }
    $c = 0;
    echo '</table></div>';
}

    //Секцията "Добавяне на ученик"

if (@$_GET['q'] == 6) {
?>
    
        <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
<fieldset>
    <div class="form-group">
        <label class="col-md-12 control-label" for="name"></label>  
    <div class="col-md-12">
    <h3 align="center" class="title1" style="font-size:30px;"><b>Добавяне на ученик</b></h3>
    </div>
    </div>

    <div class="form-group">
         <label class="col-md-12 control-label" for="name"></label>  
     <div class="col-md-12">
     <div id="errormsg" style="font-size:14px;font-family:calibri;font-weight:normal;color:red">
</div>
</div>
</div>  
    
    <div class="form-group">
         <label class="col-md-12 control-label" for="name"></label>  
    <div class="col-md-12">
        <input id="name" name="name" placeholder="Имена на ученика" class="form-control input-md" type="text">
    
     </div>
    </div>

    <div class="form-group">
  <label class="col-md-12 control-label" for="rollno"></label>  
  <div class="col-md-12">
  <input id="branch" name="branch" placeholder="Класът на ученика" class="form-control input-md" type="text">
    
     </div>
    </div>

    <div class="form-group">
         <label class="col-md-12 control-label" for="rollno"></label>  
    <div class="col-md-12">
        <input id="rollno" name="rollno" placeholder="Имейл адрес" class="form-control input-md" type="text">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12 control-label" for="gender"></label>
  <div class="col-md-12">
    <select id="gender" name="gender" placeholder="Пол на ученика" class="form-control input-md" >
   <option value="" <?php
if (!isset($_GET['gender']))
    echo "selected";
?>>Изберете пол на ученика</option>
  <option value="M" <?php
if (@$_GET['gender'] == "M")
    echo "selected";
?>>Мъж</option>
  <option value="F" <?php
if (@$_GET['gender'] == "F")
    echo "selected";
?>>Жена</option> </select>
  </div>
</div>


<div class="form-group">
  <label class="col-md-12 control-label title1" for="username"></label>
  <div class="col-md-12">
    <input id="username" name="username" placeholder="Потребителско име" class="form-control input-md" type="username" style="<?php
if (isset($_GET['q7']))
    echo "border-color:red";
?>">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="phno"></label>  
  <div class="col-md-12">
  <input id="phno" name="phno" placeholder="Телефонен номер за връзка с ученика" class="form-control input-md" type="number">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="password"></label>
  <div class="col-md-12">
    <input id="password" name="password" placeholder="Парола" class="form-control input-md" type="password">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12control-label" for="cpassword"></label>
  <div class="col-md-12">
    <input id="cpassword" name="cpassword" placeholder="Повторете паролата" class="form-control input-md" type="password">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12" style="text-align: center"> 
    <input  type="submit" value=" ДОБАВИ " class="btn btn-primary" style="text-align:center; background:#0D47A1;" />
  </div>
</div>

</fieldset>
</form>
<?php 
}

    //Секцията "Добавяне на клас"

if (@$_GET['q'] == 7) {
    echo'
        <h3 align="center" class="title1" style="font-size:30px;"><b>Добавяне на клас</b></h3>
    <form class="form-horizontal" name="form" action="update.php?q=7" method="POST"><fieldset>
        <div class="form-group">
        <label class="col-md-12 control-label" for="class"></label>  
        <div class="col-md-12">
        <input id="class" name="class" placeholder="Клас" class="form-control input-md" type="text">
    
     </div>
    </div>

    <div class="form-group">
        <label class="col-md-12 control-label" for="teachclass"></label>  
        <div class="col-md-12">
        <input id="teachclass" name="teachclass" placeholder="Класен ръководител" class="form-control input-md" type="text">
    
     </div>
    </div>

    <div class="form-group">
        <label class="col-md-12 control-label" for=""></label>
        <div class="col-md-12" style="text-align: center"> 
        <input  type="submit" value=" ДОБАВИ " class="btn btn-primary" style="text-align:center; background:#0D47A1;" />

  </div>
</div>

</fieldset></form>';

    $result = mysqli_query($con, "SELECT * FROM class") or die('Error');

    echo '<div class="panel"><table class="table table-striped title1">
<tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>Имена на класен ръководител</b></td>
<td style="vertical-align:middle"><b>Клас</b></td><td style="vertical-align:middle"></td></tr>';
    
    $c = 1;

    while ($row = mysqli_fetch_array($result)) {
        $class = $row['class'];
        $teacher = $row['teacher'];
        
        echo '<tr><form action="" method="POST"><td style="vertical-align:middle">' . $c++ . '</td>
        <td style="vertical-align:middle">' . $teacher . '</td><td  style="vertical-align:middle">
        <input name="search" type="submit" value="'.$class.'" class="btn" style="margin:0px;background:#0D47A1;color:white;width:100px; height:30px"></td>
        <input type="hidden" value="'.$class.'" name="cls"></form><td style="vertical-align:middle"><a title="Премахване на клас" href="update.php?duserclass=' .$class. '"><b>
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td></tr>';
    }
    $c = 0;
    echo '</table></div>'; 

    echo ' 
    <div class="row">
        <div class="col-md-3"></div><div class="col-md-12"><form class="form-horizontal title1" name="form" action=""  method="POST">
            <fieldset>';

    echo '<div class="panel"><table class="table table-striped title1">
        <tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>Имена</b></td>
        <td style="vertical-align:middle"><b>Пол</b></td><td style="vertical-align:middle"><b>Имейл адрес</b></td>
        <td style="vertical-align:middle"><b>Клас</b></td><td style="vertical-align:middle"><b>Потребителско име</b></td>
        <td style="vertical-align:middle"><b>Телефонен номер</b></td><td style="vertical-align:middle"></td></tr>';
    
    if(isset($_POST['search'])){
        
        $cls = $_POST['cls'];

        $result = mysqli_query($con, "SELECT * FROM user WHERE branch ='$cls'") or die('Error');

        $c = 1;

        while ($row = mysqli_fetch_array($result)) {
        $name      = $row['name'];
        $phno      = $row['phno'];
        $gender    = $row['gender'];
        $rollno    = $row['rollno'];
        $branch    = $row['branch'];
        $username1 = $row['username'];
        
        echo '<tr><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $name . '</td>
        <td style="vertical-align:middle">' . $gender . '</td><td style="vertical-align:middle">' . $rollno . '</td>
        <td style="vertical-align:middle">' . $branch . '</td><td style="vertical-align:middle">' . $username1 . '</td>
        <td style="vertical-align:middle">' . $phno . '</td>
        <td style="vertical-align:middle"><a title="Премахване на ученика" href="update.php?dusername=' . $username1 . '"><b>
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td></tr>';
            }  
        }   
    }

    $c = 0;
    echo '</table></div>';

    //Секцията "График"

if (@$_GET['q'] == 8) {
    echo'
        <h3 align="center" class="title1" style="font-size:30px;"><b>График за контролни и писмени работи</b></h3>
    <form class="form-horizontal" name="form" action="update.php?q=graph" method="POST"><fieldset>
    <div class="form-group">
        <label class="col-md-12 control-label" for="namechas"></label>  
        <div class="col-md-12">
        <input id="namechas" name="namechas" placeholder="Учебен предмет" class="form-control input-md" type="text">
    
     </div>
    </div>
    <div class="form-group">
        <label class="col-md-12 control-label" for="nametest"></label>  
        <div class="col-md-12">
        <input id="nametest" name="nametest" placeholder="Наименование на теста" class="form-control input-md" type="text">
    
     </div>
    </div>
        <div class="form-group">
        <label class="col-md-12 control-label" for="clase"></label>  
        <div class="col-md-12">
        <input id="clase" name="clase" placeholder="Клас" class="form-control input-md" type="text">
    
     </div>
    </div>
    <div class="form-group">
      <label class="col-md-12 control-label" for="data"></label>  
      <div class="col-md-12">
      <input title="ПОСОЧЕТЕ ДАТА НА ТЕСТА" id="data" name="data" class="form-control input-md" style="height: 50px; font-size:18px;" type="date">

      </div>
    </div>
    <div class="form-group">
        <label class="col-md-12 control-label" for="submit"></label>
        <div class="col-md-12" style="text-align: center"> 
        <input  type="submit" value=" ДОБАВИ " class="btn btn-primary" style="text-align:center; background:#0D47A1;" />

  </div>
</div>

</fieldset></form>';

    $result = mysqli_query($con, "SELECT * FROM graph") or die('Error');

    echo '<div class="panel"><table class="table table-striped title1">
<tr><td style="vertical-align:middle"><b>№ </b></td><td style="vertical-align:middle"><b>Учебен предмет</b></td>
<td style="vertical-align:middle"><b>Наименование на теста</b></td><td style="vertical-align:middle"><b>Дата</b></td>
<td style="vertical-align:middle"><b>Клас</b></td><td style="vertical-align:middle"></td></tr>';
    $c = 1;

    while ($row  = mysqli_fetch_array($result)) {
        $nametest   = $row['nametest'];
        $clase = $row['clase'];
        $data = $row['data'];    
        $namechas = $row['namechas'];       
        
        echo '<tr><form action="" method="POST"><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $namechas . '</td>
        <td style="vertical-align:middle">' . $nametest . '</td><td style="vertical-align:middle">' . $data . '</td>
        <td  style="vertical-align:middle">' . $clase .  '</td></form>
        <td style="vertical-align:middle"><a title="Премахване от графика" href="update.php?dugraph=' . $clase . '&nametest=' . $nametest . '&data=' . $data .  '"><b>
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td></tr>';
    }
    $c = 0;
    echo '</table></div>';  
  }
?>

</div>
</div>
</div>
</body>
</html>
