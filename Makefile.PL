# $Id$
use ExtUtils::MakeMaker;

use Test::Manifest qw(get_t_files);

WriteMakefile
        (
        'NAME'      => 'Test::HTTPStatus',
        'VERSION'   => '0.6',
 		'PREREQ_PM' => {
 			'Test::Manifest'           => undef,
 			'Test::Builder'            => undef,
 			'Test::More'               => undef,
 			'HTTP::SimpleLinkChecker'  => undef,
 			'URI'                      => undef,
			'Carp'                     => undef
 			},
        'PM'        => 
        	{
            'lib/HTTPStatus.pm' => '$(INST_LIBDIR)/HTTPStatus.pm',
            },
 
 		depend => { Makefile => 't/test_manifest' },
        test   => { TESTS => scalar get_t_files() },
        );

