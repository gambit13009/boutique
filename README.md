attention : testez le projet en le clonant sur git hub et non sur heroku.
pour le panier si vous avez une erreur lors du premier ajout reessayer en revenant en arriere avec precedent cela devrait marcher.

# boutique en ligne de photos de chats
-------------

# Introduction : Présentation de l'équipe

## ** WEST COAST MARSEILLE**

##- Audrey (@audreycouture)

##- Jerome (@Jerome)

##- Damien (@damien13005)

##- Maxime (@Maxime)

##- Sam (@sam)


##Fait en pair programming

![alt tag](app/assets/images/chat-deguise-sushi.png)

-------------

# But de l´exercice

Pour ce Jeudi 31 Mai 2018 dans le cadre de l'approfondissement du langage HTML/CSS, nous devions créer une boutique en ligne qui vend des photos de chaton


Notre cahier des charges :


Avec utilisation de la méthode Agile :  
	1) Realiser un MVP en ligne fonctionel 
	2) Travail en commun organisé via https://trello.com/b/EGhU0CJy/boutique-en-ligne
	3) Suivre une User Stories 
	4) Donner de la forme à nos pages en intégrant un template WrapBootstrap
	

------------   



# Consignes d'utilisation

## Tests en local:

Pour ouvrir chaque app et la tester il faut downloader le dossier, se placer dedans dans votre terminal et lancer en commande:

> $ bundle install 


Pour voir la base données exécuter en commande un

> $ rails db:migrate     

> $ rails db:seed

Puis tapez la commande suivante pour tester en local l'appli:

> $ rails server

La vous pouver vous balader sur notre code.

Puis ouvrir le fichier sqlite dans le dossier db de l'app, soit avec dbBrowser soit avec SqliteStudio ou autre et visionner.

et Tester la Version en Localhost en allant dans ton navigateur sur :

> localhost:3000





## Test en ligne:

Aller sur les liens Heroku suivants


https://intense-sands-28535.herokuapp.com/




------------


# Explications détaillés 


------------- comment le code a été fait : -------------

    1. Nouveau projet Rails : 
        a. $ rails new boutique
        b. Modif du gemfile (pour integration heroku ) 
    2. Nouveau Repo sur Github
        a. cd dossier boutique
        b. $ git init 
        c. $ git remote
        d. $ git Add . 
        e. $ git commit -m "first commit"
        f. $ git push 
    3. Heroku compatible
        a. $ heroku create
        b. $ git add .
        c. $ git commit -m "heroku"
        d. $ git push heroku master
        e. Succés avec site en ligne appelé https://intense-sands-28535.herokuapp.com/
    4. Créer un compte Mailjet pour les envois de mails 
        a. Créer un fichier .env avec les clées API de Mailjet
        b. Dans le gitiniore rajouter le .env
        c. Sur mailjet, le paramétrer avec le site heroku  
    5. Paramètrer la base de donner des utilisateurs 
        a. $ rails generate scaffold user email:string
        b. $ rails db:migrate
        c. Verif heroku comparabilité avec un nouveau push heroku => ok
        d. $ heroku run rails db:migrate => ok
        e. Affichage des routes users : $ rails routes 
        f. Vérification en ligne :   https://intense-sands-28535.herokuapp.com/
    6. Configuration des pages en ligne en définissant seulement les routes 
        a. Dans config routes.rb :   
        b. $ verif avec rails routes => ok
        c. Verif avec heroku push (refaire étape 2def et 3bcd) => ok
    7. Ajout de Boostrap
        a. Insertion de Wrapboostrap dans notre application html  
    


# Résultats


A vous de voir !


Merci pour la correction ! 
