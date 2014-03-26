#!/usr/bin/perl -w
use strict;
use warnings;
use Getopt::Long;
use LWP::UserAgent;
use HTTP::Request;


 my $url="";
 GetOptions ("name=s" => \$url );
 
my $lwp = LWP::UserAgent->new;
my $r = HTTP::Request->new(GET => "$url");
my $response = $lwp->request($r);
if ($response->is_success)
 {
     foreach (split(/\n/,$response->content)) {
        $_ =~ /(http.+?.(jpg|png|gif))/ || next;
        say $1;
     }
 }

