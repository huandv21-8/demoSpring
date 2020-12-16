package com.example.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class ExampleApplicationInitializer implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {

//		XmlWebApplicationContext webApplicationContext = new XmlWebApplicationContext();
//		webApplicationContext.setConfigLocation("classpath:helloDispatcher-servlet.xml");

		AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
		webApplicationContext.register(ExampleAppConfig.class);

		// create a dispatcher servlet oject
		DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);

		
		// registerd dispatcher servlet with servlet context
		ServletRegistration.Dynamic myCustomDispatcherServlet = servletContext.addServlet("exampleDispatcherServlet",
				dispatcherServlet);

		myCustomDispatcherServlet.setLoadOnStartup(1);
		myCustomDispatcherServlet.addMapping("/");

	}

}
