const data = {
  animals: [
    [
      {
        "id": 1,
        "title": "Artemis",
        "subtitle": "Domestic Short Hair Mix  Louisville, KY",
        "body": "Artemis and her kittens along with her sister and her kittens were rescued from a crowded shelter that euthanizes for space. This beautiful girl is still very young herself and would LOVE a home. [petfinder.com]",
        "url": "https://raw.githubusercontent.com/alxtt/AnimAll/main/catav1.png",
        "thumbnailUrl": "https://via.placeholder.com/150/92c952"
      },
      {
        "id": 2,
        "title": "Julia",
        "subtitle": "Domestic Short Hair  Louisville, KY",
        "body": "Buff and white social kitten - Julia with mom Jazzy and siblings Jillian, Julian were rescued from an overcrowded kill shelter. This fun family has been fully vetted and more than ready to start experiencing life as part of a family. If your heart and home are big enough for two, pairs can be adopted for a reduced adoption fee. [petfinder.com]",
        "url": "https://raw.githubusercontent.com/alxtt/AnimAll/main/catav2.png",
        "thumbnailUrl": "https://via.placeholder.com/150/92c952"
      }
    ],
};

const getRandomInt = () => {
  const max = 1000;
  const min = 100;
  return Math.floor(Math.random() * Math.floor(max) + min);
};

const addAnimal = (animal) => {
  animal.id = getRandomInt();
  data.animals.push(animal);
  return animal;
};

const updateAnimal = (animal) => {
  const index = data.animals.findIndex((v) => v.id === animal.id);
  console.log(animal);
  data.animals.splice(index, 1, animal);
  return animal;
};

const deleteAnimal = (id) => {
  const value = parseInt(id, 10);
  data.animals = data.animals.filter((v) => v.id !== value);
  return true;
};

const getAnimal = () => {
  return data.animals;
};

module.exports = { addAnimal, updateAnimal, deleteAnimal, getAnimal };
