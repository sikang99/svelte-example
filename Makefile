#
# Makefile for svelte-example
#
.PHONY: usage edit build clean git
VERSION=00.00.01
#----------------------------------------------------------------------------------
usage:
	@echo "make [edit|build]"
#----------------------------------------------------------------------------------
edit e:
	@echo "make (edit:e) [history]"
edit-go eg:
	vi main.go
edit-history eh:
	vi HISTORY.md
#----------------------------------------------------------------------------------
build b:
	@echo "make (build) [example]"

build-svelte bs:
	git clone git@github.com:sveltejs/svelte.git
	cd svelte && npm install && npm run build && npm run dev
	cd svelte && npm run test

build-hello bh:
	npx degit sveltejs/template hello-world
	cd hello-world && npm install && npm run dev start

build-again ba:
	npm run build
#----------------------------------------------------------------------------------
clean:
	rm -rf hello-world
	docker system prune --force
#----------------------------------------------------------------------------------
run r:
	@echo "make (run:r) []"
#----------------------------------------------------------------------------------
git g:
	@echo "make (git:g) [update|store]"
git-update gu:
	git add .
	git commit -a -m "$(VERSION): update contents"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

