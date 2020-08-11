package com.gbabler.imagesverifier.configuration;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class AWSConfig {

    private ApplicationConfig applicationConfig;

    @Bean
    public AWSCredentials amazonAWSCredentials() {
        return new BasicAWSCredentials(applicationConfig.getAwsAccessKey(), applicationConfig.getAwsSecretKey());
    }
}
