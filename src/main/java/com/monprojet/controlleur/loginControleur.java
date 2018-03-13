package com.monprojet.controlleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class loginControleur {

	@RequestMapping("/login")
	public String login(@RequestParam (value="erreur", required=false) String erreur, 
						@RequestParam (value="logout", required=false) String logout,
						Model model ) {
		
		if(erreur != null) {
			model.addAttribute("erreur", "Utilisateur/mot de passe non reconnu.");
		}
		
		if(logout != null) {
			model.addAttribute("msg", "Déconnexion réussie.");
		}
		
		return "login";
		
	}
	
}
