package com.techreturners.teama.healthyfood.api.controller;

import com.techreturners.teama.healthyfood.api.service.HealthyFoodService;
import com.techreturners.teama.healthyfood.api.model.Category;
import com.techreturners.teama.healthyfood.api.model.Diet;
import com.techreturners.teama.healthyfood.api.model.Ingredient;
import com.techreturners.teama.healthyfood.api.model.Meal;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
@Tag(name = "Healthy Food")
public class HealthyFoodController {

    @Autowired
    HealthyFoodService healthyFoodManagerService;

    @GetMapping({"/ingredient"})
    @Operation(summary = "Gets a list of all ingredients")
    public ResponseEntity<List<Ingredient>> getAllIngredients() {
        List<Ingredient> allIngredients = healthyFoodManagerService.getAllIngredients();
        return new ResponseEntity<>(allIngredients, HttpStatus.OK);
    }

    @GetMapping({"/diet"})
    @Operation(summary = "Gets a list of all diets")
    public ResponseEntity<List<Diet>> getAllDiets() {
        List<Diet> allDiets = healthyFoodManagerService.getAllDiets();
        return new ResponseEntity<>(allDiets, HttpStatus.OK);
    }

    @GetMapping({"/category"})
    @Operation(summary = "Gets a list of all categories")
    public ResponseEntity<List<Category>> getAllCategories() {
        List<Category> allCategories = healthyFoodManagerService.getAllCategories();
        return new ResponseEntity<>(allCategories, HttpStatus.OK);
    }

    @GetMapping({"/meal"})
    @Operation(summary = "Gets a selection of meals based on restrictions")
    public ResponseEntity<List<Meal>> getMeals(@RequestParam int calories, @RequestParam List<String> excludedIngredients, @RequestParam List<String> diet, @RequestParam List<String> category) {
        List<Meal> meals = healthyFoodManagerService.getMeals(calories, excludedIngredients, diet, category);
        return new ResponseEntity<>(meals, HttpStatus.OK);
    }
}
