import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const status = document.getElementById('status')
  const message = document.getElementById('message')

  consumer.subscriptions.create("SchoolApplicationsChannel", {
    connected() {
    },

    disconnected() {
    },

    received(data) {
      status.innerHTML = data.status
      message.innerHTML = '<p>'+data.message+'</p>';
    }
  });  
});
