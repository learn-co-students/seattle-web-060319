// double = num1 => {
//   return () => {
//     console.log(num1 * 2)
//   }
// }

// double(4)(5)

// let currentTime = 10;

// getCurrentTime();

// !(function(newTime) {
//   currentTime = newTime;
// })(11);

// getCurrentTime();

// function getCurrentTime() {
//   console.log(currentTime)
// }

double = function(input) {
  return input * 2;
}

getAge = function(object) {
  return object.age;
}

let john = {age: 10}

function doublePersonAge(person) {
  return double(getAge(person))
}
console.log(doublePersonAge(john))