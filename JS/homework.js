// Problem 1
letsalaries = { John: 100, Ann: 160, Pete: 130 };
var sum = letsalaries.John + letsalaries.Ann + letsalaries.Pete;
console.log("Sum: " + sum);

// Problem 2
letmenu = { width: 200, height: 300, title: "My menu" };
console.log(letmenu);

function multiplyNumeric(menu) {
  menu.width = menu.width * 2;
  menu.height = menu.height * 2;
}

multiplyNumeric(letmenu);
console.log(letmenu);

// Problem 3
function ValidateEmail(inputText) {
  var mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w)+$/;
  if (inputText.value.match(mailFormat)) {
    alert("Valid Email Address!");
    document.myForm.inputEmail.focus();
    return true;
  } else {
    alert("You have entered an invalid Email Address!");
    document.myForm.inputEmail.focus();
    return false;
  }
}

// Problem 4
function truncate(str, maxLength) {
  if (str.length > maxLength) {
    ans = str.substring(0, maxLength);
    ans = ans + "...";
    return ans;
  } else {
    return str;
  }
}

console.log(truncate("hello world how are you", 10));

// Problem 5
const styles = ["James", "Brennie"];
console.log(styles);

styles.push("Robert");
console.log(styles);

index = styles.length / 2;
index = Math.round(index);
styles[index - 1] = "Calvin";
// styles.splice(index - 1, 1);
console.log(styles);

styles.shift();
console.log(styles);

newA = styles.slice(0);
newA.unshift("Rose", "Regal");
console.log(newA);
