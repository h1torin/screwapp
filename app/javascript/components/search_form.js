
const searchForm = () => {
  const searchInput = document.getElementById("query");
  searchInput.addEventListener("focus", () => {
    const trendingHashtags = document.querySelector(".trending-hashtags");
    const notificationIcon = document.querySelector(".notification-counter");
    const inputField = document.querySelector(".input-field");
    const clickables = document.querySelectorAll(".clickable")
    const restOfArticle = document.querySelector("article.flex-grow-1")
    trendingHashtags.classList.add("d-block")
    notificationIcon.classList.add("d-none")
    inputField.classList.add("search-form-expanded")
    restOfArticle.addEventListener("blur", () => {
      trendingHashtags.classList.remove("d-block")
      notificationIcon.classList.remove("d-none")
      inputField.classList.remove("search-form-expanded")
    })

  })
  // searchInput.addEventListener("blur", (e) => {
  //   const trendingHashtags = document.querySelector(".trending-hashtags");
  //   const notificationIcon = document.querySelector(".notification-counter");
  //   const inputField = document.querySelector(".input-field");
  //   const hashtagclickable = document.querySelector(".blur-hashtag")
  //   console.log(e.target)

  //   if (e.target != hashtagclickable) {
  //   }
  // })
};

export { searchForm };
