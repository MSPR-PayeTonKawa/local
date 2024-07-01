# Documentation Utilisateur - Projet "Paye Ton Kawa"

Cette documentation est destinée aux développeurs et aux membres de l'équipe technique travaillant sur le projet "Paye Ton Kawa". Elle fournit des instructions détaillées pour configurer l'environnement de développement, gérer les services via le Makefile, et intégrer les services avec Zookeeper, Kafka, et KafkaHQ.

## Configuration de l'Environnement de Développement

### Prérequis

- Docker et Docker Compose doivent être installés sur votre machine.
- Vous devez avoir une compréhension de base de Docker, Docker Compose et des commandes UNIX/Linux.

### Création du réseau Docker

Un réseau Docker spécifique, nommé `payetonkawa-n`, est nécessaire pour permettre la communication entre les conteneurs :

```bash
docker network create payetonkawa-n
```

## Architecture et Services

Le projet intègre plusieurs microservices et outils de gestion :

- Zookeeper: Utilisé pour la gestion de la configuration et la synchronisation entre services.
- Kafka: Plateforme de streaming pour la transmission de messages entre les microservices.
- KafkaHQ: Interface web pour la surveillance et la gestion de Kafka.
- Microservices:
    - gestionProduit: Gère les informations relatives aux produits.
    - gestionCommandes: Responsable du traitement des commandes des clients.
    - gestionClient: Gère les données des clients.
    - auth: S'occupe de l'authentification et de la gestion des accès utilisateurs.

## Commandes Makefile

Le Makefile fourni simplifie la gestion de votre environnement Docker. Voici les commandes que vous pouvez utiliser :

### Commandes Disponibles

- Démarrer les services:

```bash
make up
```

Cette commande démarre tous les services en mode détaché.

- Arrêter les services:

```bash
make down
```

Cette commande stoppe tous les services et supprime les conteneurs.

- Voir les logs:

```bash
make logs
```

Affiche les logs en continu de tous les services en cours d'exécution.

- Reconstruire les services:

```bash
make rebuild
```

Reconstruit les images Docker des services et les redémarre.

- Nettoyer l'environnement:

```bash
make clean
```

Supprime tous les conteneurs, réseaux, et volumes associés.

## Configuration Nginx

Nginx est configuré pour agir comme un reverse proxy pour les différents services du projet. La configuration assure la redirection correcte des requêtes aux services appropriés, ainsi que des performances et une sécurité optimisées.

### Points Importants de la Configuration Nginx

- Redirection des requêtes : Les requêtes sont redirigées vers les services internes en fonction de leur chemin URL.
- Améliorations de performance : Configuration pour optimiser la livraison des contenus et réduire la latence.

## Contribuer au Projet

Pour contribuer au projet, suivez ces étapes :

- Fork et clone : Créez un fork du dépôt principal et clonez-le localement.
- Création de branches : Travaillez toujours sur des branches dédiées pour chaque nouvelle fonctionnalité ou correction.
- Respect des standards : Suivez les conventions de codage et les guidelines du projet.
- Pull Requests : Soumettez des pull requests claires et détaillées pour intégrer vos modifications au projet principal.

## Support et Communication

Pour toute question ou besoin d'assistance, veuillez contacter l'équipe via les canaux officiels comme Slack ou email.

Ce document doit être régulièrement mis à jour pour refléter les changements dans le projet et fournir une ressource fiable pour tous les membres de l'équipe.