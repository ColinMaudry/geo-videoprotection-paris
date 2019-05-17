# Géo vidéo protection Paris

> Liste géo-tagguée des caméras de vidéoprotection telles que listées dans le BO de la ville de Paris du 01/02/2019

L'objectif de ce dépôt est :

1. D'extraire la liste des emplacements de caméras tels que décrits dans le [bulletin officiel de la Ville de Paris du 1er février 2019](https://www.api-site.paris.fr/paris/public/2019%2F1%2F2019_02_01_BOVP_009.pdf) (également dans le dossier `documents`)
2. De mettre cette liste à disposition selon les principes de l'Open Data (licence ouverte, format de données standard)
3. Géo-tagger ces emplacements afin de les visualiser sur une carte

Il y a en fait deux listes d'emplacements :

- annexe 1 (1 391 emplacements) :  le plan de Vidéoprotection pour la Préfecture de Police
- annexe 2 (?):  le plan de Vidéoprotection pour Paris, liste des caméras visibles par les agents habilités de la Ville de Paris

Ces deux listes ont de nombreux emplacements en commun.

NextINpact a résumé la situation dans [cet article](https://www.nextinpact.com/brief/-a-paris--1-400-implantations-de-cameras-de-surveillance-autorisees-par-arrete-8706.htm).

## Mode opératoire

1. Conversion du PDF en fichier MS Excel grâce à l'outil en ligne [PDFtables.com](http://pdftables.com)
2. Nettoyage du texte ne faisant pas partie des données dans LibreOffice
3. Reconstitution des lignes manuellement dans LibreOffice pour l'annexe 1 (certaines lignes étaient coupées en deux, des espaces manquaient)
4. Reconstitution automatique quasi-complète de la colonne `Implantation` de l'annexe 2 grâce
    - à la colonne `Implantation` nettoyée de l'annexe 1
    - aux colonnes `Numéro` des annexes 1 et 2
    - à la fonction [`VLOOKUP`](https://wiki.openoffice.org/wiki/Documentation/How_Tos/Calc:_VLOOKUP_function) de LibreOffice
5. Remplissage manuel des quelques lignes manquantes de l'annexe 2 grâce à la colonne numéro et le PDF source
6. Export au format CSV, encodage UTF-8, colonne séparées par des point-virgules (;).

## Attribution

Photo bannière par [Free-Photos](https://pixabay.com/fr/users/Free-Photos-242387/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1149495) de [Pixabay](https://pixabay.com/fr/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1149495).
