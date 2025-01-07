# cyrusimap.org site builder

This project contains the code and automations used to build the website for
[Cyrus IMAP](https://www.cyrusimap.org/).  It works like this:

* The [cyrus-imapd repo](https://github.com/cyrusimap/cyrus-imapd) includes the
  source for this site, and a Makefile (in `./docsrc`) that will run Sphinx to
  build the site's HTML.
* The [Cyrus Docker](https://github.com/cyrusimap/cyrus-docker) container has
  all the prerequisites for building the site.
* This repository contains a program, `build-cyrus-site`, that clones a number
  of versions of cyrus-imapd, builds their docs, and merges them all into a
  multi-version setup for the site.  It also builds the docs for
  [cyrus-sasl](https://github.com/cyrusimap/cyrus-sasl).
* This repository, in its `.github/workflows` directory, has a workflow that
  runs the `build-cyrus-site` program in the `cyrus-docker` container, then
  publishes the results to GitHub Pages.  It does this every hour, or when
  *this* repo changes.

You probably only want to edit *this* code if you want to change how the Cyrus
IMAP site is *automatically* updated.  For the site content itself, look at the
Cyrus IMAP or Cyrus SASL repositories, instead.
