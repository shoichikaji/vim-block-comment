#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
@ARGV or die;

# off
if ($ARGV[0] eq 'off') {
    while (<STDIN>) {
        s{^([ \t]*)(?:#|//|"|;) ?}{$1};
        if (/^\s*$/) {
            print "\n";
        } else {
            print;
        }
    }
    exit;
}

# out
my $char   = shift; # what character represents commentout
my $indent = 100;
my $space  = " ";
my @line   = <STDIN>;
for (@line) {
    if (/^\s*$/) {
        next;
    }
    if (/^(([ \t])[ \t]*)/) {
        my $length = length $1;
        $space  = $2;
        $indent = $length if $indent > $length;
    } else {
        $indent = 0;
        last;
    }
}

for (@line) {
    if (/^\s*$/) {
        print $space x $indent, "$char\n";
    } else {
        print $space x $indent, "$char ", substr($_, $indent);
    }
}

