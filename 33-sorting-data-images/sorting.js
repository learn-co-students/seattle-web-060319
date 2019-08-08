aa = [12, 34, 56, 678, 789, 2345, 23, 213, 234, 99]
ss = ["bar", "car", "zoo", "far", "ace", "rabbit"]
aa.sort(compare)
console.log(aa)
ss.sort()
console.log(ss)

let months = [
  "January",
  "March",
  "September",
  "February",
  "December",
  "April",
  "May",
  "July",
  "August",
  "October",
  "November",
  "June",
]
console.log(months.sort(compareMonths))

// the .sort() function accepts a function to compare
// two things. If the first thing is less than the second
// the function should return a negative number. If they
// are equal the function should return 0. If the second
// is less than the first the function should return 1
function compare(a, b) {
  if (a < b) {
    return -1
  } else if (b < a) {
    return 1
  } else {
    return 0
  }
}

f=(a,b)=>b-a

function compareMonths(month1, month2) {
  let months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ]
  // return 1 -1 or 0 depending on if the months are
  // earlier the same or later 
  let i1 = months.indexOf(month1)
  let i2 = months.indexOf(month2)
  return compare(i1, i2)
}
