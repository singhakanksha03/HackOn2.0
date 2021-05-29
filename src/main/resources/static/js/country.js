var stateObject = {
  India: {
    Delhi: ["new Delhi", "North Delhi"],
    Kerala: ["Thiruvananthapuram", "Palakkad"],
    Goa: ["North Goa", "South Goa"],
  },
  Australia: {
    "South Australia": ["Dunstan", "Mitchell"],
    Victoria: ["Altona", "Euroa"],
  },
  Canada: {
    Alberta: ["Acadia", "Bighorn"],
    Columbia: ["Washington", ""],
  },
};
window.onload = function () {
  var countySel = document.getElementById("countySel"),
    stateSel = document.getElementById("stateSel"),
    districtSel = document.getElementById("districtSel");
  for (var country in stateObject) {
    countySel.options[countySel.options.length] = new Option(country, country);
  }
  countySel.onchange = function () {
    stateSel.length = 1; // remove all options bar first
    districtSel.length = 1; // remove all options bar first
    if (this.selectedIndex < 1) return; // done
    for (var state in stateObject[this.value]) {
      stateSel.options[stateSel.options.length] = new Option(state, state);
    }
  };
  countySel.onchange(); // reset in case page is reloaded
  stateSel.onchange = function () {
    districtSel.length = 1; // remove all options bar first
    if (this.selectedIndex < 1) return; // done
    var district = stateObject[countySel.value][this.value];
    for (var i = 0; i < district.length; i++) {
      districtSel.options[districtSel.options.length] = new Option(
        district[i],
        district[i]
      );
    }
  };
};

function checkPasswordMatch() {
  var password = $("#Newpassword").val();
  var confirmPassword = $("#Confirmpassword").val();
  if (password != confirmPassword)
    $("#CheckPasswordMatch").html("Passwords does not match!");
  else $("#CheckPasswordMatch").html("Passwords match.");
}
$(document).ready(function () {
  $("#Confirmpassword").keyup(checkPasswordMatch);
});
