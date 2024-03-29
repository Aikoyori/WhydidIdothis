usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

var warriorshops = ["Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom"];
shuffle(warriorshops);

var strangeshop = ["Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom"];
strangeshop = shuffle(strangeshop);

//Floor 1:
items = [];
var awesomelist = ["Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom"];
awesomelist = shuffle(awesomelist);
gooditems = [awesomelist.pop()];
otherstuff = [];
goodotherstuff = [];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 2:
items = [];
gooditems = ["Gamma Curse"];
otherstuff = [health()];
goodotherstuff = [shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()])];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [];
items.push(pick(["Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom"]));
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
items = [];
gooditems = [awesomelist.pop()];

otherstuff = [health()];
goodotherstuff = [
  trade(["weapon", "shield"], [awesomelist.pop()])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5:
items = [];
items.push(pick(["Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom","Impending Doom", "Gamma Curse", "Infinidicer", "Thorn Bloom"]));
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["upgrade", strangeshop.pop(), "health"], [4, 4, 4])
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 6:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

var lastfloor = addfloor("boss");

if (getfinalboss() == "Drake"){
  items.push("Wooden Stake");
}

lastfloor
  .additems(items, gooditems)
  .setlocation('BOSS')
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();