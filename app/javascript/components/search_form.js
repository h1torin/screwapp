
const searchForm = () => {
  const searchInput = document.getElementById("query");
  searchInput.addEventListener("focus", () => {
    const trendingHashtags = document.querySelector(".trending-hashtags");
    const notificationIcon = document.querySelector(".notification-counter");
    const inputField = document.querySelector(".input-field");
    trendingHashtags.classList.add("d-block")
    notificationIcon.classList.add("d-none")
    inputField.classList.add("search-form-expanded")

  })
  searchInput.addEventListener("blur", () => {
    const trendingHashtags = document.querySelector(".trending-hashtags");
    const notificationIcon = document.querySelector(".notification-counter");
    const inputField = document.querySelector(".input-field");
    trendingHashtags.classList.remove("d-block")
    notificationIcon.classList.remove("d-none")
    inputField.classList.remove("search-form-expanded")
  })
};

export { searchForm };
