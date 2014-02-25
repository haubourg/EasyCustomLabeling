EasyCustomLabeling
==================
Easy manual and data defined labeling plugin for QGIS 
See complete documentation and tutorials here: https://github.com/haubourg/EasyCustomLabeling/wiki
EasyCustomLabeling is a plugin for QGIS, designed to simplify the work for manual and data defined labeling. 
The tool duplicates a data vector layer into a new memory layer made of lines, adds all necessary fields for advanced custom labeling (label location, rotation, color, font, callout, alignements...).
The resulting layer is activated ready to use labeling tools. 
Data is saved in Memory Layer provider, which means it is NOT saved to a file or a database. 

To make thoses layers persistent, please install Memory Layer Saver (v >=3.2) plugin, that saves all memory layers to a qdatastream file along the project (file: qgis_project.qgs.mldata).

Please report any bug, issue or feature request either here on Github tracker or in QGIS redmine tracker



---- version Francaise ------
plugin QGIS d'étiquetage manuel simplifié
Toute la documentation et les tutoriels ici: https://github.com/haubourg/EasyCustomLabeling/wiki
EasyCustomLabeling est une extension développée pour simplifer le travail d'étiquetage personnalisé et basé sur des champs de données. Cet outil duplique une couche vecteur dans une couche mémoire de lignes, et y ajoute tous les champs nécessaires pour l'étiquetage personnalisé (emplacement de l'étiquette, rotation, couleur, police, alignements...). La couche résultante est prête à être modifiée directement (éditable et outils d'étiquetages activés). 
Les données sont sauvées en mémoire, ce qui signifie qu'elles ne sont PAS sauvées dans un fichier ou une base. 
Pour sauver ces données et pouvoir réouvrir un projet avec les étiquettes, il faut installer l'extension Memory Layer Saver (v >=3.2), qui sauve toutes les couches mémoires dans un fichier Qdatastream (fichier: projet_qgis.qgs.mldata)
