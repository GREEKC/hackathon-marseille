use HTTP::Tiny;
use JSON qw/encode_json decode_json/;
use HTTP::Request::Common;

my $rsat_server = "http://rsat-tagc.univ-mrs.fr/rest";
my $http = HTTP::Tiny->new();

my $ret = $http->get($rsat_server.'/fetch-sequences?genome=mm9&header_format=galaxy&u=http://rsat-tagc.univ-mrs.fr/rsat/demo_files/fetch-sequences_Schmidt_2011_mm9_CEBPA_SWEMBL_R0.12_702peaks.bed');
print $ret->{content};
