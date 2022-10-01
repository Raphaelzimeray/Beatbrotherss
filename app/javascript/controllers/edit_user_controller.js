import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["infos", "form"];

  connect (){
    console.log('Hello world !')
  }

  displayForm() {
    this.infosTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }
}
