/**
 * Using fs, Write into a file ./test.txt the sentence "Hello World!" in this project's root folder.
 * When the write is complete, console.log that the file was saved successfully.
 */

// your code goes here

const fse = require('fs-extra');

fse
  .outputFile('./test.txt', 'Hello world!')
  .then(() => {
    console.log('The file has been saved!');
  })
  .catch((err) => {
    console.error(err);
  });
