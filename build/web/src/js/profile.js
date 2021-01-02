function pageLink1() {
    link = "profile-page.jsp"
    location.replace("profile-page.jsp")
}

function pageLink2() {
    link = "profile-setting.jsp"
    location.replace("profile-setting.jsp")
}
function confirmSelection(){
  confirm("Press yes to continue!");
}

 var check = function() {
 
    if (document.getElementById('password').value ==
          document.getElementById('confirm_password').value) {
          document.getElementById('message').style.color = 'green';
          document.getElementById('message').innerHTML = 'Password Matched';
    } 
    else {
      		document.getElementById('message').style.color = 'red';
          document.getElementById('message').innerHTML = 'Password Mismatched';
      }
  }
  
