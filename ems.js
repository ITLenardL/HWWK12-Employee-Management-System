var mysql = require("mysql");
var inq = require("inquirer");
var table = require("console.table");
var add = require("./logicjs/add");
var update = require("./logicjs/update");
var view = require("./logicjs/view");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "MYSQL123",
  database: "ems_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  exports.start();
});

exports.start = () => {
    inq.prompt([
        {
            type: "list",
            message: "What would you like to do?",
            name: "choice",
            choices: [
                "View All Employees",
                "Add Employee",
                "Update Employee Role",
                "EXIT"                
            ]
        }
    ])
    .then(function(answer) {
      if(answer.choice === "View All Employees") {
        view.viewAllEmployees();
      }
      else if(answer.choice === "Add Employee") {
        add.addEmployee();
      }      
      else if(answer.choice === "Update Employee Role") {
        update.updateRole();
      }
      else if(answer.choice === "EXIT") {
        connection.end();
        return
      }
    });
    
};