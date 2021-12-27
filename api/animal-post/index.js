const data = require('../shared/animals-data');

module.exports = async function (context, req) {
  const animal = {
    id: undefined,
    title: req.body.title,
    body: req.body.body,
  };

  try {
    const newAnimal = data.addAnimal(animal);
    context.res.status(201).json(newAnimal);
  } catch (error) {
    context.res.status(500).send(error);
  }
};
