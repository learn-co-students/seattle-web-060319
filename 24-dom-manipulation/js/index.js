document.addEventListener("DOMContentLoaded", function() {
  // let myElement = document.querySelectorAll("div")
  let word = "bird";
  // debugger;
  let myElement = document.getElementById("salmon");
  myElement.innerText = "tuna";
  myElement.className = "tuna";
  // console.log(myElement.innerText);
  myElement.style = "color:red;";

  let newTitle = document.createElement("h1");
  let oldTitle = document.querySelector("h1");
  newTitle.innerText = "Hello 060319";
  oldTitle.appendChild(newTitle);
});

// if(true) {

// } else if(false) {

// } else {

// }

let sayHi = function() {
  return "hi";
};

console.log(sayHi);

const name = "john";

function changeName() {
  // return "john"
  let name = "tony";
  console.log(name);
}

console.log(name);
changeName();
console.log(name);

// function sayHi() {
//   return "hi";
// }

// function countUp(num) {

//   for (let i = 1; i <= num; i++) {
//     console.log(i);
//   }

//   let arr = [1, 2, 3];
//   arr.forEach(function(item) {
//     console.log(item * 100);
//   });

// }

// countUp(5);
