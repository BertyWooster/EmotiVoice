build-%:
	docker-compose build $(subst build-,,$@)

up-%:
	docker-compose up -d $(subst up-,,$@)

logs-%:
	docker-compose logs -f $(subst logs-,,$@)

stop-%:
	docker-compose kill $(subst stop-,,$@)

pull-%:
	docker-compose pull $(subst pull-,,$@)

push-%:
	docker-compose push $(subst push-,,$@)

tg-build-%:
	docker-compose -f docker-compose-tg.yml build $(subst tg-build-,,$@)

tg-up-%:
	docker-compose -f docker-compose-tg.yml up -d $(subst tg-up-,,$@)

tg-logs-%:
	docker-compose -f docker-compose-tg.yml logs -f $(subst tg-logs-,,$@)

tg-stop-%:
	docker-compose -f docker-compose-tg.yml kill $(subst tg-stop-,,$@)

tg-pull-%:
	docker-compose -f docker-compose-tg.yml pull $(subst tg-pull-,,$@)

tg-push-%:
	docker-compose -f docker-compose-tg.yml push $(subst tg-push-,,$@)
