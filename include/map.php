<?php if(isset($data)){
    ?>

    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: <?=$data->city->coord->lat ?>, lng: <?=$data->city->coord->lon ?>};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJLE5LJiX9Nk-piMt9OWfwaqy4GanWD2Q&callback=initMap">
    </script>
    <?php
}
?>