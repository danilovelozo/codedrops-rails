import { Controller } from "stimulus"

export default class extends Controller {
  static get targets() {
    return ['name', 'counter'];
  }

  countCharacters(event) {
    let characters = this.nameTarget.value.length;
    this.counterTarget.innerText = characters;
  }
}