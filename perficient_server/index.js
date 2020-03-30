const express = require('express');
const app = express();
const cors = require('cors');
const pool = require('./db');


//middleware
app.use(cors());
app.use(express.json());

//ROUTES

//GET all employees... /employees
app.get("/employees", async(req, res) => {
  try {
    const allEmployees = await pool.query("SELECT * FROM employee");
    res.json(allEmployees.rows);

    console.log(req.body);
  } catch (err) {
    console.error(err.message);
  }
});


//POST create an employee... /employees
app.post("/employees", async(req, res) => {
  try {
    const { firstName, lastName, skill } = req.body;
    const addEmployeeName = await pool.query(
      "INSERT INTO employee(employee_uuid, firstname, lastname, summary)VALUES(uuid_generate_v4(), $1, $2, $3) RETURNING *",
      [firstName, lastName, skill],
    );
    res.json(addEmployeeName.rows[0]);
    console.log 
  } catch (err) {
    console.error(err.message);
  }
  // const newEmployee = req.body.firstname;
  // console.log(newEmployee);
});


//GET find employee by ID... /employees/{employeeId}
//40167795-a725-4af1-a9e8-d80de3d8260f
app.get("/employees/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const employee = await pool.query("SELECT * FROM employee WHERE employee_uuid = $1", [
      id
    ]);
    res.json(employee.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});


//PUT update an employee by ID... /employees/{employeeId}
//40167795-a725-4af1-a9e8-d80de3d8260f
app.put("/employees/:id", async(req, res) => {
  try {
    const { id } = req.params;
    const { firstName, lastName } = req.body;
    const updateEmployee = await pool.query("UPDATE employee SET firstname = $1, lastname = $2 WHERE employee_uuid = $3", 
    [firstName, lastName, id]
    );
    res.json("employee was updated")
  } catch (err) {
    console.error(err.message)
  }
});
//DELETE delete an employee by ID... /employees/{employeeId}
app.delete("/employees/:id", async(req, res) => {
  try {
    const { id } = req.params;
    const deleteEmployee = await pool.query("DELETE FROM employee WHERE employee_uuid = $1", [
      id
    ]);
    res.json(deleteEmployee.rows[0]);
    console.log("employee has been deleted")
  } catch (err) {
    console.error(err.message)
    
  }
})

//GET all technical skills from employee... /employees/{employeeId}/skills
//b74988d9-73d7-4d4c-bded-5643f9269d19
app.get("/employees/:id/skills", async(req, res) => {
  try {
    const { id } = req.params;
    const allSkillsByEmployee = await pool.query("SELECT summary FROM employee WHERE employee_uuid = $1", [
      id
    ]);
   let skillId = res.json(allSkillsByEmployee.rows[0].summary);

    //console.log(req.body);
  } catch (err) {
    console.error(err.message);
  }
//   const employeeSkill = res.jsonbody;
//  console.log(employeeSkill);
});


//POST add skill to an employee... /employees/{employeeId}/skills
//employees/b74988d9-73d7-4d4c-bded-5643f9269d19/skills
app.put("/employees/:id/skills", async(req, res) => {
  try {
    const { id } = req.params;
    const { summary } = req.body;
    const updateEmployeeSkill = await pool.query("UPDATE employee SET summary = $1 WHERE employee_uuid = $2", 
    [summary, id]
    );
    res.json("employee was added/updated")
  } catch (err) {
    console.error(err.message)
  }
});


//DELETE skill from employee by ID... /employees/{employeeId}/skills
app.delete("/employees/:id/skills", async(req, res) => {
  try {
    const { id } = req.params;
    const updateEmployeeSkill = await pool.query("UPDATE employee SET summary = NULL WHERE employee_uuid = $1", 
    [id]
    );
    res.json("employee was added/updated")
  } catch (err) {
    console.error(err.message)
  }
});
//GET find a skill from an employee by ID... /employees/{employeeId}/skills/{skillId}
//PUT update a skill from an employee by ID... /employees/{employeeId}/skills/{skillId}
//DELETE a skill from an employee by ID... /employees/{employeeId}/skills/{skillId}
app.listen(5000, () => {
  console.log('server has started on port 5000');
});