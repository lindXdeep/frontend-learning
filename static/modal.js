let modal = document.getElementById('myModal');
let btn = document.getElementById('mybutton');
let span = document.getElementsByClassName("close")[0];

btn.onclick = () => modal.style.display = "block";

span.onclick = () => modal.style.display = "none";

window.onclick = (event) => {
  if (event.target == modal) {
    modal.style.display = "none"
  }
} 

// $('.mybutton').click(function(e) {
//   e.preventDefault();
//   $('.myModal').fadeIn(800);
//   $('html').addClass('no-scroll');
// });