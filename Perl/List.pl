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
print @list, "\n", @rev, "\n";
