#!/usr/bin/env perl

use strict;
use warnings;

print "Content-type: text/html\n\n";
foreach my $key (sort keys %ENV) {
    print "$key --> $ENV{$key}<br>";
}
