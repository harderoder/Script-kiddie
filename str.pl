 #!/usr/bin/perl
  use strict;
  use warnings;
  use GetOpt :: Long ;
GetOptions ("name" => \$name );
print $name.length;
  my @massiv = split(undef,$name);
 foreach my $symbol (@massiv) {
$symbol = shift [@massiv];
 push ( @massiv,'$symbol' );
 say "@massiv";
  }
  exit 0;
