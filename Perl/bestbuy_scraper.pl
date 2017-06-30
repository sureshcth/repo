#!/usr/bin/perl
use strict;
#use lib '/home/helgi/scraping/Lib';
#use lib '/home/crawldev/modules';
use WWW::Mechanize;
use Date::Calc;
use DBI;
use Spreadsheet::BasicRead;

my $xls_rows_count = 0;
my $xlsFileName = 'best.xls';
my $ss = new Spreadsheet::BasicRead($xlsFileName) ||
    die "Could not open '$xlsFileName': $!";
#my $data = $ss->getNextRow();
my $data = $ss->getNextRow(); 
my $data = $ss->getNextRow(); 
my $processes = 20;

my $fork_retries=5;
while (my $data = $ss->getNextRow())
 {
   last if ($data->[4] eq ''); 
   my $pid=0;
   my $tries=0;
     do {
        	sleep( 3 );
        	my @pids = &detecting_process_id( 'best_scraper.pl' );
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
      
 

#wait;
exit; 


sub main()
{
 
	my $datatemp=shift;
        my $count=1;
	my $i=2;
	my %hash=();
	my $findResult;
       # print "\n\n\nHi i am url",$datatemp->[4],"\n\n\n\n\n";
	my $mech = WWW::Mechanize->new();
	$mech->timeout(30);
	$mech->agent_alias( 'Windows IE 6');
        my $tt=$datatemp->[4];
       print "\n",$datatemp->[4],"\n";

	$mech->get($tt);

        my @nodes;
	print "\nFinding all nodes in the current page\n";
	my @nodes=$mech->find_all_links( text_regex  => qr/^\d+$/i);

#	 @nodes=$mech->find_all_links(class => 'pgnav');
	print "\nNodes is @nodes\n";
	foreach my $temp (@nodes)
          {
        
		print "\nnodes text:",$temp->[0],"\n";

		#insert the nodes in the hash if it is not in .
		$findResult= &findInHash($temp,\%hash);
		if(!$findResult ){
		&insertInHash($temp,\%hash);
                $count++;
	     }

	  }
	print "\nPrinting Hashhhhhhhhhh\n";
	foreach (keys %hash){

		 print "\nhash key is:$_ \n";
	 }

=pod
	&updateexcel($mech,$datatemp);

	while($i < $count+1){
                
		my $link =$hash{$i}->[1];
		print "\nkey number $_\n";

		print "\nfollow link $link\n";
		print "\nHiii\n";
                last if($link eq '');
        	if($tt=~m/cp=\d+/)
        	{
       			 $tt=~s/cp=\d+/cp=$link/;
       		 	$link=$tt;
        	}
        	else{

                   my $link=$tt.'&cp='.$link;
       		}
		$mech->get($link);
               my @nodes=$mech->find_all_links( text_regex  => qr/^\d+$/i);

		#        @nodes=$mech->find_all_links(class => 'pgnav');
        	print "\nNodes is @nodes\n";
        	foreach my $temp (@nodes)
       			{
			  print "\nnodes is:",$temp->[1],"\n";
                          #insert the nodes in the hash if it is not in .
                	  $findResult= &findInHash($temp,\%hash);
                          if(!$findResult ){
                              &insertInHash($temp,\%hash);
			      $count++;
                           print "\ninserting in to hash:",$temp->[1],"\n";
                           my $qq=$temp->[1];
                            print "\nvalue:$hash{$qq}"; 
                           }

        		}



        $i++;
#	&updateexcel($mech,$datatemp);
	}

=cut
print "hiiiiiiiiiiiiii i am shameem:\n";
#sendEmail ('shameem@sparksupport.com,sai@sparksupport.com','Crawl Complete',"$datatemp->[3],$datatemp->[0], $datatemp->[1],$datatemp->[2] ");

Net::Mail::send('shameem\@support.com,cadorna@reflexivearc.com','Crawl Complete',"$datatemp->[3],$datatemp->[0], $datatemp->[1],$datatemp->[2] ");
}


sub updateexcel ()
{
# database connection
	my ( $year, $month, $day ) = Date::Calc::Today;
	my $mech=shift;
	my $datatemp=shift;
	my $user='shameem';
	my $pass='123456';
	my $dsn = "DBI:mysql:database=RA_DataAcquisitionPlatform;host=localhost;3306";
	my $dbh = DBI->connect($dsn, $user, $pass)
	 or die "Can’t connect to the DB: $DBI::errstr\n"; 
        print "\n I am update function\n";
        my @urlsd = $mech->find_all_links(class => 'uri');
        my @urls;
        #print "\nI am URLS urls\n"; 
       foreach (@urlsd)
        {
         #print "\nImage:",$_->[0],"\n";
        # print "\nImage:",$_->[1],"\n";
        # print "\nImage:",$_->[2],"\n";
        # print "\nImage:",$_->[3],"\n";
        # print "\nImage:",$_->[4],"\n";
         
        # print "\nImage:",$_->[5],"\n";
        # print "\nImage:",$_->[6],"\n";
        # print "\nImage:",$_->[7],"\n";
         
        if ($_->[0] !~m/img\ src/&& $_->[1] !~m/^\d+/)
        { 
                     
           
          push(@urls,$_);
	}
       } 
        foreach(@urls)
        {
         print "\n",$_->[1],"\n";
         
        # print "\n",$_->[0],"\n";
        }
        my $total_urls = $#urls + 1;
	$xls_rows_count = $xls_rows_count + $total_urls;
        my $xls_current_row = $xls_rows_count -1;
	while ( $total_urls-- ){
		my $product_url = $urls[$total_urls]->[0];
		my $product_title = $urls[$total_urls]->[1];
		#( my $product_id = $product_url ) =~ s/.*\/(.*)$/$1/;

		#( my $product_id = $product_url ) =~ s/.*NodeID=(\d+).*/$1/;
		my $product_link ="http://www.bestbuy.com".$product_url ;
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
print "\ntrhr\n";
my ($to, $from, $subject, $message) = @_;
my $sendmail = '/usr/lib/sendmail';
open(MAIL, "|$sendmail -oi -t") or print "erro";
print MAIL "From: $from\n";
print MAIL "To: $to\n";
print MAIL "Subject: $subject\n\n";
print MAIL "$message\n";
close(MAIL);
print "bye";
}
sub detecting_process_id {
    if ( ref( $_[0] ) ) { shift; }

    my ($process_name) = @_;
    my ( @pids ) = `ps ax` =~ m!\n\s*(\d+)\s+.*?$process_name\W!ig;
    return @pids;
}




