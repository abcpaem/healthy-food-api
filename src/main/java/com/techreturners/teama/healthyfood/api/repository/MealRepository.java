package com.techreturners.teama.healthyfood.api.repository;

import com.techreturners.teama.healthyfood.api.model.Meal;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MealRepository extends CrudRepository<Meal, Long> {

//     @Query(value = "SELECT DISTINCT m.* from meal m, meal_ingredient_as mia, " +
//             "meal_diet_as mda, meal_category_as mca" +
//             " where ?1" +
//            " LIMIT 3", nativeQuery = true)
//    List<Meal> getMeal(String query);

    @Query(value ="SELECT DISTINCT m.* FROM meal m " +
            "LEFT JOIN meal_diet_as md ON m.id = md.meal_id " +
//            "LEFT JOIN table_join_meal_categoryAs mca ON m.id = mca.mealId " +
            "WHERE (:calories IS NULL OR m.calories <= :calories) " +
            "AND (m.id NOT IN (SELECT DISTINCT meal_id FROM meal_ingredient_as WHERE ingredient_id IN :excludedIngredients)) " +
            "AND (:dietsIsNull IS TRUE OR md.diet_id IN :diets) " +
//            "AND (:isCategories IS TRUE OR mca.categoryId IN :categories) " +
            "LIMIT 3", nativeQuery = true)
    List<Meal> getMeals(
            @Param(value = "calories") Integer calories,
            @Param(value = "excludedIngredients") List<Long> excludedIngredients,
            @Param(value = "diets") List<Long> diets,
            @Param(value = "dietsIsNull") Boolean dietsIsNull);
//            @Param(value = "categories") List<Long> categories,
//            @Param(value = "isCategories") Boolean categoriesIsNull);

}
