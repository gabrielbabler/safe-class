package com.gbabler.imagesverifier.configuration;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Getter
@Configuration
public class ApplicationConfig {
    @Value("${aws.credentials.access-key}")
    private String awsAccessKey;

    @Value("${aws.credentials.secret-key}")
    private String awsSecretKey;
}
