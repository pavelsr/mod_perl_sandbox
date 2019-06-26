# DESCRIPTION

This repository is for debugging different issues under mod_perl

Example of issues:

https://stackoverflow.com/questions/56691207/how-to-enable-perl-debugger-under-mod-perl

# RUNNING

```
docker-compose up
```

Then go to

http://localhost:3000/env.pl

or

http://localhost:3000/testd.pl ( for testing issues related with perl debugger )


# TYPICAL ERRORS

## Can't locate perl5db.pl in @INC

Perl in `httpd` container is compiled without `-d`. You should install `perl-debug` package

## unable to connect to cgi daemon after multiple tries

Solution: check permissions and make you CGI script executable

## /usr/bin/ld: cannot find -lperl

`apt-get install libperl-dev`

## Cannot load modules/mod_perl.so into server: /usr/local/apache2/modules/mod_perl.so: cannot open shared object file: No such file or directory

```
cpm install -gv mod_perl2
```

or

```
# get mirror from http://perl.apache.org/download/
curl -L http://mirror.linux-ia64.org/apache/perl/mod_perl-2.0.10.tar.gz -o mod_perl.tar.gz
tar xvfz mod_perl.tar.gz
cd mod_perl-2.0.10
perl Makefile.PL <options>
# e.g.  perl Makefile.PL MP_DEBUG=1
make && make test && make install
```

# SEE ALSO

https://perl.apache.org/docs/2.0/user/install/install.html#mod_perl_Build_Options

MP_DEBUG