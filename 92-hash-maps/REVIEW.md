let l1 = "L-684F"
let l2 = "L-651W"
let l3 = "L-0436"

const SPOTS = 79

function hash(key) {
  let sum = 1
  for (let i = 0; i < key.length; i++) {
    sum *= key.charCodeAt(i)
  }
  return sum
}

function index(key) {
  return hash(key) % SPOTS
}

