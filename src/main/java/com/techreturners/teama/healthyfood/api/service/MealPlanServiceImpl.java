package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.model.MealPlan;
import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.repository.MealPlanRepository;
import com.techreturners.teama.healthyfood.api.repository.MealRepository;
import com.techreturners.teama.healthyfood.api.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
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

    @Override
    public List<MealPlan> createMealPlan(List<Long> meals, Long userId, LocalDateTime date) {
        List<MealPlan> mealPlansList = new ArrayList<>();
        User user = userRepository.findById(userId).get();
        for (Long mealId : meals) {
            MealPlan mealPlan = new MealPlan();
            mealPlan.setUser(user);
            mealPlan.setMeal(mealRepository.findById(mealId).get());
            mealPlan.setDate(date);

            mealPlanRepository.save(mealPlan);
            mealPlansList.add(mealPlan);
        }
        return mealPlansList;
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
