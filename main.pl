#!/bin/perl

use strict;
use warnings;

my $n_args = $#ARGV;

if($n_args != 0){
    warn "Invaild number of arguments.\n";
    exit 1;
}
