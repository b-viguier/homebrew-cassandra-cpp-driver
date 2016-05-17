# homebrew-cassandra-cpp-driver
Homebrew formulae to install `cassandra-cpp-driver`.
This library may be useful if you intend to install cassandra extension via PECL.

## Usage
Configure `brew` to use this repository.
`brew tag b-viguier/cassandra-cpp-driver`

Be sure to install `pecl` with your php installation (see [homebrew-php doc](https://github.com/Homebrew/homebrew-php#pear-extensions)).

`pecl install cassandra`

## Thanks
[@mpenick](https://github.com/mpenick) is the actual author of this code ([here his original PR](https://github.com/Homebrew/homebrew/pull/36511)).

## Notes
Feel free to submit any improvements if needed, or link to a more robust solution.
