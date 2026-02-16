# StartPharo

 # Exercices Techniques Pharo

Ce dépôt contient les solutions aux exercices techniques avec Pharo . Le projet est divisé en deux modules principaux démontrant l'utilisation de la programmation orientée objet et de la réflexion dans l'environnement Pharo.

## Contenu du Projet

Le code source se trouve dans le dossier `src` et est organisé en deux packages distincts :

### 1. Exo-List (Structure de Données)
Une implémentation manuelle d'une **Liste Simplement Chaînée** (Singly Linked List).
- **Fonctionnalités :** Ajout, suppression, accès aux éléments, vérification de la taille.
- **Classes principales :** `MyLinkedList`, `MyNode`.
- **Tests :** Une suite de tests unitaires (`MyLinkedListTest`) est incluse pour valider le fonctionnement.

### 2. Exo-Generator (Générateur de Documentation)
Un outil de réflexion capable de générer une documentation HTML (style Javadoc) pour n'importe quelle classe du système.
- **Fonctionnalités :** Prend une classe en entrée, analyse ses métadonnées (nom, commentaires, méthodes) et produit un fichier `.html`.
- **Classe principale :** `JavaDocGenerator`.
- **Exemple d'interaction :** Le générateur peut être utilisé pour documenter la classe `MyLinkedList` du premier exercice.

---

##  Important

 Ce projet est conçu pour fonctionner exclusivement dans l'environnement **Pharo**.

---

##  Installation via Iceberg

Pour importer ce projet dans votre image Pharo, veuillez utiliser l'outil de gestion de versions intégré **Iceberg**.

### Étapes d'importation :

1. Ouvrez votre image Pharo.
2. Lancez l'outil **Iceberg** (via le menu ou `Ctrl + O + I`).
3. Cliquez sur le bouton **Add** (+).
4. Choisissez l'option **Clone from GitHub**.
5. Collez l'URL de ce dépôt : `https://github.com/fellag-aghiles/StartPharo.git`
6. Une fois le dépôt cloné, double-cliquez sur le projet dans la liste Iceberg.
7. Faites un clic droit sur le package `Exo-List` / `Exo-Generator`  et sélectionnez **Load**.

Une fois chargé, vous verrez les classes apparaître dans votre **System Browser**.

---

##  Utilisation

Vous pouvez tester les fonctionnalités directement dans un **Playground** (`Ctrl + O + W`) :

### Tester la Liste Chaînée
```smalltalk
| liste |
liste := MyLinkedList new.
liste add: 'Premier élément'.
liste add: 'Deuxième élément'.
liste size. "Retourne 2"
```
###  Tester le Générateur


```smalltalk
"Génère la documentation HTML pour la classe Array"
JavaDocGenerator new for: Array.
```
Un fichier nommé Array.html sera généré automatiquement dans le répertoire racine de votre image Pharo. Vous pouvez l'ouvrir avec n'importe quel navigateur web pour visualiser la documentation formatée



