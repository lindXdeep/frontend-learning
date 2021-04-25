
let modal = document.getElementById('myModal');
let modal_content = document.getElementById('modcon');

let btn = document.getElementById('myButton');
let span = document.getElementsByClassName('modal-close')[0];

btn.onclick = () => {
  modal_content.style.display = "block";
  modal.style.display = "block";
}

span.onclick = () => modal.style.display = "none";

window.onclick = (event) => {
  if(event.target == modal){
    modal.style.display = "none";
  }
}