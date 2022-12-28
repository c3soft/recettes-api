# ============================================================================ #
#                          Manipulation des conteneurs #
# ============================================================================ #
start: ## Démarrage des conteneurs et affiche les logs en temps réel
	docker-compose up

start.daemon: ## Démarrage des conteneurs et rend la ligne de commande
	docker-compose up -d

stop: ## Arrête les conteneurs
	docker-compose down

restart: stop start.daemon ## Arrête et redémarre les conteneurs

# ============================================================================== #
#                          Mise à jour du projet #
# ============================================================================== #
update: ## Met à jour le projet avec les informations de composer.lock (ne les met pas à jour)
	omposer install

upgrade: ## Met à jour le projet avec les informations de composer.json (met à jour le composer.lock)
	composer update



# ============================================================================== #
#                                Vérifications #
# ============================================================================== #
check: ## Vérification de la qualité et de la cohérence du code
	composer check

csfix: ## Correction (automatique) de la qualité du code
	composer fix
