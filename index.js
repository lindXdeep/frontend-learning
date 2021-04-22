
let modal = document.getElementById('myModal');
let btn = document.getElementById('myBtn');
let span = document.getElementsByClassName("close")[0];

btn.onclick = () => modal.style.display = "block";
span.onclick = () => modal.style.display = "none";

// Смотрим на окне события,  если событие произошлол с id=modal
// тогда скрываем блок

window.onclick = (event) => {
  if (event.target == modal) {
    modal.style.display ="none";
  }
}