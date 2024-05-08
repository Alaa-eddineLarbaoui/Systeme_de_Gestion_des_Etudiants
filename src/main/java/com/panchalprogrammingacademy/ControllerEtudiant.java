package com.panchalprogrammingacademy;

import beans.Etudiant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ControllerEtudiant{

    private List<Etudiant> etudiants = new ArrayList<>();

    @RequestMapping(value = "/")
    public String Accueil(Model model){
        // add attribute to load modelMap
        model.addAttribute("Etudiant", new Etudiant());

        return "Accueil";
    }



}