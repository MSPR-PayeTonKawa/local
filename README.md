# Environnement de Développement Local

Create docker network : `docker network create payetonkawa-n`

Ce répertoire centralise le développement local pour `gestionProduit`, `gestionCommandes`, et `gestionClient` avec Kafka.

## Composants

- **Zookeeper** : Gestion de configuration et synchronisation.
- **Kafka** : Plateforme de streaming pour échanges de données.
- **KafkaHQ (webui)** : Interface pour surveiller Kafka.
- **Services** : `gestionProduit`, `gestionCommandes`, `gestionClient`.

## Docker Compose

Configuration pour Zookeeper, Kafka, et KafkaHQ.

## Makefile

Commandes pour gérer les conteneurs Docker :

- `make up` : Démarrer les services.
- `make down` : Arrêter les services.
- `make logs` : Afficher les journaux.
- `make rebuild` : Reconstruire les services.
- `make clean` : Nettoyer l'environnement.

## Contribuer

- Fork et création de branches à partir de `main`.
- Respecter les normes de codage.
- Soumettre des pull requests détaillées.
