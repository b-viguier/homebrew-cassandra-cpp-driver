# homebrew-cassandra-cpp-driver
Homebrew formulae to install `cassandra-cpp-driver`.
This library may be useful if you intend to install cassandra extension via PECL.

## Usage
Configure `brew` to use this repository.
`brew tag b-viguier/cassandra-cpp-driver`

Be sure to install `pecl` with your php installation (see [homebrew-php doc](https://github.com/Homebrew/homebrew-php#pear-extensions)).

`pecl install cassandra`

## Known Issues
The install process will probably display following error message at the end:
```
Fatal error: Uncaught Error: Call to a member function getFilelist() on null in /usr/local/Cellar/php70/7.0.6/lib/php/PEAR/Command/Install.php:74
```
Sorry, I don't know how to fix it… but some lines above you should see a message similar to:
```
Build process completed successfully
Installing '/usr/local/Cellar/php70/7.0.6/lib/php/extensions/no-debug-non-zts-20151012/cassandra.so'
```
If so, you can create an additional `ini`file `/usr/local/etc/php/7.0/conf.d/ext-cassandra.ini` with following content
```ini
[cassandra]
extension="/usr/local/Cellar/php70/7.0.6/lib/php/extensions/no-debug-non-zts-20151012/cassandra.so"
```
To check your configuration, use `php -i | grep cassandra`.

## Thanks
[@mpenick](https://github.com/mpenick) is the actual author of this code ([here his original PR](https://github.com/Homebrew/homebrew/pull/36511)).

## Notes
Feel free to submit any improvements if needed, or link to a more robust solution.
