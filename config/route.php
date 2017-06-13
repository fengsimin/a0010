<?php
return array(

	'/' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'index'
	),
	
	'/about' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'about'
	),
	
	'/show/(\d+)' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'show'
	),
	
	// 流量统计
	'/stats' => array(
		'method' => 'POST',
		'controller' => 'Stats',
		'action' => 'index'
	),
);
