package com.poly.utils;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class login {
	
	@NotBlank(message="{NotBlank.l.username}")
	private String username;
	
	@NotBlank(message="{NotBlank.l.password}")
	private String password;
	
}
