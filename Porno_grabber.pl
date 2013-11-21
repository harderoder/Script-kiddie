#!/usr/bin/perl -w
use strict;
use warnings;
use Getopt::Long;
use LWP::UserAgent;
use HTTP::Request;


 my $url="";
 GetOptions ("name=s" => \$url );
 
$lwp = LWP::UserAgent->new;
$r = HTTP::Request->new(GET => "$url");
$response = $lwp->request($r);
if ($response->is_success)
 {
  print $response->content;
 }
else
 {
  print $response->error_as_HTML;
 }
