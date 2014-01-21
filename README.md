macports-gw
===========

Local ports for GW


If a local repository is a subversion checkout, it will be automatically
updated by `port sync`.


Using svn
---------

I don't expect to use branches for typical access, so just get the trunk.

```sh
cd ~/src
svn co https://github.com/suominen/macports-gw/trunk macports-gw
```

If you are setting up your own repository, you'll want to configure
subversion to:

* use your account with GitHub (not anonymous, and not mine)
* use keychain for passwords

~/.subversion/servers

```ini
[groups]
github = github.com

[github]
username = suominen
```

~/.subversion/config

```ini
[auth]
password-stores = keychain
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
