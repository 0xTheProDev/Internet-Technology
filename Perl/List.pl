#! /usr/bin/perl

use strict;
use warnings;

# One of the Months
my @months = qw(
    January     February    March       April
    May         June        July        August
    September   October     November    December
);
my $month;
$month = <STDIN> % 12;
print $months[$month], "\n";

# Sequence of Integers
my (@list, @rev);
@list = (1 .. 6);
@rev  = reverse @list;
print "@list\n@rev\n";

# Append new Element
my (@arr1, @arr2);
@arr1 = (1, 2, 6, 8, 9);
@arr2 = (@arr1, 10);
print "@arr2\n";
