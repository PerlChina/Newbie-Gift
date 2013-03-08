use Test::More;
use Array;

my $ar = Array->new(10, 3, 9, 7);

ok($ar->[0] == 10, "get");

my $ar2 = $ar->sort(sub {
                        my ($a, $b) = @_;
                        return $a <=> $b;
                    });

ok($ar2->[0] == 3, "sort");

my $sum = 0;
my $sumi = 0;

$ar->each(sub {
              my ($item, $i) = @_;
              $sum += $item;
              $sumi += $i;
          });

ok($sum == 29, "each");
ok($sumi == 6, "each index");



done_testing;


