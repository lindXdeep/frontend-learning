alert("I'm active");

let modal_backgraund = document.getElementById('win-block');
let modal_login_win = document.getElementById('modal-login');

let btn_close = document.getElementById('btn-close');

let btn_login = document.getElementById('btn-login');

btn_login.onclick = () => {
  modal_backgraund.style.display = "block";
  modal_login_win.style.display = "block";
}

btn_close.onclick = () => {
  modal_backgraund.style.display = "none";
  modal_login_win.style.display = "none";
}

window.onclick = (event) => {
  if(event.target == modal_backgraund){
    modal_backgraund.style.display = "none";
    modal_login_win.style.display = "none";
  }
}