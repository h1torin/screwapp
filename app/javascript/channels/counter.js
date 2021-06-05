const initCounter = () => {
 const btnCounter = document.getElementById('open_notification')
 btnCounter.addEventListener ('click', function() {
  const counter = document.getElementById('notification-counter');
  console.log(counter);
  // counter.classList.add("hidden")
  // counter.innerText = 0
 })
}

export { initCounter }
