package com.monprojet.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.monprojet.dao.ProduitDao;
import com.monprojet.model.Produit;

@Repository
@Transactional
public class ProduitDaoImpl implements ProduitDao {
	
	@Autowired 
	private SessionFactory sessionFactory;
	
	public Produit getProduitById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Produit produit = (Produit) session.get(Produit.class, id);
		session.flush();
		return produit;
	}

	public List<Produit> getAllProduits() {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Produit");
		List<Produit> prdListe = query.list();
		session.flush();
		
		return prdListe;
	}
	
	public void updateProduit(Produit produit) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(produit);
		session.flush();
	}

	public void addProduit(Produit produit) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(produit);
		session.flush();
	}

	public void deleteProduits(String id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getProduitById(id));
		session.flush();
	}
	
	
}
