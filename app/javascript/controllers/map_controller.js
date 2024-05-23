import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["map"]

  connect() {
    this.initializeMap()
  }

  initializeMap() {
    console.log('initialize map')
    const lat = parseFloat(this.element.dataset.mapLatitude)
    const lng = parseFloat(this.element.dataset.mapLongitude)

    if (!isNaN(lat) && !isNaN(lng)) {
      const collegeLocation = { lat: lat, lng: lng }
      const map = new google.maps.Map(this.mapTarget, {
        zoom: 15,
        center: collegeLocation
      })

      new google.maps.Marker({
        position: collegeLocation,
        map: map,
        title: 'College Location'
      })
    }
  }
}
