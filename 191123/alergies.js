let scorecard = {
  1: "eggs",
  2: "peanuts",
  4: "shellfish",
  8: "strawberries",
  16: "tomatoes",
  32: "chocolate",
  64: "pollen",
  128: "cats"
};

const getList = score => {};
{
  const keys = Object.keys(scorecard)
    .map(Number)
    .reverse();
  console.log("keys", keys);

  let allergies = [];

  for (key of keys) {
    if (score >= key) {
      allergies.push(scorecard[key]);
      score -= key;
    }
  }

  return allergies;
}

console.log(getList(34));
