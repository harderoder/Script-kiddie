#!/usr/bin/perl
  use strict;
  use warnings;
  use Getopt::Long ;
  use feature 'say';
  
  my $name;
  
  GetOptions ("name=s" => \$name );
  
  if (defined($name)) {
      say "String length: ".length ($name);
      my @massiv = split("",$name);
      foreach (@massiv) {
          my $symbol = shift(@massiv);
          push ( @massiv,$symbol );
          say @massiv;
      }
  }
  exit 0;
