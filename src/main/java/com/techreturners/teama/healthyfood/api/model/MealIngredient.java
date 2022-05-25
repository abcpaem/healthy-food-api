package com.techreturners.teama.healthyfood.api.model;

import javax.persistence.*;

@Entity
@Table(name = "meal_ingredient")
@IdClass(MealIngredientId.class)
public class MealIngredient {

    @Id
    @Column(name = "meal_id")
    Long mealId;

    @Id
    @Column(name = "ingredient_id")
    Long ingredientId;

    @Column
    int quantity;
}