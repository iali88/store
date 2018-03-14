# store

Ce projet est un début de site de e-commerce. Vous pouvez consulter une liste de produits en vente. 
Vous pouvez ajouter, supprimer et modifier les objets en vente en vous connectant en tant que admin (mdp : admin).
 
Ce projet a été réalisé avec Spring MVC, Hibernate et Bootstrap. Il fonctionne avec une base de donnée H2 (http://www.h2database.com/html/main.html) et un serveur Tomcat (Tomcat 8.5)

Instructions : 

1. Faire un clone du projet : 
	git clone https://github.com/iali88/store.git

2. Importer le projet dans son workspace

3. Dans les propriétés du projet, configurer "Project Facets" comme suit : 
![alt text](https://github.com/iali88/store.git/install-screen/project_Facets.png)

4. Configurer le répertoire de déploiement de Tomcat vers 
	<chemin du workspace>/store/src/main/webapp

![alt text](https://github.com/iali88/store.git/install-screen/tomcat.png)

5. Dans les propriétés du projet, configurer "Deployment Assembly" comme suit :

![alt text](https://github.com/iali88/store.git/install-screen/Deplyment_Assembly.png)

Il faudra ajouter "Maven Dependencies" : add -> Java Build Path Entries -> Maven Dependencies 
et le dossier de deploiement :           add-> folder -> src/main/webapp 

