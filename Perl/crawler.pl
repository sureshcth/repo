#!/usr/bin/perl

use warnings;
use strict;
#use WWW::Mechanize;
use HTTP::Request;
use LWP::UserAgent;


print "Enter the Link: ";
my $link = <STDIN>;
chomp($link);

print "Enter the id: ";
my $id = <STDIN>;
chomp($id);

print "Enter Reg No. From: ";
my $rfrom = <STDIN>;
chomp($rfrom);

print "Enter Reg No. To: ";
my $rto = <STDIN>;
chomp($rto);

my $from;
my $to;
my $rprefix;

unless($rfrom =~/^\w+?(\d+)$/){
	print "Invalid From Reg No.\n";
	exit;
}

die "Invalid To Reg No.\n" unless($rto =~/^\w+?(\d+)$/);

($rprefix, $from) = $rfrom =~/^(\w+?)(\d+)$/;
($to)   = $rto =~/^\w+?(\d+)$/;

my $num_digits = length($from);

#my $crawler = WWW::Mechanize->new();
#$crawler->agent_alias( 'Windows IE 6' );

my $crawler = LWP::UserAgent->new;
#$crawler->timeout(90);
$crawler->env_proxy;

while($from <= $to){
	my $f = sprintf("%0$num_digits"."d" , $from);
	my $url = "$link"."?"."id=$id"."&"."regno="."$rprefix"."$f"."&Submit=Submit";
	#print "$url\n";
	my $request = HTTP::Request->new('GET', "$url");
	my $response = $crawler->request($request, "$rprefix"."$f".".pdf");
	#my $succ = $crawler->get( "$url" );
	#my $succ = $crawler->get( "$url", content_file => "$rprefix"."$f".".pdf");
	#sleep(2);
	#open F, ">$rprefix"."$f".".pdf" ;
	#print F $crawler->content() if $succ->is_success;
	#print F $crawler->content() if $succ->is_success;
	#close F;
	$from++
}

