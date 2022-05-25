package com.techreturners.teama.healthyfood.api.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Meal {

    @Id
    @GeneratedValue
    @Column(updatable = false, nullable = false)
    Long id;

    @Column
    String name;

    @Column
    String shortdesc;

    @Column
    String longdesc;

    @ManyToMany
    @JoinTable(
            name = "meal_category",
            joinColumns = {@JoinColumn(name = "meal_id", referencedColumnName = "id")},
            inverseJoinColumns ={@JoinColumn(name = "category_id", referencedColumnName = "id")}
    )
    List<Category> categories;

    @Column
    String category;

    @Column
    int preptime;

    @Column
    int servings;

    @Column
    int calories;

    @ManyToMany
    @JoinTable(
            name = "meal_ingredient",
            joinColumns = {@JoinColumn(name = "meal_id", referencedColumnName = "id")},
            inverseJoinColumns ={@JoinColumn(name = "ingredient_id", referencedColumnName = "id")}
    )
    List<Ingredient> ingredients;

    @Column
    String ingredient;

    @ManyToMany
    @JoinTable(
            name = "meal_diet",
            joinColumns = {@JoinColumn(name = "meal_id", referencedColumnName = "id")},
            inverseJoinColumns ={@JoinColumn(name = "diet_id", referencedColumnName = "id")}
    )
    List<Diet> diets;

    @Column
    String diet;

    @Column
    String photo;

    @Column
    String url;

    @Column
    LocalDateTime dateadded;

    @Column
    LocalTime start;

    @Column
    LocalTime end;
}
