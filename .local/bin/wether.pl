#!/usr/bin/env perl

## WWW::Curl & JSON::Parse need to be installed
## from CPAN for this script to function

use strict;
use warnings;
use WWW::Curl::Easy;
use JSON::Parse ':all';

my $curl = WWW::Curl::Easy->new;
my $api_url = "https://goweather.herokuapp.com/weather/Melbourne";

$curl->setopt(CURLOPT_HEADER,1);
$curl->setopt(CURLOPT_URL, $api_url);

# A filehandle, reference to a scalar or reference to a typeglob can be used here.
my $response_body;
$curl->setopt(CURLOPT_WRITEDATA,\$response_body);
 
# Starts the actual request
my $retcode = $curl->perform;
 
# Looking at the results...
if ($retcode == 0) {
  my $weather_data = parse_json($curl->getinfo(CURLINFO_HTTP_CODE));
  eval {
    assert_valid_json($weather_data);
  };
  if($@) {
    print 'JSON ERROR: $@\n';
  }
 print ref $weather_data, '\n';      
} else {
  # Error code, type of error, error message
  print("An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n");
}
