package com.TecnicasDeProgramacao.Projeto.Config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.TecnicasDeProgramacao.Projeto.Model.User;
import com.TecnicasDeProgramacao.Projeto.Repository.UserRepository;

@Repository
public class SSUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String usuario) throws UsernameNotFoundException {
		User user = userRepository.findByUsuario(usuario);
		
		if (usuario == null) {
			throw new UsernameNotFoundException("Usuário não encontrado!");
		}
		return user;
	}

}
