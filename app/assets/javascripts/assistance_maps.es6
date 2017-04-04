$(document).ready(() => {
  L.mapbox.accessToken = "pk.eyJ1IjoiYWxleHNjbGltIiwiYSI6ImNpc285OWc1cTA2MTAzMG14amI4MHF5aDYifQ.aBzJCCizYqDs0XmnnCGiFw";
  const map = L.mapbox.map('map', 'mapbox.streets').setView([49.26060520000001, -123.24599390000003], 14.0);

  $.ajax({
    type: "GET",
    url: "/assistance/maps",
    cache: false,
    dataType: "json",
    success: (data) => {
      L.geoJSON(data, {
        onEachFeature: (feature, layer) => {
          if (feature.properties && feature.properties.popupContent) {
            layer.bindPopup(feature.properties.popupContent);
          }
        }
      }).addTo(map);
    }
  });
})

