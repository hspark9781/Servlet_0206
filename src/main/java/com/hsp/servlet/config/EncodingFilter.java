package com.hsp.servlet.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*") // /servlet/* -> servlet페이지만
						 // /* 모든 페이지	

public class EncodingFilter implements Filter {
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			chain.doFilter(request, response);
			
			
	}
}
