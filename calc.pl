  GNU nano 2.2.6                                 Файл: /home/calc.pl                                                                        

$n1=$ARGV[0];
$op=$ARGV[1];
$n2=$ARGV[2];
$ans=0;
if ( $op eq "+" ) {
        $ans = $n1 + $n2;
}
elsif ( $op eq "-"){
        $ans = $n1 - $n2;
}
elsif ( $op eq "/"){
        $ans = $n1 / $n2;
}
elsif ( $op eq "*"){
        $ans = $n1 * $n2;
}
elsif ( $op eq "^"){
        $ans = $n1 ** $n2;
}
else {
        print "Error: op must be +, -, *, /,^ only\n";
        exit;
}
print "$ans\n";

