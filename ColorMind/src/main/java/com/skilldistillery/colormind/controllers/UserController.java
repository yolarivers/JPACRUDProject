package com.skilldistillery.colormind.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.colormind.dao.UserDAO;
import com.skilldistillery.colormind.entities.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserDAO userdao;

	@GetMapping("/signup")
	public String signupForm(Model model) {
		model.addAttribute("user", new User());
		return "signup";
	}

	@PostMapping("/signup")
	public String signup(@ModelAttribute User user) {
		
		return "redirect:/login";
	}

	@GetMapping("/login")
	public String navigateTologin() {
		return "login";
	}
	@PostMapping("login.do")
	public String login(@RequestParam("username")String username,@RequestParam("password")String password,
			HttpSession session) {
		
		User foundUser  = userdao.findByUserNameAndPassword(username, password);
		session.setAttribute("loggedInUser", foundUser);
		
		return "myaccount";
	}
}
