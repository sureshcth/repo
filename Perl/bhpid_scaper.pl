#!/usr/bin/perl

{
    local $SIG{__WARN__} = sub {
        warn @_ unless $_[0] =~ m(^.* too (?:big|small));
    };
    # your code here.

use WWW::Mechanize;
use Spreadsheet::WriteExcel;
use Date::Calc;
use DBI;
use Spreadsheet::BasicRead;
my $xls_rows_count = 0;
my $workbook  = Spreadsheet::WriteExcel->new('walmart.xls');
my $worksheet = $workbook->add_worksheet();
my $xlsFileName = 'BHPD1031510.xls';
my $ss = new Spreadsheet::BasicRead($xlsFileName) ||
    die "Could not open '$xlsFileName': $!";
my $data = $ss->getNextRow();
my $data = $ss->getNextRow(); 
#my $data = $ss->getNextRow(); 
my $processes = 7;

my $fork_retries=5;
while (my $data = $ss->getNextRow())
 {
   open FH,">aa.txt";
   print FH "\nHi\n";
   print "hiiiiiiiiii";
   last if ($data->[4] eq ''); 
   my $pid=0;
   my $tries=0;
     do {
        	sleep( 1 );
        	my @pids = &detecting_process_id( 'bhpid_scaper.pl' );
       		 print "\nnumber of pid is $#pids\n";
        	if (@pids < $processes ) {
            	        my $cat_id =$data->[0];
           	        my $crawler_id=$data->[1];
         	        my $pattern_id=$data->[2];
          	        my $source_id=$data->[3];
            	        my $url=$data->[4];
            	        if(!($pid=fork())){ 
                	   if($url ne ''){ 
                  	       &main($data);
                  	       exit;
                  	    }
                        }elsif($url eq ''){
                            exit;
                        }
                 print '* forked pid: ' . $pid . "\n" if $pid;
                
             $tries++;
            }    
          } while ( !$pid );

 #   print "*** Fork retries limit exceeded!\n" if $tries > $fork_retries;





}
      
 

wait;
exit; 


sub main()
{
           
	my $datatemp=shift;

	my $i=0;
        my $count=0; 
	my %hash=();
	my $findResult;
        print "\n\n\nHi i am url",$datatemp->[4],"\n\n\n\n\n";
	my $mech = WWW::Mechanize->new();
	$mech->timeout(30);
        $mech->agent_alias( 'Mac Safari');
        my $tt=$datatemp->[4];
        print "I am going to fetch\n";
	$mech->get($tt);
	print "\nSuuc",$mech->success(),"\n";
	#Finding all nodes in the current page
        print "Hi i am from main";
 	my @nodes=$mech->find_link( class  => 'next');
        print "@nodes";
            &updateexcel($mech,$datatemp);
        while($nodes[0])
         {  
           $mech->follow_link( class=>'next');

           &updateexcel($mech,$datatemp);
           $nodes[0]=0;
          @nodes=$mech->find_link( class  => 'next');
          print "while node value: $nodes[0]"
         }
 


exit;
#sendEmail ("shameem\@support.com","Crawl Complete","$source_id, $cat_id, $crawler_id, $pattern_id");

}
sub updateexcel ()
{
# database connection
        my @urls;
	my ( $year, $month, $day ) = Date::Calc::Today;
	my $mech=shift;
	my $datatemp=shift;
	my $user='shameem';
	my $pass='123456';
	my $dsn = "DBI:mysql:database=RA_DataAcquisitionPlatform;host=localhost;3306";
	my $dbh = DBI->connect($dsn, $user, $pass)
	 or die "Can’t connect to the DB: $DBI::errstr\n"; 
	my @urlsdemo = $mech->find_all_links( text_regex => qr/.*/ );
        foreach my $dem (@urlsdemo)
        {
           if(($dem->[1] !~ /' '/))
            {
             push(@urls,$dem);	
            }
        }

       my $total_urls = $#urls + 1;
	$xls_rows_count = $xls_rows_count + $total_urls;
        my $xls_current_row = $xls_rows_count -1;
	while ( $total_urls-- ){
		my $product_url = $urls[$total_urls]->[0];
		my $product_title = $urls[$total_urls]->[1];
		( my $product_id = $product_url ) =~ s/.*\/(.*)$/$1/;

		my $product_link = $product_url;
		#Writing to database.......
		print "\n Writing to database\n";
		$product_title =~ s/\'//g;
		my $source_id=$datatemp->[3];
		my $cat_id=$datatemp->[0];
		my $crawler_id=$datatemp->[1];
		my $pattern_id=$datatemp->[2];
		my $sth = $dbh->prepare("insert into Discovery_Scrape_Table(Source_ID,Cat_ID,Crawler_ID,Pattern_ID,Product_Title,Product_URL,Scrape_Date) values ('$source_id','$cat_id','$crawler_id','$pattern_id','$product_title','$product_link','$year-$month-$day' )");
		$sth->execute();

   }
}

sub insertInHash
{
  my $temp3=shift;
  my $hash=shift;
  my $t2=$temp3->[1];


  $hash->{$t2}=$temp3;

}
sub findInHash
{
 my $temp= shift; 
 my $hash=shift;
 foreach (keys %$hash)
  { if($_ eq $temp->[1])
    {  return 1;
    }
  }
  return 0;
}

#Sending Email
sub sendEmail
{
my ($to, $from, $subject, $message) = @_;
my $sendmail = '/usr/lib/sendmail';
open(MAIL, "|$sendmail -oi -t");
print MAIL "From: $from\n";
print MAIL "To: $to\n";
print MAIL "Subject: $subject\n\n";
print MAIL "$message\n";
close(MAIL);
}
sub detecting_process_id {
    if ( ref( $_[0] ) ) { shift; }

    my ($process_name) = @_;
    my ( @pids ) = `ps ax` =~ m!\n\s*(\d+)\s+.*?$process_name\W!ig;
    return @pids;
}



}
