const preview = () => {
  const color = document.getElementById("user_background_color");
  const emoji = document.getElementById("user_emoji");
  const avatarPreview = document.getElementById("avatar-preview");
  // console.log(color, emoji)
  [color, emoji].forEach(input => {
    input.addEventListener("change", ()=> {
      avatarPreview.style.backgroundColor = color.value
      avatarPreview.innerText = emoji.value
    })
  })


  const nicknameButton = document.getElementById("generate-nickname-btn")
  nicknameButton.addEventListener("click", ()=> {

    const a = ["Sassy", "Silly", "Ugly", "Cute", "Misty", "Rustic", "Lucky", "Untidy", "Puzzled", "Crabby"];
    const b = ["Bear", "Dog", "Kitty", "Spot", "Sheep", "Face", "Stranger", "Doll", "Advice", "Humor", "Egg", "Tail"];
    const c = [...Array(10000).keys()];

    const rA = Math.floor(Math.random()*a.length);
    const rB = Math.floor(Math.random()*b.length);
    const rC = Math.floor(Math.random()*c.length);
    const nickname = a[rA] + b[rB] + c[rC];
    console.log(nickname);

    const nicknamePreview = document.getElementById("preview")
    nicknamePreview.innerHTML = nickname.value
  })

}

export default preview

