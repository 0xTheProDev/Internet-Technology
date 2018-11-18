#! /usr/bin/perl

use strict;
use warnings;

## Regular Expression in Perl

# Check if a word exists in a sentence
$_ = "I love Perl!";
if (/Perl/i) {
    print "$_\nPerl was mentioned here\n";
} else {
    print "$_\nPerl wasn't mentioned here\n";
}

# Check if a string contains numeric character
my $str = "My age is just 21 years, believe me!";
if ($str =~ /[0-9]+/){
    print "$str contains Numeric characters.\n";
} else {
    print "$str contains no Numeric characters.\n";
}
