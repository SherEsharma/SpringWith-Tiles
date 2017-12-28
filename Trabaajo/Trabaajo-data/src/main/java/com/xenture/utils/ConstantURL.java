package com.xenture.utils;

import org.apache.tiles.Attribute;

public class ConstantURL {
	// System Path
	public static final String RESOURCE_HANDLER = "/resources/**";
	public static final String RESOURCE_LOCATION = "/resources/";
	// layout component
	public static final String JSP_PACKAGE = "/WEB-INF/jsp/";
	public static final String HEADER = "/WEB-INF/layout/header.jsp";
	public static final String USER_HEADER = "/WEB-INF/layout/userHeader.jsp";
	public static final String USER_LEFT_MENU = "/WEB-INF/layout/leftMenu.jsp";
	public static final String FOOTER = "/WEB-INF/layout/footer.jsp";
	public static final String USER_FOOTER = "/WEB-INF/layout/userFooter.jsp";
	public static final String ADMIN_HEADER = "/WEB-INF/layout/adminHeader.jsp";
	public static final String ADMIN_LEFT_MENU = "/WEB-INF/layout/leftMenu.jsp";
	public static final String ADMIN_FOOTER = "/WEB-INF/layout/footer.jsp";
	public static final String ADMIN_EX_FOOTER = "/WEB-INF/layout/adminFooter.jsp";
	public static final String ADMIN_LEFT_FOOTER = "/WEB-INF/layout/leftMenu.jsp";
	public static final String JSP_EXTANTION = ".jsp";
	public static final Attribute BASE_TEMPLATE = new Attribute("/WEB-INF/layout/defaultLayout.jsp");
	// Constant URL
	public static final String REGISTRATION_URL = "registration";
	public static final String LOGIN_FORM_URL = "showLoginForm";
	public static final String USER_HOME_FORM_URL = "userHome";
	public static final String UPLOAD_EXCEL = "uploadExcel";
	public static final String HOME_URL = "home";
	public static final String USER_FORGET_PASSORD_URL = "forgotPassword";
	public static final String USER_HOME1_URL = "userHome1";
	public static final String WELCOME_USER_HOME_URL = "WelComeUserHome";
	public static final String CHANGE_PASSWORD_URL = "changePassword";
	public static final String CHANGE_PASSWORD_SUCCESS_MESSAGE = "Your password has been successfully";
	public static final String GET_PASSWORD_URL = "changePassword";

}