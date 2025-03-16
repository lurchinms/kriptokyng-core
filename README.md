kriptoyng Wallet
=====================================
[![Build Status](https://travis-ci.com/kriptoyng/kriptoyng.svg?branch=master)](https://travis-ci.com/kriptoyng/kriptoyng)

About
-----

This is the current kriptoyng wallet made by Gandalf86. For more info about kriptoyng, see https://kriptoyng.github.io

kriptoyng is based on [Bitcoin Core](https://github.com/bitcoin/bitcoin) version 0.16.3, all credits go to the Bitcoin Core developers. Most documentation files have been left untouched to avoid confusion.

License
-------

Bitcoin Core and kriptoyng are released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Building
--------

Please refer to the build notes in the [doc/](doc/) directory for compiling the wallet.

Testing
-------

* Unit tests can be run with `make check`
* Functional tests can be run with `./test/functional/test_runner.py`

All provided tests should pass. Please report if there are any errors and only use the wallet if all the tests pass. For more info, see [/src/test/README.md](/src/test/README.md).
