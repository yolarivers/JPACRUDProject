package com.skilldistillery.colormind.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.ColorScheme;
import com.skilldistillery.colormind.services.ColorSchemeService;

@Controller
@RequestMapping("/schemes")
public class ColorSchemeController {

    @Autowired
    private ColorSchemeService schemeService;

    @GetMapping("/list")
    public String listSchemes(Model model) {
        List<ColorScheme> schemes = schemeService.findAll();
        model.addAttribute("schemes", schemes);
        return "list_schemes";
    }

    @GetMapping("/create")
    public String createSchemeForm(Model model) {
        List<Color> colors = schemeService.findAllColors();
        model.addAttribute("colors", colors);
        model.addAttribute("scheme", new ColorScheme());
        return "create_scheme";
    }

    @PostMapping("/create")
    public String createScheme(@ModelAttribute ColorScheme scheme, @RequestParam List<Integer> colorIds) {
        schemeService.create(scheme, colorIds);
        return "redirect:/schemes/list";
    }

    @GetMapping("/update")
    public String updateSchemeForm(@RequestParam int id, Model model) {
        ColorScheme scheme = schemeService.findById(id);
        List<Color> colors = schemeService.findAllColors();
        model.addAttribute("colors", colors);
        model.addAttribute("scheme", scheme);
        return "update_scheme";
    }

    @PostMapping("/update")
    public String updateScheme(@ModelAttribute ColorScheme scheme, @RequestParam List<Integer> colorIds) {
        schemeService.update(scheme.getId(), scheme, colorIds);
        return "redirect:/schemes/list";
    }

    @PostMapping("/delete")
    public String deleteScheme(@RequestParam int id) {
        schemeService.deleteById(id);
        return "redirect:/schemes/list";
    }
}
