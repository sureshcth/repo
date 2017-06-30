<?

//$in_1 = "root|/mainQuests|[33]|id";
$in_1 = "root| mainQuests|[34]|persistQuestCounters|[0]|id|CAMPAIGN_reruer_4343|err|[44]|";
$in_2 = "root|/mainQuests|[33]";
$in_2 = preg_quote($in_2, "/");
if(preg_match("/^$in_2/", $in_1)){
	echo "Match Found\n";
}else{
	echo "Match not Found";
}

$path = preg_replace("/(\\|\\[\\d+\\]|\\|CAMPAIGN[\\w\\d_]*| [\\w\\d]+)/", "",  $in_1);
echo "\n$path\n";

?>
