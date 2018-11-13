#! /usr/bin/perl

use strict;
use warnings;

# Even or Odd
my $num = <STDIN>;
chomp $num;
if ($num % 2 == 0) {
    print "$num is Even Number\n";
} else {
    print "$num is Odd Number\n";
}

# Shorthand Modifier for if
# my $error = 0;
# die "Error, Aborting!\n" if $error

# Factorial of a Number
$num = <STDIN>;
chomp $num;
my $fact = 1;
for (my $i = 1; $i <= $num; $i++) {
    $fact *= $i;
}
print "Factorial of $num is $fact\n";

# String Comparison
print "Enter your name: ";
my $name = <STDIN>;
chomp $name;
if ($name eq "progyan") {
    print "Welcome!\n";
} else {
    print "Go Away!\n";
}

# Incrementing Values of an Array
my @list = (0 .. 9);
print "Before Operation:\n@list\n";
foreach (@list) {
    $_++;
}
print "After Operation:\n@list\n";

# Print All Command Line Argument
print "|$_|\n" for @ARGV;
