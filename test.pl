# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 1 };
use Crypt::GOST_PP;
ok(1); # If we made it this far, we're ok.

#########################

$text = "This is an encryption test use Crypt::GOST_PP";
$pp   = "passphrase";
$ref  = Crypt::GOST_PP->new( $pp );
$enc  = $ref->encrypt( $text );
$ref2 = Crypt::GOST_PP->new( $pp );
$dec  = $ref2->decrypt( $enc );

print <<END;
Original Text:  $text
-----
Passphrase:     $pp
-----
Cipher Text:    $enc
-----
Decrypted Text: $dec
END

