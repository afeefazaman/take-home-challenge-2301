import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  static targets = ["nodes","links"]

  connect() {
    let id = document.getElementById("graph-id").value
    const url =  `/graphs/${id}/data`;

    fetch(url, { headers: { accept: "application/json" } })
    .then(response => response.json())
    .then(data => {
      // update the DOM with the number of nodes and links
      this.nodesTarget.innerHTML = data.nodes.length;
      this.linksTarget.innerHTML = data.links.length;
    })
    .catch(error => console.error(error));
  }
}
