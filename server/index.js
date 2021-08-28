const express=require("express");
const app=express();
const cors=require("cors");
const pool=require("./db");

//middleware
app.use(cors());
app.use(express.json()); //req.body

//ROUTES

//CREATE TODO
app.post("/todos",async(req,res)=>{
    try{
        const {name,title,company,outbound_date,interest} = req.body;
        const newTodo = await pool.query("INSERT INTO todos (name,title,company,outbound_date,interest) VALUES($1, $2, $3, $4, $5) RETURNING *", 
            [name,title,company,outbound_date,interest]);
        res.json(newTodo.rows[0]);
    }catch(err){
        console.error(err.message);
    }
});

//GET ALL TODO
app.get("/todos", async(req,res)=>{
    try{
        const allTodos=await pool.query("SELECT * FROM todos");
        res.json(allTodos.rows);
    }catch(err){
        console.error(err.message);
    }
});

//GET ONE TODO
app.get("/todos/:id", async(req,res)=>{
    try{
        const {id} = req.params;
        const todo = await pool.query("SELECT * FROM todos WHERE index=$1", [id]);
        res.json(todo.rows[0]);
    }catch(err){
        console.error(err.message);
    }
});

//UPDATE TODO
app.put("/todos/:id",async(req,res)=>{
    try {
        const {id} = req.params;
        const {name,title,company,outbound_date,interest} = req.body;
        const updateTodo = await pool.query("UPDATE todos SET ROW(name,title,company,outbound_date,interest) = ($1,$2, $3, $4, $5) WHERE index = $6",
        [name,title,company,outbound_date,interest,id]);
        res.json("Todo was updated!");
    } catch (err) {
        console.error(err.message);
    }
});

//DELETE TODO
app.delete("/todos/:id",async(req,res)=>{
    try {
        const {id} = req.params;
        const deleteTodo=await pool.query("DELETE FROM todos WHERE index=$1",[
            id
        ]);
        res.json("Todo was deleted!");
    } catch (err) {
        console.log(err.message);
    }
});

app.listen(5000,()=>{
    console.log("Server has started on port 5000")
}); 