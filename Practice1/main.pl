#!/usr/bin/perl

=pod
open(my $fh, '<' , "test/test2.txt");
my $count;
while(my $data = <$fh>){
    #print $data."========";
    my @match = $data =~ m/Perl/g;
    $count += scalar @match;
    print $count;
}
print "\n======final count: $count\n";

=pod
my $var = qq{Hi where are you};
$var=~ s/e/E/;
print $var."\n";

=pod
my $dir = ".";
opendir(DIR,$dir);
my @all_files = readdir(DIR);
my @all_file = grep {-f} @all_files;
my @all_dir = grep {-d} @all_files;
print "\nFiles\n";
print join("\n",@all_file);
print "\nDirs\n";
print join("\n",@all_dir);
print readdir(DIR);
print "\n";
print readdir(DIR);


=pod
my $path = "test1";
if(-e $path){
    if(-f $path){
        print "Its a file\n";
    }
    elsif(-d $path){
        print "Its a Directory\n";
    }
    else{
        print "Its Other then File/Directory\n";
    }
}
else{
    print "File/Directory not Exists\n";
}
=pod
my $dir = "test";
opendir(DIR,$dir);
while (my $files = readdir(DIR)){
    if($files ne '.' && $files ne '..'){
   	    print $files."\n";
   	    open (my $fh,'<',"$dir/$files");
   	    while(my $data = <$fh>) {
   	        print $data;
   	    }
    }    
}
close DIR;
=pod
my ($sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst) = localtime();
$year += 1900;
print qq{$day-$mon-$year $hour:$min:$sec\n};
print qq{$wday,$yday,$isdst\n};
=pod
my $now = localtime;
print $now;

=pod
my $var = 'hi Bala';
$var=~ tr/a/A/;
print $var;

=pod
my @arr = ("hi\n",'how','when','where');
chop @arr;
print @arr;

=pod
my $val= "enter";
$val=~ m/te/;
print $val."\n";
print $&."\n";
print $`."\n";
print $'."\n";
=pod
my $val = "hai";
$val =~ s/hai/hello/;
print $val."\n";

=pod
my $email = qq{balueee@gmail.com};

#if ($email =~ /^(\w¦\-¦\_¦\.)+\@((\w¦\-¦\_)+\.)+[a-zA-Z]{2,}$/) 
if ($email =~ /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/) 
{ 
print "$email is valid"; 
} 
else { 
print "$email is invalid"; 
} 

=pod
#if($email =~/.+\@.+\..+/){
#if($email =~ /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/) {
if ($email =~ /^(\w¦\-¦\_¦\.)+\@((\w¦\-¦\_)+\.)+[a-zA-Z]{2,}$/){ 
    print "\n Valied Email";   
}
else{
    print "\n Invalid Email";
}



[a-zA-Z0-9._+%-]+@[a-zA-Z0-9.-]\.[a-zA-Z{2,4}]


