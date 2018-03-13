package com.monprojet.dao;

import java.util.List;

import com.monprojet.model.Produit;

public interface ProduitDao {

	Produit getProduitById(String id);
	
	List<Produit> getAllProduits();
	
	void updateProduit(Produit produit);
	
	void addProduit(Produit produit);
	
	void deleteProduits(String id);
	
}
