# homebrew-cassandra-cpp-driver
[Homebrew](http://brew.sh) formulae to install `cassandra-cpp-driver`.
This library may be useful if you intend to install cassandra extension via PECL.

## Usage
Configure `brew` to use this repository.
```
brew tap b-viguier/cassandra-cpp-driver
```

Then, install it.
```
brew install b-viguier/cassandra-cpp-driver/cassandra-cpp-driver
```

## Full install process of the php-cassandra extension

* Install XCode and XCode Command Line Tools via `xcode-select --install`. If it fails (network timeout…), you will have to download directly from [Apple Website](https://developer.apple.com/develop/), in the *Download* section (need an AppleId).
* Be sure to install `pecl` with your php installation `brew install php70 --with-pear` (see [homebrew-php doc](https://github.com/Homebrew/homebrew-php#pear-extensions)).
* Do not forget special permissions for PEAR, check *Caveats* section in `brew info php70`.
* Install this cpp-driver. You may require some additional dependencies that you can retrieve with `brew install libuv cmake gmp` ([see official documentation](http://datastax.github.io/cpp-driver/topics/building/#os-x)).
* Install cassandra extension `pecl install cassandra`
* Check installation with `php -i | grep cassandra`


## Thanks
[@mpenick](https://github.com/mpenick) is the actual author of this code ([here his original PR](https://github.com/Homebrew/homebrew/pull/36511)).

## Notes
Feel free to submit any improvements if needed, or link to a more robust solution.
