package com.techreturners.teama.healthyfood.api.repository;

import com.techreturners.teama.healthyfood.api.model.Meal;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MealRepository extends CrudRepository<Meal, Long> {
    @Query(value = "SELECT DISTINCT m.* FROM meal m " +
            "LEFT JOIN meal_diet md ON m.id = md.meal_id " +
            "LEFT JOIN meal_category mc ON m.id = mc.meal_id " +
            "WHERE (:calories IS NULL OR m.calories <= :calories) " +
            "AND (m.id NOT IN (SELECT DISTINCT meal_id FROM meal_ingredient WHERE ingredient_id IN :excludedIngredients))" +
            "AND (:dietsIsNull IS TRUE OR md.diet_id IN :diets) " +
            "AND (:categoriesIsNull IS TRUE OR mc.category_id IN :categories) " +
            "LIMIT :maxResults", nativeQuery = true)
    List<Meal> getMeals(
            @Param(value = "calories") Integer calories,
            @Param(value = "excludedIngredients") List<Long> excludedIngredients,
            @Param(value = "diets") List<Long> diets,
            @Param(value = "dietsIsNull") Boolean dietsIsNull,
            @Param(value = "categories") List<Long> categories,
            @Param(value = "categoriesIsNull") Boolean categoriesIsNull,
            @Param(value = "maxResults") Integer maxResults);
}
