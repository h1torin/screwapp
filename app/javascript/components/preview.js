const preview = () => {
  const color = document.getElementById("user_background_color");
  const emoji = document.getElementById("user_emoji");
  const avatarPreview = document.getElementById("avatar-preview");
  const nicknamePreview = document.getElementById("nickname-preview");
  // console.log(color, emoji)
  [color, emoji].forEach(input => {
    input.addEventListener("change", ()=> {
      avatarPreview.style.backgroundColor = color.value
      avatarPreview.innerText = emoji.value
    })
  })

  const nickname = document.getElementById("user_nickname");


}








export default preview

