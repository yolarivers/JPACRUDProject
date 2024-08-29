package com.skilldistillery.colormind.controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.skilldistillery.colormind.dao.ColorDAO;
import com.skilldistillery.colormind.entities.Color;

@Controller
@RequestMapping("/colors")
public class ColorController {

    @Autowired
    private ColorDAO colorDAO;

    @GetMapping("/list")
    public String listColors(Model model) {
        List<Color> colors = colorDAO.findAll();
        model.addAttribute("colors", colors);
        return "list";
    }

    @GetMapping("/create")
    public String createColorForm(Model model) {
        model.addAttribute("color", new Color());
        return "create";
    }

    @PostMapping("/create")
    public String createColor(@ModelAttribute Color color, @RequestParam("imageFile") MultipartFile imageFile) {
        if (!imageFile.isEmpty()) {
            try {
                String imagePath = saveImage(imageFile);
                color.setImageUrl(imagePath);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        colorDAO.create(color);
        return "redirect:/colors/list";
    }

    @GetMapping("/update")
    public String updateColorForm(@RequestParam int id, Model model) {
        Color color = colorDAO.findById(id);
        model.addAttribute("color", color);
        return "update";
    }

    @PostMapping("/update")
    public String updateColor(@ModelAttribute Color color) {
        colorDAO.update(color.getId(), color);
        return "redirect:/colors/list";
    }

    @PostMapping("/delete")
    public String deleteColor(@RequestParam int id) {
        colorDAO.deleteById(id);
        return "redirect:/colors/list";
    }

    private String saveImage(MultipartFile imageFile) throws IOException {
        String uploadDir = "src/main/webapp/static/images/";
        String originalFilename = imageFile.getOriginalFilename();
        String filePath = uploadDir + originalFilename;
        File dest = new File(filePath);
        imageFile.transferTo(dest);
        return "/static/images/" + originalFilename;
    }
}
