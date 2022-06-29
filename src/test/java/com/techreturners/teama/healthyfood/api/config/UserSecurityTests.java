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
        String generatedPasswordHash = UserSecurity.generatePasswordHash(originalPassword);

        boolean matched = UserSecurity.validatePassword(originalPassword, generatedPasswordHash);

        assertTrue(matched);
    }

    @SneakyThrows
    @Test
    void CheckValidatePasswordIsFalse() {
        String originalPassword = "password";
        String generatedPasswordHash = UserSecurity.generatePasswordHash(originalPassword);

        boolean matched = UserSecurity.validatePassword(originalPassword+"1", generatedPasswordHash);

        assertFalse(matched);
    }
}
