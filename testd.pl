#!/usr/bin/env perl
# Script for testing debugger
sub bar {
    $DB::frame=0;
    foo() 
}
sub foo { }
sub hello { bar(); }
hello();

print "Content-type: text/html\n\n";
print "Hello world";