#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket::INET;

print "Start...";

my $socket = IO::Socket::INET->new(
    LocalPort => 443,
    Type      => SOCK_STREAM,
    ReuseAddr => 1,
    Listen    => 10,
) or die "Cannot create socket: $!";

print "Server listening on port 443...\n";

while (my $client_socket = $socket->accept()) {
    my $request = <$client_socket>;
    print "Received request: $request";
    my $response = "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nHello, World!\r\n";
    print $client_socket $response;
    close $client_socket;
}
