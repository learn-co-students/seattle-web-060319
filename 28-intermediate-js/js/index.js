const allAnimals = [];

class Animal {
  species = "";
  getSpecies = () => {
    return this.species;
  };
  constructor() {
    allAnimals.push(this);
  }
  speak = () => {
    console.log("noise");
  };

  whoAmI() {
      let sayMySpecies = () => {
        return this.species;
      }
      return sayMySpecies()
  }

  static howMany = () => {
    console.log(`There are ${allAnimals.length} animals`);
  };
  static reportAnimals = () => {
    allAnimals.map(animal => {
      animal.age = 2;
      console.log(animal);
    });
  };
  static reportLions = () => {
      const lions = allAnimals.filter(animal => animal.species=="lion")
    //   allAnimals.forEach(animal => {
    //     //   if (animal.species == "lion") {
    //     //       lions.push(animal)
    //     //   }
    //     animal.species=="lion" ? lions.push(animal) : null
    //   })
      console.log(lions)
  }
}

class Lion extends Animal {
  constructor() {
    super();
    this.species = "lion";
    this.sound = "ROAR";
    this.teeth = true;
  }
}

class Meerkat extends Animal {
  constructor() {
    super();
    this.species = "meerkat";
  }
}

document.addEventListener("DOMContentLoaded", () => {
  const nala = new Lion();
  const timone = new Meerkat();
  let someNumber = 4;
  //   simba.speak();
  //   Animal.howMany();

  let { teeth, sound, species } = nala;

  //   console.log(teeth);
  //   console.log(sound);
  //   console.log(species);
  let newArray = [...allAnimals, new Lion()];
  //   let newObject = {nala, someNumber};

  let newObject = Object.assign({}, { favoriteDinosaur: "t. rex" }, nala, {
    greeting: "hello!"
  });

  //   console.log(newObject);
  // console.log(newArray)
  // console.log(timone.getSpecies());

//   Animal.reportAnimals();
// Animal.reportLions()
// console.log(nala.whoAmI())


// function Teacher() {
//     this.name = "John";
// }

// Teacher.prototype.sayName = function() {
//     return this.name;
// }

class Teacher {
    name = "John"
    sayName = () => this.name
}

var yourTeacher = new Teacher();

console.log(yourTeacher.sayName())
console.log(Array.prototype)

});



