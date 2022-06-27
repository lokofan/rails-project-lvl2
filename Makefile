install:
	bundle install

migrate:
	bin/rails db:migrate

lint: rubocop slim-lint

rubocop:
	bundle exec rubocop

rubocop-fix:
	bundle exec rubocop -a

slim-lint:
	bundle exec slim-lint

s:
	bin/rails s

prod_s:
	RAILS_ENV=production bin/rails s

c:
	bin/rails c

heroku-push-dev:
	git push heroku dev:master --force