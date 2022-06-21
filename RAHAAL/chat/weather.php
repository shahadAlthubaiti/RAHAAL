<?php
$apiKey = "fd60447970229a1fa600702b855de556";
$cityId = "104515"; // makkah , taif
$googleApiUrl = "http://api.openweathermap.org/data/2.5/weather?id=" . $cityId . 
                            "&lang=en&units=metric&APPID=" . $apiKey;

$ch = curl_init();

curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, $googleApiUrl);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($ch, CURLOPT_VERBOSE, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$response = curl_exec($ch);

curl_close($ch);
$data = json_decode($response);
$currentTime = time();
?>



<div class="bot-inbox inbox">

    <div class="icon">
        <img style="border-radius: 100px;" width="40px" height="40px" src="images/logo.jpeg" />
    </div>
    <div class="msg-header">
        <p> Weather today in Taif</p>
        <div>
            <div class="time">
                <div><?php echo ucwords($data->weather[0]->description); ?></div>
            </div>
            <div class="weather-forecast">
                <img src="http://openweathermap.org/img/w/<?php echo $data->weather[0]->icon; ?>.png" class="weather-icon" /> </br><?php echo $data->main->temp_max; ?>°C
            </div>
            <div class="time">
                <div>Humidity: <?php echo $data->main->humidity; ?> %</div>
                <div>Wind: <?php echo $data->wind->speed; ?> km/h</div>
            </div>
        </div>
    </div>

</div>