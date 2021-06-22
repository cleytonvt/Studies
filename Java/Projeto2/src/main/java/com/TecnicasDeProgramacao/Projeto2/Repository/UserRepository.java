package com.TecnicasDeProgramacao.Projeto2.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.TecnicasDeProgramacao.Projeto2.Model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByUsuario(String usuario);
	
}

