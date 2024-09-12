package com.skilldistillery.colormind.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.colormind.dao.UserDAO;
import com.skilldistillery.colormind.entities.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserDAO userdao;

	@GetMapping("signup")
	public String signupForm(Model model) {
		model.addAttribute("user", new User());
		return "signup";
	}

	@PostMapping("signup")
	public String signup(@RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmPassword, User user, Model model) {
		
		if (!password.equals(confirmPassword)) {
			model.addAttribute("error", "Passwords do not match.");
			return "signup";
		}

		if (!isValidPassword(password)) {
			model.addAttribute("error",
					"Password must be at least 8 characters long and contain at least one number and one special character.");
			return "signup";
		}

		
		user.setPassword(password); 
		userdao.save(user);
		return "redirect:login";
	}

	@GetMapping("login")
	public String navigateToLogin() {
		return "login";
	}

	@PostMapping("login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) {

		
		User foundUser = userdao.findByUserName(username);

		if (foundUser == null) {
			
			model.addAttribute("loginError", "Account does not exist. Please sign up.");
			return "login";
		}

	
		if (!foundUser.getPassword().equals(password)) {
			model.addAttribute("loginError", "Incorrect password. Please try again.");
			return "login";
		}

		
		session.setAttribute("loggedInUser", foundUser);
		return "redirect:myaccount";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		return "redirect:home";
	}

	@GetMapping("myaccount")
	public String viewMyAccount(HttpSession session, Model model) {
		User loggedInUser = (User) session.getAttribute("loggedInUser");
		if (loggedInUser != null) {
			model.addAttribute("user", loggedInUser);
			return "myaccount";
		} else {
			return "redirect:login";
		}
	}

	@GetMapping("createPalette")
	public String showCreatePaletteForm() {
		return "createPalette";
	}

	@GetMapping("list")
	public String showColorList(Model model) {
		model.addAttribute("colors", userdao.findAllColors());
		return "list";
	}

	
	private boolean isValidPassword(String password) {
		
		String passwordPattern = "^(?=.*\\d)(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$";
		return password.matches(passwordPattern);
	}
}
