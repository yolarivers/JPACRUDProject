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
	public String signup(User user) {
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

		User foundUser = userdao.findByUserNameAndPassword(username, password);
		if (foundUser != null) {
			session.setAttribute("loggedInUser", foundUser);
			return "redirect:myaccount";
		} else {
			model.addAttribute("loginError", "Invalid username or password");
			return "login";
		}
	}
	
	@RequestMapping("logout")
	public String logout(
			HttpSession session, Model model) {
			session.invalidate();	
			return "home";
	
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
}
