# (former) cyrusimap.org site builder

This project contains archived versions of the documentation for older Cyrus
releases which we can no longer build with current tools.

It used to contain the code and automations used to build the website for
[Cyrus IMAP](https://www.cyrusimap.org/), but that has now been moved to
the [cyrus-imapd repo](https://github.com/cyrusimap/cyrus-imapd)

The program `build-cyrus-site` has been refactored to become `cyd makesite`,
in the [Cyrus Docker](https://github.com/cyrusimap/cyrus-docker) container.

You probably only want to edit *this* repository if you need to add another
archived version. For the site content itself, look at the Cyrus IMAP or Cyrus
SASL repositories, instead.
