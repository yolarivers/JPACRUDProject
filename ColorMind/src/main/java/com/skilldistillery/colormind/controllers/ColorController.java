package com.skilldistillery.colormind.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.skilldistillery.colormind.dao.ColorDAO;
import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class ColorController {

	@Autowired
	private ColorDAO colorDAO;

	@RequestMapping(path = { "home.do", "/" }, method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("Home method called.");
		return "home";
	}

	@RequestMapping(path = { "colorslist.do" }, method = RequestMethod.GET)
	public String listColors(Model model, HttpSession session) {
		List<Color> colors = colorDAO.findAll();
		model.addAttribute("colors", colors);
		System.out.println("List Colors method called with " + colors.size() + " colors.");
		return "list";
	}

	@RequestMapping(path = "schemeslist.do", method = RequestMethod.GET)
	public String listSchemes(Model model) {
		System.out.println("List Schemes method called.");
		return "schemes";
	}

	@RequestMapping(path = "colorcreate.do", method = RequestMethod.POST)
	public String createColor(Color color, Model model, HttpSession session) {
		User loggedInUser = (User) session.getAttribute("loggedInUser");
		if (loggedInUser != null) {
			color = colorDAO.create(color, loggedInUser.getId());
			return "redirect:colorslist.do";
			
		} else {
			return "redirect:login";
		}

		
	}

	@RequestMapping(path = "clearColors.do", method = RequestMethod.GET)
	public String clearColorList(HttpSession session) {
		session.removeAttribute("colorList");
		System.out.println("Color list removed from session.");
		return "redirect:colorslist.do";
	}

	@RequestMapping(path = "clearColorsWithStatus.do", method = RequestMethod.GET)
	public String clearColorList(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		System.out.println("Session status set to complete. All session attributes cleared.");
		return "redirect:colorslist.do";
	}
}
