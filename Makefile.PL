# $Id$
use ExtUtils::MakeMaker;

use Test::Manifest qw(get_t_files);

WriteMakefile
        (
        'NAME'      => 'Test::HTTPStatus',
        'VERSION'   => '0.5',
 		'PREREQ_PM' => {
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
 
        test => { TESTS => scalar get_t_files() },
        );

