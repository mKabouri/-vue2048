# Lab 3
## Objectifs du TP 
Découverte et prise en main des pipelines de CI sous Gitlab. 
Le pipeline de CI effectuera les actions suivantes : 
- Récupération des dépendances
- Vérification du typage statique du code
- Analyse statique du code
- Construction du "package" à déployer
- Exécution des tests
- Publication de l'artifact

## Pré-requis
- Prendre connaissance de la [documentation](https://docs.gitlab.com/ee/ci/quick_start/index.html) relative aux Gitlab actions.
- Avoir un shared runner de disponible

## Hello pipelines' world
1. Créer un fichier `.gitlab-ci.yml` à la racine du repository de travail. 
2. Définir dans la liste des stages attendus le stage `hello-stage`. 
3. Ajouter un job `hello-job`, qui comprendra un unique stage chargé de lancer la commande suivante : `echo "Hello pipelines' world !`.
4. Vérifier dans la partie CI/CD du répertoire que Gitlab a bien trouvé votre pipeline.
5. Déplacer dans un nouveau dossier `pipelines` votre fichier YAML.
4. Configurer le répertoire pour que Gitlab sache que la pipeline de CI à executer se trouve dans le dossier `/pipelines`.
4. Run la pipeline, et vérifier que l'on voit correctement le log. 

## Une vraie CI 
1. Reprendre le fichier `.gitlab-ci.yml`, et repartir de zéro.
2. Lister dans la partie `stages` tous les stages correspondants aux actions énoncées dans les objectifs. (Peut-etre les laisser chercher dans un premier temps, puis donner la liste exhaustive avant qu'ils ne continuent)
3. Pour chacun des stages définis, écrire le stage ainsi que le job associé, avec un message de log suffisamment clair.
4. Vérifier une fois que le pipeline a tourné que le job artifact est bien disponible au téléchargement. Si c'est bien le cas, le télécharger, ouvrir depuis le navigateur le fichier `index.html` qui devrait être présent, et s'assurer que l'application fonctionne correctement. 

## Pour aller plus loin
1. Ajouter un trigger sur la pipeline pour qu'elle soit déclenchée :
- Tous les jours à 8h du matin 
- A chaque fois qu'un commit est fait sur la branche principale, ou bien sur une branche qui commencera par `feature/`
2. Mettre en place du cache des packages npm pour que le run de la pipeline soit plus rapide.
3. Réfléchir à comment parallèliser certaines tâches afin d'optimiser le temps d'exécution
