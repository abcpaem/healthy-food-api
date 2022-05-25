package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.model.Category;
import com.techreturners.teama.healthyfood.api.model.Diet;
import com.techreturners.teama.healthyfood.api.model.Ingredient;
import com.techreturners.teama.healthyfood.api.model.Meal;

import java.util.List;

public interface HealthyFoodService {

    List<Meal> getMeals(Integer calories, List<Long> excludedIngredients, List<Long> diets, List<Long> categories);

    List<Ingredient> getAllIngredients();
    Ingredient getIngredientById(Long id);
    Ingredient getIngredientByName(String dietName);

    List<Diet> getAllDiets();
    Diet getDietById(Long id);
    Diet getDietByName(String dietName);

    List<Category> getAllCategories();
    Category getCategoryById(Long id);
    Category getCategoryByName(String categoryName);

    List<Meal> getAllMeals();
    Meal getMealById(Long id);
}
