import { Controller } from "@hotwired/stimulus"
// import Sortable from "sortablejs"
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="sortable"
export default class extends Controller {
  connect() {
    console.log("Sortable controller connected")
    this.sortable = Sortable.create(this.element, {
      animation: 150,
    })
  }
}
