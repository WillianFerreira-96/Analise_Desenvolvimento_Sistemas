package com.descomplica.FrameBlog.models;

import com.descomplica.FrameBlog.deserializers.CustomAuthorityDeserializer;
import com.descomplica.FrameBlog.enums.RoleEnum;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import jakarta.persistence.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

@Entity
@Table(name = "User")
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    /*    @GeneratedValue(strategy = GenerationType.IDENTITY) -- Esse parâmetro define a estratégia de geração do ID
                AUTO     --->   (padrão) O JPA escolhe a estratégia com base no banco de dados.
                IDENTITY --->	Usa o recurso de auto-incremento do banco (ex: MySQL).
                SEQUENCE --->	Usa uma sequência do banco (ex: PostgreSQL, Oracle).
                TABLE    --->	Cria uma tabela auxiliar para gerar IDs (mais raro).    */

    /*O JpaRepository segue o padrão de camelCase para consultas no banco de dados
    e caso algum elemento do seu banco de dados for padrão snake_case, use a
    notação @Column para especificar a versão com snake_case e
    crie os atributos da classe em camelCase*/
    @Column(name = "nome_completo")
    private String nomeCompleto;
    private Long userId;
    private String name;
    private String email;
    private String username;
    private String password;
    private RoleEnum role;

    public User() {
    }
    public User(final Long userId, final String name, final String email, final String username, final String password, final RoleEnum role) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public RoleEnum getRole() {
        return role;
    }

    public void setRole(RoleEnum role) {
        this.role = role;
    }

    @Override
    @JsonDeserialize(using = CustomAuthorityDeserializer.class)
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (this.role == RoleEnum.ADMIN) {
            return List.of(
                    new SimpleGrantedAuthority("ROLE_ADMIN"),
                    new SimpleGrantedAuthority("ROLE_USER")
            );
        }
        return List.of(
                new SimpleGrantedAuthority("ROLE_USER")
        );
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}