SELECT * FROM dbo.Fn_ListeCommandesLivreesEnRetard(3)

--le nom d'un objet dans une base de donnees se compose de 4 elements

--le 1er element c'est le nom du moteur : TFNSJAVA04\SQLEXPRESS
--le 2eme element c'est le nom de la DB : Northwind (par defaut la base en cours d'utilisation)
--le 3eme element c'est le nom du schéma : (par defaut) dbo (microsoft) public (postgre)
	--un schema est une façon logique de regrouper les objets
--le 4eme element c'est le nom de l'objet