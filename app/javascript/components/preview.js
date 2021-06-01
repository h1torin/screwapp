const preview = () => {
  const color = document.getElementById("user_background_color");
  const emoji = document.getElementById("user_emoji");
  const nicknameinput = document.getElementById("user_nickname");
  const avatarPreview = document.getElementById("avatar-preview");
  const avatarShow = document.getElementById("show-avatar");
  // console.log(color, emoji)
  [color, emoji].forEach(input => {
    if (input) {
    input.addEventListener("change", ()=> {
      avatarPreview.style.backgroundColor = color.value
      avatarPreview.innerText = emoji.value
    });
    };
  });


  const nicknameButton = document.getElementById("generate-nickname-btn")
  if (nicknameButton) {
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
      nicknamePreview.innerHTML = nickname
      nicknameinput.value = nickname
    })

  }

  }

export default preview



// const element1 = document.getElementById("Work and Study");
// element1.style.display = "none";

// const element2 = document.getElementById("Finance");
// element2.style.display = "none";

// const element3 = document.getElementById("Household");
// element3.style.display = "none";

// const element4 = document.getElementById("Relationship");
// element4.style.display = "none";

// const element5 = document.getElementById("Family");
// element5.style.display = "none";

// const element6 = document.getElementById("Friends");
// element6.style.display = "none";

// const element7 = document.getElementById("Health");
// element7.style.display = "none";

// const element8 = document.getElementById("Hobby and Leisure");
// element8.style.display = "none";

// const element9 = document.getElementById("Other Screw-ups");
// element9.style.display = "none";


// const categories = document.querySelectorAll(".categories");
// console.log(categories);
  // categories.forEach((category) => {
  //   console.log(element);
  // });

// {
//   if (input == "Work and Study") {
//     console.log("It is working")
//   }
// })


// <%= link_to_remote "Profile", :url => {:controller=>'users', :action =>'profile'},  :method => :profile, :with =>"preview();" %>


