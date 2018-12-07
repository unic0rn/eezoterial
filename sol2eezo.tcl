set sol2eezo(#073642) #260A47
set sol2eezo(#DC322F) #AD1457
set sol2eezo(#859900) #AB47BC
set sol2eezo(#B58900) #388E3C
set sol2eezo(#268BD2) #0288D1
set sol2eezo(#D33682) #7E57C2
set sol2eezo(#2AA198) #009688
set sol2eezo(#EEE8D5) #F3E5F5
set sol2eezo(#002B36) #0D1240
set sol2eezo(#CB4B16) #8D6E63
set sol2eezo(#586E75) #3F51B5
set sol2eezo(#657B83) #5C6BC0
set sol2eezo(#839496) #7986CB
set sol2eezo(#6C71C4) #607D8B
set sol2eezo(#93A1A1) #9FA8DA
set sol2eezo(#FDF6E3) #E8EAF6

proc parse {buf} {
    set ptr [string first # $buf]
    if {$ptr == -1} {
        puts -nonewline $::out $buf
        return
    }
    if {[string index $buf [expr $ptr+4]] eq "\""} {
        set len 3
    } else {
        set len 6
    }
    puts -nonewline $::out [string range $buf 0 [expr $ptr-1]]
    set color [string toupper [string range $buf $ptr [expr $ptr+$len]]]
    if {[catch {set ecolor $::sol2eezo($color)}]} {
        puts "unknown color: $color"
        puts -nonewline $::out $color
        set ::unknown($color) 1
    } else {
        puts -nonewline $::out $ecolor
    }
    parse [string range $buf [expr $ptr+$len+1] end]
}

set in [open [lindex $argv 0]]
set out [open [lindex $argv 1] w+]
set buf [read $in]
close $in
array set unknown {}
parse $buf
close $out
puts "unknown colors: [llength [array names unknown]]"