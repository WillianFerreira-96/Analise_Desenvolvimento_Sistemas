package br.com.descomplica.projeto.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.ExternalDocumentation;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;

@Configuration 
public class SpringDocConfig {
	@Bean
	public OpenAPI springShopOpenAPI() {
		return new OpenAPI()
				.info(new Info().title("Atividade Prática 2")
						.description("Habilitando a documentação de uma API com Springdoc")
						.version("1.0.0")
						.license(new License().name("Apache 2.0").url("http://springdoc.org")))
				.externalDocs(new ExternalDocumentation()
				.description("Link do Repositório da Aplicação")
				.url("http://localhost:8080"));
	}
}
