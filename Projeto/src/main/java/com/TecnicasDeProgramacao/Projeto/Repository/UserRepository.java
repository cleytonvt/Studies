package com.TecnicasDeProgramacao.Projeto.Repository;


import org.springframework.data.repository.CrudRepository;
import com.TecnicasDeProgramacao.Projeto.Model.User;

public interface UserRepository extends CrudRepository<User, Long> {
	
	User findByUsuario(String usuario);
}


