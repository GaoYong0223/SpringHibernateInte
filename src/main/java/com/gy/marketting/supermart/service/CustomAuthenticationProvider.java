package com.gy.marketting.supermart.service;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service("customAuthenticationProvider")
public class CustomAuthenticationProvider  extends AbstractUserDetailsAuthenticationProvider {


	
	private UserDetailsService userDetailsService;
	
	private  Logger logger = LoggerFactory.getLogger(CustomAuthenticationProvider.class);
	
	@Autowired
	private UserLoginService userLoginService;

	public UserDetailsService getUserDetailsService() {
		return userDetailsService;
	}

	public void setUserDetailsService(UserDetailsService userDetailsService) {
		logger.debug("setUserDetailsService");
		this.userDetailsService = userDetailsService;
	}

	protected void additionalAuthenticationChecks(UserDetails userDetails,
			UsernamePasswordAuthenticationToken authentication)
			throws AuthenticationException {
		logger.debug("additionalAuthenticationChecks user: {}, pass: {}", userDetails.getUsername(), userDetails.getPassword());
		String rawPassword = (String) authentication.getCredentials();
		String passwd = userDetails.getPassword();
		
		if ( !rawPassword.equals(passwd)){//!EncryptUtil.matches(rawPassword, passwd)) {
			throw new AuthenticationServiceException(
					messages.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", new Locale("en")));
		}
	}

	@Override
	protected UserDetails retrieveUser(String username,
			UsernamePasswordAuthenticationToken authentication)
			throws AuthenticationException {
		logger.debug("retrieveUser user name: {} ", username);
		UserDetails user = null;
		try {
			user = userLoginService.loadUserByUsername(username);
		} catch (UsernameNotFoundException notFound) {
			throw notFound;
		} catch (AuthenticationException repositoryProblem) {
			throw new AuthenticationServiceException(repositoryProblem
					.getMessage(), repositoryProblem);
		}
		if (user == null) {
			throw new AuthenticationServiceException(
					"UserDetailsService returned null, which is an interface contract violation");
		}
		return user;
	}
}