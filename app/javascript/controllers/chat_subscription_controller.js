import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chat-subscription"
export default class extends Controller {
  static values = { appointmentId: Number }
  static targets = ["messages"]

  connect() {

    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatChannel", id: this.appointmentIdValue },
      { received: data => { this.#insertMessage(data) } }
      )
      console.log('Connecting to the ActionCable channel with id ${this.appointmentIdValue}.')
  }

  disconnet() {
    console.log("Disconnecting from the channel")

    this.channel.unsubscribe()
  }

  resetForm(event) {
    const form = event.target
    form.reset()
  }

  #insertMessage(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scroll(0, this.messagesTarget.scrollHeight)
  }
}
