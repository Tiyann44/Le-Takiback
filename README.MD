# Back du projet JAVA

## Lancer le back
1. Créer un fichier .env à la racine du projet
2. Ajouter les variables d'environnement suivantes :
3. ```
   DATABASE_USER=root
    DATABASE_PASSWORD=toor
    DATABASE_NAME=db-default
   ```
4. Créer une base de données postgre nommée db-default avec pour user 'root' et mot de passe 'toor'
5. Lancer les deux fichiers dans le dossier initdb à la racine du projet
6. Taper la commande dans le terminal à la racine du projet:
    ```
    docker-compose up
    ``` 
7. Lancer "BackSkeletonApplication.java" dans le dossier "src/main/java/com/takima/backskeleton" pour lancer le back
8. Le back est maintenant prêt à être utilisé