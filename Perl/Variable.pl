#! /usr/bin/perl

use strict;
use warnings;

# Normal Declarations
our ($var, $var2, $var3);
$var = 5;
$var2 = $var ** 2;
$var3 = $var2 + 10;
$var3 *= 2;
print $var, " ", $var2, " ", $var3, "\n";

# Multiple Assignment
our ($a, $b, $c, $d);
$a = $b = $c = $d = 1;
print $a, " ", $b, " ", $c, " ", $d, "\n";

# Auto Increment/Decrement
$a++;
$b--;
print $a, " ", $b, "\n";

# Lexical Scoping
our $data;
$data = 5;
print "Value of \$data is $data\n";
{
    my $data;
    $data = 7;
    print "Inside the block, value of \$data is $data\n";
}
print "Value of \$data is still $data\n";
