
# Plugin helpers
PLUGIN_DIRS = $(wildcard */.)

allplugins:
	for f in $(PLUGIN_DIRS); do echo "******* Building $$f ********"; $(MAKE)  -C "$$f"; echo "** Built $$f **"; done

cleanplugins:
	for f in $(PLUGIN_DIRS); do $(MAKE) -C "$$f" clean; done

distplugins:
	for f in $(PLUGIN_DIRS); do $(MAKE) -C "$$f" dist; done

plugins:
	for f in $(PLUGIN_DIRS); do (cd "$$f" && ${CMD}); done

clean: cleanplugins

all: allplugins

git_fetch:
	for f in $(PLUGIN_DIRS); do echo "# 'git fetch origin' for plugin submodule: $$f"; git -C "$$f" fetch origin; done

git_pull:
	for f in $(PLUGIN_DIRS); do echo "# 'git pull' for plugin submodule: $$f"; git -C "$$f" pull; done

git_pull_master:
	for f in $(PLUGIN_DIRS); do echo "# 'git pull origin master' for plugin submodule: $$f"; git -C "$$f" pull origin master; done

git_add:
	for f in $(PLUGIN_DIRS); do echo "# 'git add $$f' for plugin submodule: $$f"; echo git add "$$f" ; done

echo:
	echo $(PLUGIN_DIRS)

ls:
	for f in $(PLUGIN_DIRS); do ls "$$f"; done

.PHONY: all dep run debug clean dist allplugins cleanplugins distplugins plugins git_fetch git_pull git_add echo ls
