package com.techreturners.teama.healthyfood.api.controller;

import com.techreturners.teama.healthyfood.api.service.MealPlanService;
import com.techreturners.teama.healthyfood.api.model.MealPlan;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("/api/v1/mealplan")
@Tag(name = "Meal Plan")
public class MealPlanController {

    @Autowired
    MealPlanService mealPlanManagerService;

    @GetMapping({"/{userId}"})
    @Operation(summary = "Gets the list of meal plans for a user")
    public ResponseEntity<List<MealPlan>> getMealPlansByUser(@PathVariable Long userId) {
        List<MealPlan> mealPlans = mealPlanManagerService.getAllMealPlans(userId); // For Authenticated user
        return new ResponseEntity<>(mealPlans, HttpStatus.OK);
    }

    @PostMapping({"/{userId}"})
    @Operation(summary = "Creates a meal plan for a user")
    public ResponseEntity<List<MealPlan>> createMealPlanByUser(@PathVariable Long userId, @RequestParam List<Long> meals, @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime date) {
        List<MealPlan> mealPlan = mealPlanManagerService.createMealPlan(meals, userId, date);
        return new ResponseEntity<>(mealPlan, HttpStatus.CREATED);
    }
}
