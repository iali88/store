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
public class AdminControleur {
	
	private Path path;
	
	@Autowired
	private ProduitDao produitDao;
	

	@RequestMapping("/admin")
	public String pageAdmin() {
		return "admin";
	}
	
	@RequestMapping("/admin/inventaireProduit")
	public String inventaireProduit(Model model) {
		List<Produit> listeProduits = produitDao.getAllProduits();
		model.addAttribute("listeProduits", listeProduits);

		
		return "inventaireProduit";
	}
	
	
	@RequestMapping("/admin/inventaireProduit/ajouterProduit")
	public String ajouterProduit(Model model) {
		Produit produit = new Produit();
//		produit.setNomProduit("test");
//		produit.setCategorieProduit("categorieTest");
//		produit.setEtatProduit("neuf");
//		produit.setStockProduit(20);
		
		model.addAttribute("produit", produit);
		
		return "ajouterProduit";
		
	}
	
	@RequestMapping(value = "/admin/inventaireProduit/ajouterProduit", method= RequestMethod.POST)
	public String ajouterProduitByForm(@Valid @ModelAttribute("produit") Produit produit, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "ajouterProduit";
		}
		
		produitDao.addProduit(produit);
		
		MultipartFile imageProduit = produit.getImageProduit();
		String racine = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(racine + "\\WEB-INF\\resources\\images\\" +produit.getIdProduit()+".png");
		
		// on sauvegarde les images dans un dossier
		if(imageProduit != null && !imageProduit.isEmpty()) {
			try {
				imageProduit.transferTo(new File(path.toString()));
			} catch (Exception e) {
				throw new RuntimeException("Echec sauvegarde images", e);
			}
		}
		
		
		return "redirect:/admin/inventaireProduit";
		
	}
	
	
	@RequestMapping("/admin/inventaireProduit/supprimerProduit/{idProduit}")
	public String suprimerProduit(@PathVariable String idProduit, Model model, HttpServletRequest request) {
		
		// suppression de l'image
		String racine = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(racine + "\\WEB-INF\\resources\\images\\" + idProduit +".png");
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		// suppression de la rangée
		produitDao.deleteProduits(idProduit);
		
		return "redirect:/admin/inventaireProduit";
	}
	
	
	@RequestMapping("/admin/inventaireProduit/modifierProduit/{idProduit}")
	public String modifierProduit(@PathVariable String idProduit, Model model) {
		
		Produit produit = produitDao.getProduitById(idProduit);
		
		model.addAttribute(produit);
		
		return "modifierProduit";
	}
	
	@RequestMapping(value = "/admin/inventaireProduit/modifierProduit", method = RequestMethod.POST)
	public String modifierProduit(@Valid @ModelAttribute("produit") Produit produit, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "modifierProduit";
		}
		
		MultipartFile imageProduit = produit.getImageProduit();
		String racine = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(racine + "\\WEB-INF\\resources\\images\\" + produit.getIdProduit() +".png");
		
		if(imageProduit != null && !imageProduit.isEmpty()) {
			try {
				imageProduit.transferTo(new File(path.toString()));
			} catch (Exception e) {
				throw new RuntimeException("Echec sauvegarde image produit");
			}
		}
		
		produitDao.updateProduit(produit);
		
		return "redirect:/admin/inventaireProduit";
	}
}
