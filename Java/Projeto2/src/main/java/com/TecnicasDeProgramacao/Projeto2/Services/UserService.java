package com.TecnicasDeProgramacao.Projeto2.Services;

import com.TecnicasDeProgramacao.Projeto2.Model.User;

public interface UserService extends GenericService<User> {

	boolean authenticate(String usuario, String senha);
	
	User findByEmail(String usuario);

	
}
