#!/home/homepage/perl5/perlbrew/perls/perl-5.10.1/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dump qw/dump/;
# 続・初めてのPrelを読む

# 第4章　リファレンス入門
# 2011/12/09

# 4.1
# 持ち物を調べるためのコード
my @required = qw{banana tokoroten susi};
my @ore = qw[ ringo nashi banana tokoroten letsnote];

for my $item (@required){
    print "っけね～$item忘れちった～っけね～" unless grep $item eq $_, @ore;
} # っけね～susi忘れちった～っけね～
