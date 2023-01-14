macports-gw
===========

Local ports for adding software that isn't otherwise available.

If a local repository is a subversion checkout, it will be automatically
updated by `port sync`.


Using git
---------

I don't expect to use branches for typical access, so just get the trunk.

```sh
cd ~/src
git clone https://github.com/suominen/macports-gw.git
```


Using local ports
-----------------

Add your local tree to the list of repositories.

/opt/local/etc/macports/sources.conf

```
file:///Users/kim/src/macports-gw
```

If this is your own repository, you'll want to run `portindex` after
making changes in it.


References
----------

* [Local Portfile Repositories][localrepos]
* [Support for subversion clients][ghsvn]


[ghsvn]: https://help.github.com/articles/support-for-subversion-clients
[localrepos]: https://www.macports.org/guide/#development.local-repositories
