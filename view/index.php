<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title><?php echo $site['title'];?></title>
    <meta name="keywords" content="<?php echo $site['keywords'];?>">
    <meta name="description" content="<?php echo $site['description'];?>">
	<!--[if lt IE 9]><script>window.location.href='http://www.ifeiwu.com/ie-browser-upgrade.html';</script><![endif]-->
	<link rel="apple-touch-icon" href="<?php echo $this->url('data/apple-touch-icon.png');?>">
    <link rel="icon" type="image/png" href="<?php echo $this->url('data/favicon.png');?>">
    	
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/reset.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/swiper.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/animate.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/magnific-popup.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/main.css');?>">
    <?php if($site['skin']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/skin/'.$site['skin'].'.css');?>">
    <?php endif;?>
    <?php if($site['style']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/'.$site['style'].'.css');?>">
	<?php endif;?>
	
	<?php if ($site['bgcolor']):?>
	<style>
	body{
		background-color: <?php echo $site['bgcolor'];?>;
	}
	.mfp-bg {
	    background: <?php echo $site['bgcolor'];?>;
	}
	.mfp-close-btn-in .mfp-close{
		color: <?php echo $site['bgcolor'];?>;
	}
	</style>
	<?php endif;?>
		
	<script>
	var swiper_options_custom = {
	        autoplay: parseInt('<?php echo $site['swiper_autoplay'];?>'),
	        speed: parseInt('<?php echo $site['swiper_speed'];?>'),
	        centeredSlides: true,
			slidesPerView: parseInt('<?php echo $site['swiper_slidesPerView'];?>'),
			spaceBetween: parseInt('<?php echo $site['swiper_spaceBetween'];?>')
	    };
	</script>
	<script src="<?php echo $this->url('asset/js/jquery.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/swiper.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/magnific-popup.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/main.js');?>"></script>
</head>
<body>

	<div class="container">
		<?php if ($site['logo']):?>
		<a class="logo"><img src="<?php echo $this->url('data/'.$site['logo']);?>"></a>
		<?php endif;?>
			
	    <div class="swiper-container">
	        <div class="swiper-wrapper">
	            <?php foreach($items as $i=>$item):?>
	            <div class="swiper-slide" data-hash="slide<?php echo $i;?>">
	            	<?php
	                $url = 'javascript:;';
					$url_class = '';
	                if( $item['image'] ) {
	                	$url = $this->url('show/'.$item['id']);
						$url_class = 'ajax-popup-link';
	                }
	                ?>
	  				<a href="<?php echo $url;?>" class="<?php echo $url_class;?>">
	  					<img src="<?php echo $this->url($item['image_path'].'/'.$item['image'], $item['utime']);?>" />
	  				</a>
	            </div>
	            <?php endforeach;?>
	        </div>
	    </div>
	    <div class="swiper-button-prev"></div>
	    <div class="swiper-button-next"></div>
	    <div class="swiper-pagination"></div>
	    
	    <?php if ($site['about_title']):?>
	    <a href="#about" id="open_about"><?php echo $site['about_title'];?></a>
	    <div id="about" class="mfp-hide">
	    	<div class="zoom-anim-dialog">
				<h1><?php echo $site['about_title'];?></h1>
				<?php echo $this->decode($site['about_intro']);?>
			</div>
		</div>
		<?php endif;?>
	</div>
	
	<?php
	if ($site['stats_open'] == 1)
	{
		$squery = http_build_query(array(
				'r'=>$this->request->root(),
				'm'=>$site['stats_much'],
				'u'=>$site['stats_unit'],
				'd'=>$site['stats_date']
			)
		);
		
		echo '<script src="' . $this->url('asset/js/stats.js?' . $squery) . '"></script>';
	}
	
	if ($site['stats3_open'] == 1) { echo $this->decode($site['stats3_code']); }
	?>
	
</body>
</html>
