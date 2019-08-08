let l1 = "L-684F"
let l2 = "L-651W"
let l3 = "L-0436"

class HashTable {
  constructor() {
    this.buckets = new Array(1)
    this.entries = 0
  }

  put(key, value) {
    if (this.entries / this.buckets.length > .7) {
      this.grow()
    }
    this.entries++

    let index = this.index(key)
    this.buckets[index] = {key, value}
  }

  get(key) {
    let index = this.index(key)
    return this.buckets[index].value
  }

  hash(key) {
    let sum = 1
    for (let i = 0; i < key.length; i++) {
      sum *= key.charCodeAt(i)
    }
    return sum
  }

  grow() {
    let size = this.buckets.length
    console.log('growing from', size, 'to', size * 2)
    let old = [...this.buckets]
    this.buckets = new Array(size * 2)
    old.forEach(keyValuePair => {
      if (keyValuePair) {
        this.put(keyValuePair.key, keyValuePair.value)
      }
    });
  }

  index(key) {
    let index = this.hash(key) % this.buckets.length
    console.log('key', key, 'hash', this.hash(key), 'length', this.buckets.length, 'index', index)
    return index
  }
}

let table = new HashTable()
table.put('98101', 'Downtown')
console.log(table.buckets)
console.log()
table.put('98102', 'Capitol Hill')
console.log(table.buckets)
console.log()
table.put('98103', 'Wallingford')
console.log(table.buckets)
console.log()
table.put('90201', 'Beverly Hills')
console.log(table.buckets)
console.log()
table.put('98100', 'Weezer')
console.log(table.buckets)
console.log()

