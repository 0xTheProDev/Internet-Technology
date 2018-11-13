#! /usr/bin/perl

use strict;
use warnings;

# Hash that Maps Keyword to Country Name
my %country = (
    "IN" => "India",
    "US" => "United States of America",
    "UK" => "United Kingdom",
    "SG" => "Singapore",
    "BD" => "Bangladesh"
);

print "\"SG\" Country Code represents $country{SG}\n";

# Adding New Value
$country{FR} = "France";
print "\"FR\" Country Code represents $country{FR}\n";

# Updating Existing Value
$country{UK} = "England";
print "\"UK\" Country Code represents $country{UK}\n\n";

# Deleting Existing Value
delete $country{BD};
for (keys %country) {
    print "\"$_\" Country Code represents $country{$_}\n";
}
