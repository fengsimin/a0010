<?php
namespace controller;

use ifeiwu\Controller;

class Home extends Controller
{

	public function _init()
	{
		$site = theme(site());
		
		$this->assign('site', $site);
	}

	public function index()
	{
		$items = db()->select('item', array('id', 'image', 'image_path', 'url', 'utime'))
					 ->where('nid = 1 AND state = 1')
					 ->order('sortby DESC, ctime DESC')
					 ->all();
	
		$this->assign('items', $items);
		$this->display();
	}

	public function show($id)
	{
		$db = db();
		$item = $db->select('item', array('id', 'summary', 'image', 'image_path', 'utime'))
				   ->where("id = $id")
				   ->get();

		exit('<div class="item">
				<div class="zoom-anim-dialog">
					<div class="image">
						<img src="'.$item['image_path'].'/'.$item['image'].'?v='.$item['utime'].'">
					</div>
					<div class="text"><div>'.$item['summary'].'</div></div>
				</div>
			</div>');
	}

}
