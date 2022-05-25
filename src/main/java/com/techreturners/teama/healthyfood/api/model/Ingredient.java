package com.techreturners.teama.healthyfood.api.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Ingredient {

    @Id
    @GeneratedValue
    @Column(updatable = false, nullable = false)
    Long id;

    @Column
    String name;

    @Column
    int calories;

    @Column
    int carbohydrates;

    @Column
    int fat;

    @Column
    int protein;

    @Column
    int fibre;

    @Column
    String photo;

    @Column
    int allergen;

    @Column
    int amount;

    @Column
    String measure;

    @Column
    String category;

    @Column(name = "catid")
    Long categoryid;

}
