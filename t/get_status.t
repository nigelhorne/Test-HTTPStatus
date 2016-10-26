use strict;

use Test::More tests => 4;

BEGIN { require Test::HTTPStatus; Test::HTTPStatus->import };

use HTTP::SimpleLinkChecker;

SKIP: {
	skip "Not connected to network!", 2
		unless HTTP::SimpleLinkChecker::check_link(
			'http://www.yahoo.com/') eq 200;

	my $status = Test::HTTPStatus::_get_status('http://www.perl.org/');
	is( $status->{status}, HTTP_OK, "HTTP OK" );

	   $status = Test::HTTPStatus::_get_status('http://www.perl.com/xyz.abc');
	is( $status->{status}, HTTP_NOT_FOUND, "HTTP Not Found" );

	};

	my $status = Test::HTTPStatus::_get_status();
	is( $status->{status}, NO_URL, "No URL" );

	   $status = Test::HTTPStatus::_get_status('foo');
	is( $status->{status}, undef, "HTTP Server Error" );
