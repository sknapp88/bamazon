var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: 'youngthing90',
  database: "bamazondb"
});

connection.connect(function(err) {
  if (err) throw err;
});

var start = function() {

  inquirer.prompt({
    name: "itemSelect",
    type: "rawlist",
    message: "what item woud you like to purchase?",
    choices: function() {
          var choiceArray = [];
          for (var i = 0; i < results.length; i++) {
            choiceArray.push(results[i].item_name);
          }
          return choiceArray;
        },
  }).then(function(answer) {
    if (answer.postOrBid.toUpperCase() === "POST") {
      postAuction();
    }
    else {
      bidAuction();
    }
  });
};

start();