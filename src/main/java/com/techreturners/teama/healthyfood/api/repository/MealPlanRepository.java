package com.techreturners.teama.healthyfood.api.repository;

import com.techreturners.teama.healthyfood.api.model.MealPlan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MealPlanRepository extends CrudRepository<MealPlan, Long> {
    @Query(value = "SELECT * FROM meal_plan where user_id = :userid ", nativeQuery = true)
    List<MealPlan> getAllMealPlans(@Param(value = "userid") Long userid);
}
