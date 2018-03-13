package com.monprojet.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

/**
 * Bean produit
 * @author iai
 *
 */

@Entity
public class Produit {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String idProduit;
	
	// Empecher la sauvegarde en bdd
	@Transient
	private MultipartFile imageProduit;
	
	@NotEmpty (message = "Veuillez saisir le nom du produit.")
	private String nomProduit;
	
	private String categorieProduit;
	
	private String descriptionProduit;
	
	@Min (value = 0, message = "Le prix doit être supérieur ou égal à 0.")
	private double prixProduit;
	
	private String etatProduit;
	
	@Min (value = 0, message = "Le stock doit être inférieur ou égal à 0.")
	private int stockProduit;
	
	private String marqueProduit;

	public String getNomProduit() {
		return nomProduit;
	}

	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}

	public String getCategorieProduit() {
		return categorieProduit;
	}

	public void setCategorieProduit(String categorieProduit) {
		this.categorieProduit = categorieProduit;
	}

	public String getDescriptionProduit() {
		return descriptionProduit;
	}

	public void setDescriptionProduit(String descriptionProduit) {
		this.descriptionProduit = descriptionProduit;
	}

	public double getPrixProduit() {
		return prixProduit;
	}

	public void setPrixProduit(double prixProduit) {
		this.prixProduit = prixProduit;
	}

	public String getEtatProduit() {
		return etatProduit;
	}

	public void setEtatProduit(String etatProduit) {
		this.etatProduit = etatProduit;
	}

	public int getStockProduit() {
		return stockProduit;
	}

	public void setStockProduit(int stockProduit) {
		this.stockProduit = stockProduit;
	}

	public String getMarqueProduit() {
		return marqueProduit;
	}

	public void setMarqueProduit(String marqueProduit) {
		this.marqueProduit = marqueProduit;
	}

	public String getIdProduit() {
		return idProduit;
	}

	public void setIdProduit(String idProduit) {
		this.idProduit = idProduit;
	}

	public MultipartFile getImageProduit() {
		return imageProduit;
	}

	public void setImageProduit(MultipartFile imageProduit) {
		this.imageProduit = imageProduit;
	}
	
	
	
	

}
