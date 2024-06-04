# Lanceur de l'Environnement de Développement Local

Ce répertoire sert de lanceur central pour l'environnement de développement local, gérant les services `gestionProduit`, `gestionCommandes`, et `gestionClient`, en plus d'une instance locale de Kafka avec Zookeeper et une interface web KafkaHQ pour la gestion et la surveillance.

## Composants

- **Zookeeper** : Service centralisé pour la maintenance des informations de configuration, la synchronisation distribuée, et les services de groupe.
- **Kafka** : Plateforme de streaming distribuée utilisée pour publier et s'abonner à des flux d'enregistrements, essentielle pour la gestion des flux de données entre les services.
- **KafkaHQ (webui)** : Outil web pour la gestion et la surveillance de Kafka, permettant de visualiser les sujets, les groupes de consommateurs et les configurations.
- **gestionProduit, gestionCommandes, gestionClient** : Microservices qui gèrent différents aspects de la logique commerciale, intégrés dans cet environnement local de Kafka pour un échange et un traitement fluides des données.

## Docker Compose

Le fichier `docker-compose.yml` comprend les configurations pour Zookeeper, Kafka, et KafkaHQ (webui), mettant en place l'environnement nécessaire pour que ces services interagissent efficacement avec les microservices.

## Makefile

Le Makefile facilite la gestion facile de l'ensemble des conteneurs Docker pour ce projet. Il fournit des commandes pour gérer le cycle de vie de tous les composants impliqués, du développement local aux tests.

## Utilisation

- **Démarrer l'ensemble des services** : `make up`
- **Arrêter tous les services** : `make down`
- **Voir les journaux pour tous les services** : `make logs`
- **Reconstruire tous les services pour intégrer les modifications** : `make rebuild`
- **Nettoyer l'environnement en supprimant tous les conteneurs, réseaux et volumes** : `make clean`
