package com.techreturners.teama.healthyfood.api.config;

import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class UserSecurityTests {
    @SneakyThrows
    @Test
    void checkValidatePasswordIsTrue() {
        String originalPassword = "password";
        String generatedPasswordHash = UserSecurityConfig.generatePasswordHash(originalPassword);

        boolean matched = UserSecurityConfig.validatePassword(originalPassword, generatedPasswordHash);

        assertTrue(matched);
    }

    @SneakyThrows
    @Test
    void checkValidatePasswordIsFalse() {
        String originalPassword = "password";
        String generatedPasswordHash = UserSecurityConfig.generatePasswordHash(originalPassword);

        boolean matched = UserSecurityConfig.validatePassword(originalPassword+"1", generatedPasswordHash);

        assertFalse(matched);
    }
}
