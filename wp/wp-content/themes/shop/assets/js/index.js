
//функция открытия меню
const openClick = function () {
    const divs = document.getElementById("menu")
    divs.classList.remove("hide")
}
document.getElementById("menu-toggle").addEventListener("click", openClick)

//функция закрытия меню
const closeClick = function () {
    const divs = document.getElementById("menu")
    divs.classList.add("hide")
}
document.getElementById("menu-close").addEventListener("click", closeClick)