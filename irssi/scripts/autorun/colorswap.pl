# Swap between green and white format for public messages. I think this
# helps readability. Assumes you haven't changed message formats.
# for irssi 0.7.98 by Timo Sirainen

use Irssi;
use strict;
use vars qw($VERSION %IRSSI); 
$VERSION = "0.1";
%IRSSI = (
    authors	=> "Timo \'cras\' Sirainen",
    contact	=> "tss\@iki.fi",
    name	=> "colorswap",
    description	=> "eezoterial version by unic0rn",
    url		=> "http://irssi.org/",
    changed	=> "2017"
);

my %setnext = {};
my %lastnick = {};

sub sig_public {
	my ($server, $msg, $nick, $address, $target) = @_;

        if ($lastnick{$server->{tag}."/".$target} ne $nick) {
	  $setnext{$server->{tag}."/".$target} = !$setnext{$server->{tag}."/".$target};
          $lastnick{$server->{tag}."/".$target} = $nick;
        }
        if ($setnext{$server->{tag}."/".$target}) {
	  	Irssi::command('^format pubmsg {pubmsgnick $2 {pubnick $[-12]0}}$1');
                Irssi::command('^format action_public             %b%_|%_ %c%|$*');
        } else {
		Irssi::command('^format pubmsg {pubmsgnickalt $2 {pubnick $[-12]0}}$1');
                Irssi::command('^format action_public             %c%_|%_ %b%|$*');
	}
}

Irssi::signal_add('message public', 'sig_public');
Irssi::signal_add('ctcp action', 'sig_public');
