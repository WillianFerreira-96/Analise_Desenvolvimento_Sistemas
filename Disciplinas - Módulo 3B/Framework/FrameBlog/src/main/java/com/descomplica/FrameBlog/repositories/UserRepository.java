package com.descomplica.FrameBlog.repositories;

import com.descomplica.FrameBlog.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
/*Essa camada é uma interface que se comunica diretamente com
o banco de dados através da extenção dos métodos do JpaRepository */
public interface UserRepository extends JpaRepository<User, Long> {
    /*JpaRepository<User, Long> Significa: JpaRepository<NomeDaEntidade, TipoDeDadoDoElementoIdDaEntidade>*/

    /*
    CREATE--------------------------------------------------------------------------------------------------------
        save()
    READ----------------------------------------------------------------------------------------------------------
        findBy...()
            O "...Username" depois do "findBy..." , faz referencia ao atributo da classe instanciada.
            Ou seja, no caso: Usuario findByNomeCompleto(String nomeCompleto), significa que existe um atributo
            chamado "nomeCompleto" na classe "Usuario" e o JPA entende isso automaticamente no seu código.

        findById(id)
        findAll()
    UPDATE--------------------------------------------------------------------------------------------------------
        save() (Se ID existente)
    DELETE--------------------------------------------------------------------------------------------------------
        delete()
        deleteById(id)

    Todos esses métodos já fazem parte do JPA
    */

    User findByUsername(String login);
}
