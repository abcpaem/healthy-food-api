package com.techreturners.teama.healthyfood.api.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(updatable = false, nullable = false)
    Long id;

    @Column
    String email;

    @Column
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    String password;

    @Column
    String firstname;

    @Column
    String lastname;

    @Column
    String dietid;

    @Column
    String exclude;

    @Column
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    LocalDateTime dateadded;
}
