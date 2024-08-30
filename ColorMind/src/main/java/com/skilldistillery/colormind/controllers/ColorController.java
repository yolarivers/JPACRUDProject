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

import jakarta.servlet.http.HttpSession;

@Controller
public class ColorController {

	@Autowired
	private ColorDAO colorDAO;

	@RequestMapping(path = {"home.do","/"}, method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("Home method called.");
		return "home";
	}

	@RequestMapping(path = {"list.do","/"}, method = RequestMethod.GET)
	public String listColors(Model model, HttpSession session) {
		List<Color> colors = colorDAO.findAll();
		model.addAttribute("colors", colors);
		System.out.println("List Colors method called with " + colors.size() + " colors.");
		return "list";
	}

	@RequestMapping(path = "schemes/list.do", method = RequestMethod.GET)
	public String listSchemes(Model model) {
		System.out.println("List Schemes method called.");
		return "schemes";
	}

	
	
	@RequestMapping(path = "colors/create.do", method = RequestMethod.POST)
	public String createColor(@RequestParam("name") String name, @RequestParam("hexCode") Optional<String> hexCode,
			@RequestParam("rgbValue") Optional<String> rgbValue, Model model) {
		String finalHexCode = hexCode.orElse("#FFFFFF");
		String finalRgbValue = rgbValue.orElse("255,255,255");

		return finalRgbValue;
	}

	
	

	@RequestMapping(path = "clearColors.do", method = RequestMethod.GET)
	public String clearColorList(HttpSession session) {
		session.removeAttribute("colorList");
		System.out.println("Color list removed from session.");
		return "redirect:/colors/list.do";
	}

	@RequestMapping(path = "clearColorsWithStatus.do", method = RequestMethod.GET)
	public String clearColorList(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		System.out.println("Session status set to complete. All session attributes cleared.");
		return "redirect:/colors/list.do";
	}
}
