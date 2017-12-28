package com.xenture.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.xenture.utils.ConstantURL;
import com.xenture.utils.IConstant;



/**
 * 
 * @author aartek
 *
 */
@Controller
public class RegistrationController {

	public static final String REDIRECT = "redirect:/";

	

	



	/**
	 * show user home page
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String showWelcomePage(Model model) {
		return ConstantURL.HOME_URL;
	}

	
	/**
	 * This method is used for logout user.
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.removeAttribute(IConstant.USER_SESSION);
		}
		return REDIRECT + ConstantURL.HOME_URL;

	}

}
