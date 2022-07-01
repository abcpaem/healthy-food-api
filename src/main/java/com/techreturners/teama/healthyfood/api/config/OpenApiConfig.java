package com.techreturners.teama.healthyfood.api.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@SecurityScheme(
        name = "basicAuth",
        type = SecuritySchemeType.HTTP,
        scheme = "basic"
)
@OpenAPIDefinition(
        info = @Info(
                title = "\uD83E\uDD57 Healthy Food API",
                version = "v1",
                description = "Do you need to make your diet healthier? Then this is the API for you! \uD83D\uDE0A",
                license = @License(name = "GNU General Public License v3.0", url = "https://github.com/abcpaem/healthy-food-api/blob/main/LICENSE")))
public class OpenApiConfig {
    @Bean
    public GroupedOpenApi swaggerConfiguration() {
        return GroupedOpenApi.builder()
                .group("healthyfood-api")
                .pathsToMatch("/api/v1/**")
                .build();
    }
}
