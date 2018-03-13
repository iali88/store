package com.monprojet.controlleur;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.monprojet.dao.ProduitDao;
import com.monprojet.model.Produit;

@Controller
public class AccueilControlleur {

	private Path path;
	
	@Autowired
	private ProduitDao produitDao;
	
	@RequestMapping("/")
	public String accueil() {
		return "accueil";
	}
	
	
	@RequestMapping("/produits")
	public String getProduits(Model model) {
		
		List<Produit> listeProduits = produitDao.getAllProduits();
		
		// on met l'objet ds le modèle
		model.addAttribute("listeProduits", listeProduits);
		
		return "produits";
	}
	
	@RequestMapping("/produits/detailsProduit/{idProduit}")
	public String getDetailsProduit(@PathVariable String idProduit, Model model) throws IOException {
		
		Produit produit = produitDao.getProduitById(idProduit);
		model.addAttribute(produit);
		
		return "detailsProduit";
	}
	
}
