<?php if ($theme) { ?>
<div class="box">
  <div class="box-heading"><?php echo $title; ?></div>
  <div class="box-content">
    <div class="slick_<?php echo $slick_theme; ?>_skin" id="carousel<?php echo $module; ?>">
      <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
          <div class="carousel-swipe"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></div>
        <?php } else { ?>
          <div class="carousel-swipe"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></div>
        <?php } ?>
      <?php } ?>
    </div>
  </div>
</div>
<?php } else { ?>
  <div style="margin-bottom:15px;">
    <div class="slick_<?php echo $slick_theme; ?>_skin" id="carousel<?php echo $module; ?>">
      <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
          <div class="carousel-swipe"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></div>
        <?php } else { ?>
          <div class="carousel-swipe"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></div>
        <?php } ?>
      <?php } ?>
    </div>
  </div>
<?php } ?>

<script type="text/javascript"><!--
jQuery(document).ready(function() {
	$('#carousel<?php echo $module; ?>').slick({
		arrows: true,
		prevArrow: '<p class="slick-prev"><span></span></p>',
		nextArrow: '<p class="slick-next"><span></span></p>',
		autoplay: <?php echo $auto; ?>,
		autoplaySpeed: 5000,
		pauseOnHover: true,
		slidesToScroll: 1,
		infinite: true,
		speed: 800,
		easing: 'easeInOutExpo',
		mobileFirst: true,
		swipe: true,
		rtl: false,
		responsive: [
		{	breakpoint: 1024,
			settings: {
				slidesToShow: <?php echo $show_1024; ?>
			}
		},
		{	breakpoint: 800,
			settings: {
				slidesToShow: <?php echo $show_800; ?>
			}
		},
		{ 	breakpoint: 600,
			settings: {
				slidesToShow: <?php echo $show_600; ?>
			}
		},
		{ 	breakpoint: 360,
			settings: {
				slidesToShow: <?php echo $show_360; ?>
			}
		}]
	});
	$('.carousel-swipe').on('swipe', function(event, slick, direction) {
		console.log(direction);
	});
})(jQuery);
--></script>