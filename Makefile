# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = content
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


publish: dirhtml
	echo .buildinfo*  > build/dirhtml/.gitignore
	echo rkd.zgib.net > build/dirhtml/CNAME
	echo              > build/dirhtml/.nojekyll
	git init --bare tmp-rkdweb-gh-pages.git
	git --git-dir=tmp-rkdweb-gh-pages.git/ remote add origin ghr:rkdweb || true
	git --git-dir=tmp-rkdweb-gh-pages.git/ --work-tree=build/dirhtml/ branch -D gh-pages || true
	git --git-dir=tmp-rkdweb-gh-pages.git/ --work-tree=build/dirhtml/ checkout --orphan  gh-pages
	git --git-dir=tmp-rkdweb-gh-pages.git/ --work-tree=build/dirhtml/ add .
	git --git-dir=tmp-rkdweb-gh-pages.git/ --work-tree=build/dirhtml/ commit -m "update, from $(git describe --always --dirty)"
	git --git-dir=tmp-rkdweb-gh-pages.git/ --work-tree=build/dirhtml/ push -u -f origin gh-pages
