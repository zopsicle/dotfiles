#!/usr/bin/env perl

use utf8;
use strict;
use warnings;

binmode STDOUT, 'encoding(UTF-8)';

sub read_line
{
    my ($path) = @_;
    my $line = do { open my $fh, '<', $path; <$fh> };
    $line
}

my $interval = 10;
my $previous_percentage = 100.0;

for (;;) {
    my $charge_now = read_line('/sys/class/power_supply/BAT1/charge_now');
    my $charge_full = read_line('/sys/class/power_supply/BAT1/charge_full');
    my $percentage = 100.0 * $charge_now / $charge_full;
    my $delta = ($percentage - $previous_percentage) / $interval;
    printf "🔋%3.2f%% (%3.2f%%/das)\n", $percentage, 10.0 * $delta;
    $previous_percentage = $percentage;
    STDOUT->flush;
    sleep $interval;
}
