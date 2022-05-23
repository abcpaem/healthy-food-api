package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.model.Meal;
import com.techreturners.teama.healthyfood.api.model.MealPlan;
import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.repository.MealPlanRepository;
import com.techreturners.teama.healthyfood.api.repository.MealRepository;
import com.techreturners.teama.healthyfood.api.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class MealPlanServiceImpl implements MealPlanService {

    @Autowired
    MealRepository mealRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    MealPlanRepository mealPlanRepository;

    @Override
    public List<MealPlan> getAllMealPlans(Long userId){
        return mealPlanRepository.getAllMealPlans(userId);
    }
    public MealPlan createMealPlan(Long mealid, Long userId, LocalDateTime date){

        User user = userRepository.findById(userId).orElse(null);
        if (user ==null){ throw new IllegalArgumentException();}
        Meal meal = mealRepository.findById(mealid).orElse(null);
        if (meal == null){ throw  new IllegalArgumentException();}
        MealPlan mealPlan = new MealPlan();
        mealPlan.setUser(user);
        mealPlan.setMeal(meal);
        mealPlan.setDate(date);
        mealPlanRepository.save(mealPlan);
        return mealPlan;
    }

    @Override
    public MealPlan getMealPlanById(Long id) {
        return null;
    }

    @Override
    public MealPlan insertIntoMealPlan(MealPlan mealPlan) {
        return null;
    }

    @Override
    public void updateMealPlanById(Long id) {

    }

    @Override
    public void deleteMealPlanById(Long id) {

    }
}
