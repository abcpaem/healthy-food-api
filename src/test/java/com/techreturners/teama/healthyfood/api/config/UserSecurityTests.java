package com.techreturners.teama.healthyfood.api.config;

import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class UserSecurityTests {
    @SneakyThrows
    @Test
    void CheckValidatePasswordIsTrue() {
        String originalPassword = "password";
        String generatedPasswordHash = UserSecurityConfig.generatePasswordHash(originalPassword);

        boolean matched = UserSecurityConfig.validatePassword(originalPassword, generatedPasswordHash);

        assertTrue(matched);
    }

    @SneakyThrows
    @Test
    void CheckValidatePasswordIsFalse() {
        String originalPassword = "password";
        String generatedPasswordHash = UserSecurityConfig.generatePasswordHash(originalPassword);

        boolean matched = UserSecurityConfig.validatePassword(originalPassword+"1", generatedPasswordHash);

        assertFalse(matched);
    }
}
