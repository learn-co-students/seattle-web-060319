const addBtn = document.querySelector("#new-toy-btn");
const toyForm = document.querySelector(".container");
const addToyForm = toyForm.querySelector(".add-toy-form");
let addToy = false;

const url = "http://localhost:3000/toys";

// async function getToys() {
//   let res = await fetch(url);
//   let toys = await res.json();
//   console.log(toys);
// }

getToys = () => {
  return fetch(url).then(res => res.json());
};

incrementLike = toy => {
  return fetch(url + `/${toy.id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      likes: toy.likes + 1
    })
  }).then(res => res.json());
};

getToys().then(toys => displayToys(toys));

createCardContent = toy => {
  return `<h2>${toy.name}</h2><img src=${toy.image} class="toy-avatar" /><p>${
    toy.likes
  } Likes </p><button class="like-btn">Like <3</button>`;
};

displayToys = toys => {
  let container = document.querySelector("#toy-collection");
  toys.forEach(toy => {
    let div = document.createElement("div");
    div.className = "card";
    div.innerHTML = createCardContent(toy);
    //HERE CONTENT EXISTS
    const likeButton = div.querySelector(".like-btn");
    likeButton.addEventListener("click", () => {
      //INCREASE LIKES BY 1
      incrementLike(toy).then(
        updatedToy => {
          console.log(updatedToy)
          div.querySelector("p").innerText = updatedToy.likes + " Likes"
          toy.likes = updatedToy.likes
        }
      );
    });
    container.appendChild(div);
  });
};

// YOUR CODE HERE

addToyForm.addEventListener('submit', e => {
  e.preventDefault()
  let name = e.target.name.value;
  let image_url = e.target.image.value;
  e.target.name.value = "";
  e.target.image.value = "";
  toyForm.style.display = "none";
  fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Accept":  "application/json"
    },
    body: JSON.stringify({
      name: name,
      image: image_url,
      likes: 0
    })
  }).then(res => res.json()).then(
    newToy => {
      displayToys([newToy])
    }
  )
  
})

addBtn.addEventListener("click", () => {
  // hide & seek with the form
  addToy = !addToy;
  if (addToy) {
    toyForm.style.display = "block";
  } else {
    toyForm.style.display = "none";
  }
});

// OR HERE!
