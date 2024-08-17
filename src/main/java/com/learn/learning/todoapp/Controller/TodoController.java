package com.learn.learning.todoapp.Controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.learn.learning.Services.TodoService;
import com.learn.learning.todoapp.Entity.Todo;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
public class TodoController {
	@Autowired
	TodoService todoservices;

	@RequestMapping("/todo-list")
	public String todoList(ModelMap model) {
		String username = (String) model.get("name");
		if (username != null) {
			List<Todo> todo = todoservices.findAll();
			model.put("todos", todo);
			return "todo-list";
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/addtodo")
	public String addTodo(ModelMap model) {
		String username = (String) model.get("name");
		Todo todos = new Todo(username, "", LocalDate.now(), true);
		model.put("todo", todos);
		return "addtodo";
	}

	@PostMapping("/addtodo")
	public String addTodos(ModelMap model, @Valid Todo todo, BindingResult result) {
		if (result.hasErrors()) {
			return "addtodo";
		} else {
			String username = (String) model.get("name");
			if (username != null) {
				Todo todos = new Todo(username, todo.getDescription(), todo.getTargetDate(), todo.isDone());
				todoservices.save(todos);
				return "redirect:/todo-list";
			} else {
				return "redirect:/";
			}
		}
	}

	@GetMapping("deletetodo")
	public String deleteTodo(@RequestParam int id, ModelMap model) {
		todoservices.deleteById(id);
		return "redirect:/todo-list";
	}

	@GetMapping("edittodo")
	public String editTodoPage(@RequestParam int id, ModelMap model) {
		Todo todos = todoservices.findById(id).get();
		model.put("todo", todos);
		return "addtodo";
	}

	@PostMapping("/edittodo")
	public String updateTodos(ModelMap model, @Valid Todo todo, BindingResult result) {
		if (result.hasErrors()) {
			return "addtodo";
		} else {
			String username = (String) model.get("name");
			if (username != null) {
				todo.setUsername(username);
				todoservices.save(todo);
				return "redirect:/todo-list";
			} else {
				return "redirect:/";
			}
		}
	}

}
