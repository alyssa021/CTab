#!/bin/perl

use strict;
use warnings;

my $n_args = $#ARGV;

if($n_args != 0){
    warn "Invaild number of arguments.\n";
    exit 1;
}

open(FH, '<', @ARGV) or die $!;

while(<FH>){
    if(index($_, "\t") != -1){
      print "Oopsie, got tab :(\n";
      exit 1;
    }
}

close(FH);

print "All clear, no tabs :)\n";
