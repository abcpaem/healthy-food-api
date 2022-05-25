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

import java.util.ArrayList;
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

    @GetMapping("/meal")
    @Operation(summary = "Gets a list of meals with the option to add dietary restrictions and category",
            description = "Calling this endpoint with no parameters will return a list of all meals. If you add any of the parameters to the call, then it will only return a maximum of 3 meals.")
    public ResponseEntity<List<Meal>> getMeals(@RequestParam(required = false) Integer calories, @RequestParam(required = false) List<Long> excludedIngredients, @RequestParam(required = false) List<Long> diets, @RequestParam(required = false) List<Long> categories) {
        List<Meal> meals = calories == null && excludedIngredients == null && diets == null && categories == null
                ? healthyFoodManagerService.getAllMeals()
                : healthyFoodManagerService.getMeals(calories, excludedIngredients, diets, categories);
        return new ResponseEntity<>(meals, HttpStatus.OK);
    }
}
