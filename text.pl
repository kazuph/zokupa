#!/home/xxxxxxx/perl5/perlbrew/perls/perl-5.10.1/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dump qw/dump/;
# 続・初めてのPrelを読む

# 第2章　中級者の基礎知識(を読みながら勝手に思いついたコードを書く)
# 2011/12/02

# printはリストを扱う演算子。
# 下をリストだと思っているかどうか？
print "私は", "今から", "続・初めてのPerlを読みます。\n";
# 結果は同じだけれど
print "私は"."今から"."続・初めてのPerlを読みます。\n";

# grepでフィルタリング。リストを貰ってテスト式を通過したものを出力
# リストで受け取るなら通過したものだけを配列へ。
# スカラーで受け取るなら通過した個数を出力。
my @list = qw# hoge fuga piyo #;
my @word_g = grep /g/, @list; # -> hoge fuga
my $count = grep /g/, @list; # -> a

# ただ単にループ
grep say, @list;
map say, @list;
say for @list;

# ひっくり返してみた
say map $_, @list;
say grep $_, @list;
say for @list; # forだけ結果が違うのはな～んでだ？

# 奇数だけ出力
say grep $_%2, 1..10;
# 偶数だけ出力
say grep !($_%2), 1..10;


@list = (1, 2, 4, 8, 'hoge', 12, 15, 'fuga', 32);
say grep /\d/, @list; # 数字だけを出力
say grep /[^\d]/, @list; # 数字以外を出力

# 素数だけ出力(grepでブロック式を使用)
my @prime = grep {
    my $num = $_;
    my $count = 0;
    map {$num % $_ ? 0 : $count++ } 1..$num;
    $count == 2 ;
} 1..100;
say "@prime";

# 3の倍数の時だけあほになる
say map {$_% 3 ? " $_" : " あほ" } 1..100;

# 3の倍数のkeyのときだけvalueをあほにする
my %aho =  map { $_ , $_ % 3 ? "あほじゃない" : "あほ" } 1..100;
say "$_ : $aho{$_}" for sort {$a <=> $b} keys %aho;


















