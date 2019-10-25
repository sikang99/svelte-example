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
#----------------------------------------------------------------------------------
clean:
	rm -f bin/*
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

