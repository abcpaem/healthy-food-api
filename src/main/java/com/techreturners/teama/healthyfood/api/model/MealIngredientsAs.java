package com.techreturners.teama.healthyfood.api.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@IdClass(MealIngredientsAsId.class)
public class MealIngredientsAs {
    @Id
    @GeneratedValue
    @Column(updatable = false, nullable = false)
    Integer id;

    @Column(name = "meal_id")
    Long mealId;

    @Column (name = "ingredient_id")
    Long ingredientId;

    @Column
    int quantity;
}
