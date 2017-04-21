<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Weather</title>
    <link href="include/style.css" rel="stylesheet">

</head>
<body>
    <div class="main">
    <div class="main-form" id = "main"> 
    <form method="get">
        <p>Введите город</p>
        <input type="text" name="city">
        <p>Введите страну(необязательное поле)</p>
        <input type="text" name="country"><br>
        <button class="btn" type="submit">Отправить</button>
    </form>
    </div>

    <?php
    require_once('include/connect.php');
    require_once('include/func.php');
        if($_GET){

        $city = mysqli_real_escape_string($dim,$_GET[city]);
        // $city = translit($cityor);
        $country = mysqli_real_escape_string($dim,$_GET[country]);
        $country = mysqli_query($dim,"SELECT code FROM countries where name = '$country'");


        $con = mysqli_fetch_assoc($country);
        $con = $con[code];
        $appid = '4edd651b67e95edbbae8d306fb8f6478';
        $cnt = 7;
        $mode = json;
        $units = metric;
        $lang=ru;
        $url ="http://api.openweathermap.org/data/2.5/forecast/daily?q=$city,$con&mode=$mode&APPID=$appid&units=$units&cnt=$cnt&lang=$lang";
        // echo "$url";
        $date = "'".date('Y-m-d')."'";

        for($i=-1;$i>=-6;$i--){
            $date .= ','."'".date("Y-m-d", strtotime("$i days"))."'";
        }
        //сохраняем данные в бд
        $query = "SELECT `text` FROM `queries` WHERE `city`='$city' AND `date`IN($date) AND `country` = '$con' ORDER BY id DESC";
        $find = mysqli_query($dim,$query);
    
        echo "<div class='day city'>";
        if($in = mysqli_fetch_assoc($find)){
            echo "<p>данные получены из бд</p>";
            $data = $in[text];
           
        } else{
            $date = date('Y-m-d');
            echo "<p>данные получены из api</p>";
            $data = @file_get_contents ($url);
            $in = mysqli_real_escape_string($dim,$data);
            mysqli_query($dim,"INSERT INTO `queries`(`text`,`date`,`city`,`country`) VALUES ('$in','$date','$city','$con')");
        }
        
        // декодируем полученные данные
        $data = json_decode($data);

        $arraydays = $data->list;
        $w = Array('Воскресенье','Понедельник','Вторник','Среда','Четверг','Пятница','Субота');
        echo '<p>Погода в '.$cityor.' '.$data->city->name.'</p>';
        echo '<p>координаты '.$data->city->coord->lat.' '.$data->city->coord->lon.'</p>';
        echo '</div>';
        foreach($arraydays as $one){
            echo "<div class='day'>";

            echo '<span class="data">' .$w[date( 'w', $one->dt )] . ' '.date( 'd.m', $one->dt ) . "</span>";
            echo '<p>Утро: '.plus($one->temp->morn) .'</p>';
            echo '<p>День: '.plus($one->temp->day) .'</p>';
            echo '<p>Вечер: '.plus($one->temp->eve) .'</p>';
            echo '<p>Ночь: '.plus($one->temp->night) .'</p>';
            echo '<p>Погода: '.$one->weather[0]->description.'</p>';
            echo '<p>Скорость ветра: '.$one->speed.'</p>';
            echo '<p>Давление: '.round($one->pressure).'</p>';
            echo '<p>Влажность: '.$one->humidity.'</p>';
            echo '</div>';
        }


            include('include/map.php');

            // pre($data);
    echo "<a href='#main'> <button href='#main' class='btn'>Вверх</button></a>";

    }
    ?>
   
    
    </div>
</body>
</html>