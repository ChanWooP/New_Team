package com.sp.owner.owner;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class MyAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

	@Autowired
	private OwnerService service;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		
		super.onAuthenticationSuccess(request, response, authentication);
	}
	
	
}
