/**
 *
 * initiate an npm package.json into this project's folder.
 * Install the npm library chalk into this project and require it in this file, read the documentation online for Chalk
 *
 * Iterate the colorsArray and for each color in the array, console.log "Hello World" in that color using Chalk.
 */

// Importing module
const chalk = require('chalk');
let colorsArray = ['green', 'blue', 'red'];

const colorsArr = (colorsArray) => {
  colorsArray.map((color) => {
    console.log(chalk.keyword(color)('Hello World'));
  });
  return colorsArray;
};

console.log(colorsArr(colorsArray));
