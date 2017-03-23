$(document).ready(() => {
  L.mapbox.accessToken = "pk.eyJ1IjoiYWxleHNjbGltIiwiYSI6ImNpc285OWc1cTA2MTAzMG14amI4MHF5aDYifQ.aBzJCCizYqDs0XmnnCGiFw";
  const map = L.mapbox.map('map', 'mapbox.streets').setView([45.1510532655634, -25.398193359375], 1.5);

  $.ajax({
    type: "GET",
    url: "/assistance/maps",
    cache: false,
    dataType: "json",
    success: (data) => {
      map.featureLayer.setGeoJSON(data);
    }
  });
})

