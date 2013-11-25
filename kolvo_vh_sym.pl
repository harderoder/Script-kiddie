    
#!/usr/bin/perl
  use strict;
  use warnings;
  use Getopt::Long;
  
my $names="";
GetOptions ("name=s" => \$names );
open FILE, "<", $names or die $!;
  undef(local $/);
  my $text = <FILE>;
  
close FILE;

my @list = split(//, $text);
my %h;

 foreach (@list){
    $h{$_}++ ;
}

 foreach(sort {$h{$b} <=> $h{$a}} keys %h) {
     print $_,'=',$h{$_},"\n";
}
