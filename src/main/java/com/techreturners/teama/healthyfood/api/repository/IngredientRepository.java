package com.techreturners.teama.healthyfood.api.repository;

import com.techreturners.teama.healthyfood.api.model.Ingredient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientRepository extends CrudRepository<Ingredient, Long> {

    Ingredient findByName(String ingredientName);
}
