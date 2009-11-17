
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'String-Formatter',
  NAME      => 'String::Formatter',
  AUTHOR    => "Ricardo\ Signes\ \<rjbs\@cpan\.org\>\,\ Darren\ Chamberlain\ \<darren\@cpan\.org\>",
  ABSTRACT  => "build\ sprintf\-like\ functions\ of\ your\ own",
  VERSION   => '0.093200',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'gpl') : ()),
  PREREQ_PM    => {
    "Params::Util" => '0',
    "Sub::Exporter" => '0',
  },
  test => {TESTS => 't/*.t'}
);

