import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    page: String,
  };
  connect() {
    const center =
      this.pageValue == "show"
        ? [this.markersValue[0].lng, this.markersValue[0].lat]
        : [null, null];
    mapboxgl.accessToken = this.apiKeyValue;
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12", // style URL
      zoom: 8,
      center: center,
    });
    this.#addMarkersToMap();
    if (this.pageValue == "index") {
      this.#fitMapToMarkers();
    }
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
      this.map.fitBounds(bounds, {
        padding: 50,
        duration: 100,
      });
    });
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window); // Add this
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }
}
