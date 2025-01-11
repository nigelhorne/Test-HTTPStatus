# NAME

Test::HTTPStatus - check an HTTP status

# SYNOPSIS

        use Test::HTTPStatus tests => 2;

        http_ok( 'https://www.perl.org', HTTP_OK );

        http_ok( $url, $status );

# DESCRIPTION

Check the HTTP status for a resource.

# FUNCTIONS

- http\_ok( URL \[, HTTP\_STATUS\] )

    Print the ok message if the URL's HTTP status matches the specified
    HTTP\_STATUS.  If you don't specify a status, it assumes you mean
    HTTP\_OK.

# SEE ALSO

[HTTP::SimpleLinkChecker](https://metacpan.org/pod/HTTP%3A%3ASimpleLinkChecker)

# AUTHORS

brian d foy, `<bdfoy@cpan.org>`

Maintained by Nigel Horne, `<njh at bandsman.co.uk>`

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Test::HTTPStatus

You can also look for information at:

- MetaCPAN

    [https://metacpan.org/release/Test-HTTPStatus](https://metacpan.org/release/Test-HTTPStatus)

- RT: CPAN's request tracker

    [https://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-HTTPStatus](https://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-HTTPStatus)

- CPANTS

    [http://cpants.cpanauthors.org/dist/Test-HTTPStatus](http://cpants.cpanauthors.org/dist/Test-HTTPStatus)

- CPAN Testers' Matrix

    [http://matrix.cpantesters.org/?dist=Test-HTTPStatus](http://matrix.cpantesters.org/?dist=Test-HTTPStatus)

- CPAN Ratings

    [http://cpanratings.perl.org/d/Test-HTTPStatus](http://cpanratings.perl.org/d/Test-HTTPStatus)

- CPAN Testers Dependencies

    [http://deps.cpantesters.org/?module=Test::HTTPStatus](http://deps.cpantesters.org/?module=Test::HTTPStatus)

# LICENSE AND COPYRIGHT

This program is released under the following licence: GPL2
Copyright © 2002-2019, brian d foy <bdfoy@cpan.org>. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the Artistic License 2.0.
