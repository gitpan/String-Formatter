
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'String::Formatter',
                       'DISTNAME' => 'String-Formatter',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Ricardo Signes <rjbs@cpan.org>, Darren Chamberlain <darren@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'build sprintf-like functions of your own',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100680',
                       'PREREQ_PM' => {
                                        'Test::More' => '0',
                                        'String::Format' => '0',
                                        'Params::Util' => '0',
                                        'Benchmark' => '0',
                                        'Sub::Exporter' => '0',
                                        'Template' => '0'
                                      },
                       'LICENSE' => 'gpl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



