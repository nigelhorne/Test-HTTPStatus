use strict;

use Test::HTTPStatus tests => 1;

http_ok( 'http://www.perl.org', HTTP_OK );
