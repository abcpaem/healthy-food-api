package com.techreturners.teama.healthyfood.api.controller;

import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/api/v1/user")
@Tag(name = "User")
@SecurityRequirement(name = "basicAuth")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping
    @Operation(summary = "Gets all users")
    public ResponseEntity<List<User>> getAllUsers() {
        List<User> users = userService.getAllUsers();
        return new ResponseEntity<>(users, HttpStatus.OK);
    }

    @GetMapping({"/{userId}"})
    @Operation(summary = "Gets user by Id")
    public ResponseEntity<User> getUserById(@PathVariable Long userId) {
        User user;
        try {
            user = userService.getUserById(userId);
        } catch (NoSuchElementException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(user, HttpStatus.OK);
    }

    @PostMapping
    @Operation(summary = "Adds a new user")
    public ResponseEntity<User> addUser(@RequestBody User user) {
        User newUser;
        try {
            newUser = userService.insertIntoUser(user);
        } catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.CONFLICT);
        }
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add("user", "/api/v1/user/" + newUser.getId().toString());
        return new ResponseEntity<>(newUser, httpHeaders, HttpStatus.CREATED);
    }

    @PutMapping({"/{userId}"})
    @Operation(summary = "Updates user by Id")
    public ResponseEntity<User> updateUserById(@PathVariable("userId") Long userId, @RequestBody User user) {
        userService.updateUserById(userId, user);
        return new ResponseEntity<>(userService.getUserById(userId), HttpStatus.OK);
    }

    @DeleteMapping({"/{userId}"})
    @Operation(summary = "Deletes user by Id")
    public ResponseEntity<Long> deleteUserById(@PathVariable Long userId) {
        try {
            userService.deleteUserById(userId);
        } catch (EmptyResultDataAccessException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }
        return ResponseEntity.ok(userId);
    }
}
