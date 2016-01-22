# Redmine 3-latest image with [graphviz][graphviz] and [plantuml][plantuml] installed [![](https://badge.imagelayers.io/tukiyo3/redmine3-plantuml-ja.svg)](https://imagelayers.io/?images=tukiyo3/redmine3-plantuml-ja 'Get your own badge on imagelayers.io')

Docker build for an extended [redmine 3 latest docker image][redmineimage].

## Purpose

This docker image is based on the latest redmine 3 image provided by official.
It provides these features:

* graphviz installed, provides `dot`, `neato`, etc.
* plantuml, java library to render UML and sequence charts based on textual input.
* git, mercurial, subversion, takao-fonts installed.

## Usage

This image is best used with the [wiki external filter plugin][wikiexternalplugin] by Alexander Tsvyashchenko.

[redmineimage]: https://hub.docker.com/_/redmine/
[wikiexternalplugin]: http://www.ndl.kiev.ua/content/redmine-wiki-external-filter-plugin
[graphviz]: http://www.graphviz.org/
[plantuml]: http://plantuml.sourceforge.net/
