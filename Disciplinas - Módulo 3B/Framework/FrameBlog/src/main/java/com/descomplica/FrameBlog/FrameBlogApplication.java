package com.descomplica.FrameBlog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan("com.descomplica.FrameBlog.models")
public class FrameBlogApplication {

	public static void main(String[] args) {
		SpringApplication.run(FrameBlogApplication.class, args);
	}

}
