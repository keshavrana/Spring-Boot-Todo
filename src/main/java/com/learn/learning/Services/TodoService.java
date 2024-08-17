package com.learn.learning.Services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.learning.todoapp.Entity.Todo;

public interface TodoService extends JpaRepository<Todo, Integer> {

}
