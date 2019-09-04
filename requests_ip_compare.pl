#!/usr/bin/perl -w

use LWP::Simple;
use JSON;

$url1 = "http://telnetmyip.com";
$result1 = get $url1;

$url2 = "http://checkip.amazonaws.com";
$result2 = get $url2;

$url3 = "http://checkip.dyndns.org";
$_ = get $url3;

print 'telnetmyip: ', decode_json($result1)->{'ip'}, "\n";
print 'checkip.aws: ', $result2;
s/[^0-9.]*//g;
print 'dyndns.org: ', $_, "\n";
