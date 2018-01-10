# Rack plugin submodules

* A repo with submodules for VCV Rack plugin git repos. *

## How to use

First, don't do this in with an 'installed' Rack if you are using
the plugin manager to manage plugins/. This is intended for use with
a source code checkout.

In a Rack *source code checkout***, mv plugins/ away and replace with a
clone of this repo.


$ cd ~/src/Rack-master
$ mv plugins not____-plugins
$ git clone --recursive git@github.com:alikins/Rack-plugin-submodules.git plugins

Then build the plugins.


For a source code checkout of Rack v0.5, use the v0.5 branch of Rack-plugin-submodules.git

Assuming ~/src/Rack-v0.5 is a v0.5 checkout


$ cd ~/src/Rack-v0.5
$ mv plugins not____-plugins
$ git clone git@github.com:alikins/Rack-plugin-submodules.git plugins
$ git checkout -t origin/v0.5
$ git submodule init --update --recursive

## for-each-plugin.sh

There is a helper script in master called 'for-each-plugin.sh'.

It is a very untested shell script that can theoretically be used
like:

$ cd ~/src/Rack-master
$ ./for-each-plugin.sh make

## Can I expect this to work?

Hahaha, no.

## Are git submodules a good idea for this?

No.


