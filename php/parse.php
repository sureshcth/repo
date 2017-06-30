<?
$delimiter  = '|';
$path = 'root|mainQuests|[33]|persistQuestCounters|[0]|id": "unitTypeBuilt Militia"';
$path_array = explode ($delimiter, $path);

$result = trim($path_array[0]);

for ($i = 1; $i<count($path_array); $i++){
	if (preg_match("/^\[\d+\]$/", trim($path_array[$i]))){
		echo "$result\n";
		break;
	}else{
		$result .= $delimiter . $path_array[$i];
	}
}

?>
