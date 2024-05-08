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

    // La methode Afficher:
    @RequestMapping("/etudiants")
    public String showEtudiants(Model model) {

        model.addAttribute("Etudiants", etudiants);
        return "Student";
    }
    //La methode Ajouter:
    @RequestMapping(value = "/saveEtudiant")
    public String saveEtudiant(Etudiant etudiant) {
        etudiants.add(etudiant);
        return "redirect:/etudiants";
    }
    //LAfonction Supprimer:
    @RequestMapping(value="/deleteEtudiant/{matricule}")
    public String deleteEtudiant(@PathVariable("matricule") String matricule){
        etudiants.removeIf(etudiant -> etudiant.getMatricule().equals(matricule));
        return "redirect:/etudiants";
    }

}