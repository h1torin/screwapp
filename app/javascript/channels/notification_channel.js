// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

import consumer from "./consumer";

const initNotificationsCable = () => {
  const notificationsContainer = document.getElementById('notificationList');
    console.log(notificationsContainer);
    consumer.subscriptions.create({channel: "NotificationsChannel"}, {
      received(data) {
        // new Notification(data['event'])
        // console.log(data[1]); // called when data is broadcast in the cable
        const counter = document.getElementById('notification-counter');
        console.log(counter);
        counter.innerText = data["counter"]
        counter.style.backgroundColor = data["color"]
        counter.addEventListener("click", () => {
          counter.innerText = 0
          counter.style.backgroundColor =  data["color"]
        })
        // notificationsContainer.insertAdjacentHTML('beforeend', data);
      },
    });
}

export { initNotificationsCable }
