Lancer la commande "docker build ." pour lancer le build du conteneur

Lancer ensuite "docker compose up -d" pour lancer le conteneur

Lancer "docker ps" pour récupérer l'id du conteneur qui vient d'être créé

Lancer "docker exec -it conatiner_id bash" en remplacant container_id avec l'id du conteneur que vous avez récupéré

Une fois dans le terminal du conteneur, lancer "php server.php"

Dans un 2ème terminal, par exemple sur vscode, lancer "docker exec -it container_id bash" en templacant container_id avec l'id du conteneur que vous avez récupéré

Une fois dans le terminal du conteneur, lancer "php client.php"

Lancer "ls"

On voit que la vidéo s'est téléchargé