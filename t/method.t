#!perl
use strict;

use Test::More tests => 1;
use Test::Exception;

use String::Formatter;

{
  package Zombie;
  sub new     { bless {} }
  sub groan   { 'nnnnngh' }
  sub request { "Send... more... $_[1]!" }
}

{
  my $fmt = String::Formatter->new({
    input_processor => 'require_single_input',
    string_replacer => 'method_replace',

    codes => {
      g => 'groan',
      r => 'request',
      i => sub { 0 + $_[0] },
    },
  });

  {
    my $zombie = Zombie->new;
    my $have = $fmt->format(q(%g... zombie number %i say: %{cops}r), $zombie);
    my $zid  = 0 + $zombie;
    my $want = "nnnnngh... zombie number $zid say: Send... more... cops!";

    is($have, $want, "method_replace GOOD. fire BAD");
  }
}
