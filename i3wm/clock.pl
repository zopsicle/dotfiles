#!/usr/bin/env perl

use utf8;
use strict;
use warnings;

use POSIX qw(strftime);

binmode STDOUT, 'encoding(UTF-8)';

for (;;) {
    my @now = localtime(time);
    printf "%s\n", strftime('📅%F 🕰️%T', @now);
    STDOUT->flush;
    sleep 1;
}
