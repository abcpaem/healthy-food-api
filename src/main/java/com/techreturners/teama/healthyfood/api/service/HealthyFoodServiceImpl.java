package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.model.*;
import com.techreturners.teama.healthyfood.api.repository.CategoryRepository;
import com.techreturners.teama.healthyfood.api.repository.DietRepository;
import com.techreturners.teama.healthyfood.api.repository.IngredientRepository;
import com.techreturners.teama.healthyfood.api.repository.MealRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class HealthyFoodServiceImpl implements HealthyFoodService {

    private final int MAX_MEAL_FILTERED_RESULTS = 3;
    private final MealRepository mealRepository;
    private final IngredientRepository ingredientRepository;
    private final DietRepository dietRepository;
    private final CategoryRepository categoryRepository;

    @Override
    public List<Meal> getMeals(Integer calories, List<Long> excludedIngredients, List<Long> diets, List<Long> categories) {
        return mealRepository.getMeals(calories,
                excludedIngredients == null ? new ArrayList<>() : excludedIngredients,
                diets == null ? new ArrayList<>() : diets, diets == null,
                categories == null ? new ArrayList<>() : categories, categories == null,
                MAX_MEAL_FILTERED_RESULTS);
    }

    @Override
    public List<Ingredient> getAllIngredients() {
        List<Ingredient> ingredients = new ArrayList<>();
        ingredientRepository.findAll().forEach(ingredients::add);
        return ingredients;
    }

    @Override
    public Ingredient getIngredientById(Long id) {
        return ingredientRepository.findById(id).get();
    }

    @Override
    public Ingredient getIngredientByName(String ingredientName){
        return ingredientRepository.findByName(ingredientName);
    }

    @Override
    public List<Diet> getAllDiets() {
        List<Diet> diets = new ArrayList<>();
        dietRepository.findAll().forEach(diets::add);
        return diets;
    }

    @Override
    public Diet getDietById(Long id) {
        return dietRepository.findById(id).get();
    }

    @Override
     public Diet getDietByName(String dietName){

        return dietRepository.findByName(dietName);
    }

    @Override
    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();
        categoryRepository.findAll().forEach(categories::add);
        return categories;
    }

    @Override
    public Category getCategoryById(Long id) {
        return categoryRepository.findById(id).get();
    }

    @Override
    public Category getCategoryByName(String categoryName){
        return categoryRepository.findByName(categoryName);
    }

    @Override
    public List<Meal> getAllMeals() {
        List<Meal> meals = new ArrayList<>();
        mealRepository.findAll().forEach(meals::add);
        return meals;
    }

    @Override
    public Meal getMealById(Long id) {
        return mealRepository.findById(id).get();
    }
}
