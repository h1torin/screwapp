// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

import consumer from "./consumer";

const initNotificationsCable = () => {
  const notificationsContainer = document.getElementById('notificationList');
    console.log(notificationsContainer);
    consumer.subscriptions.create({channel: "NotificationsChannel"}, {
      received(data) {
        // new Notification(data['event'])
        console.log(data); // called when data is broadcast in the cable
        const counter = document.getElementById('notification-counter');
        console.log(counter);
        counter.innerText = data
        // notificationsContainer.insertAdjacentHTML('beforeend', data);
      },
    });
}

export { initNotificationsCable }
