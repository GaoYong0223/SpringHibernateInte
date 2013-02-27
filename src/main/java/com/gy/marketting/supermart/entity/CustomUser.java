package com.gy.marketting.supermart.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUser implements Serializable, UserDetails {

	private static final long serialVersionUID = 1201392234549297485L;
	private long id;
	private String password;
	private String username;
	private HashSet<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();

	/**
	 * Instantiates a new custom user.
	 *
	 * @param id the id
	 * @param username the username
	 * @param password the password
	 * @param authorities the authorities
	 */
	public CustomUser(int id, String username, String password, String auth) {
		this.id = id;
		this.password = password;
		this.username = username;
		this.grantedAuthorities.add(new GrantedAuthorityImpl(auth));
	}

	public Collection<GrantedAuthority> getAuthorities() {
		
		return grantedAuthorities;
	}
	
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}
	
	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	
	public String getPassword() {
		return this.password;
	}


	public String getUsername() {
		return this.username;
	}
/**
* For convenience the below methods return all true; In a real application it is not desired, however.
*/

	public boolean isAccountNonExpired() {
		return true;
	}


	public boolean isAccountNonLocked() {
		return true;
	}


	public boolean isCredentialsNonExpired() {
		return true;
	}


	public boolean isEnabled() {
		return true;
	}
}