
let modal = document.getElementById('myModal');

let btn = document.getElementById('myButton');
let span = document.getElementsByClassName('modal-close')[0];

btn.onclick = () => modal.style.display = "block";

span.onclick = () => modal.style.display = "none";

window.onclick = (event) => {
  if(event.target == modal){
    modal.style.display = "none";
  }
}