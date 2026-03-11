# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Richard Darst'
copyright = '2026, Richard Darst'
author = 'Richard Darst'
html_title = "Richard Darst"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx_rtd_theme_ext_color_contrast',
    'ablog',
    'sphinx.ext.intersphinx',
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output
html_static_path = ['_static']
html_logo = 'zeppelinbend-3b.jpg'

#html_theme = 'sphinx_rtd_theme'

html_theme = 'alabaster'
html_css_files = ["alabaster_overrides.css"]
html_sidebars = {
    #'**': ['globaltoc.html'],
    '**': ['ablog/recentposts.html',
           'globaltoc.html',
	   ],
    }
