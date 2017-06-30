<?
	$old = array(
		"a" => array( "id" => 1, "t" => 0),
		"b" => array( "id" => 2, "t" => 1),
		"c" => array( "id" => 23, "t" => 2)
	);

	
	$new = array(
		"a" => array( "id" => 1),
		"b" => array( "id" => 2, "t" => 1),
		"d" => array( "id" => 3, "t" => 2)
	);

	$overlapMap = array_intersect_key($new, $old);
	var_dump($overlapMap);

	foreach( $overlapMap as $uid => $val ) {
		$oldVal = $old[$uid];
		$newVal = $new[$uid];
		
		if( $oldVal != $newVal ) {
			$changedEntries[] = array('old' => $oldVal, 'new' => $newVal);
		}
	}

	var_dump($changedEntries);

?>
