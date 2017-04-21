<?php 
	function pre ($var){
		echo "<pre>";
	    print_r($var);
	    echo "</pre>";
	}
	function plus ($var){
		$var = round($var);
    	if($var>0) $var = '+'.$var;
    	return $var;
	}


 ?>