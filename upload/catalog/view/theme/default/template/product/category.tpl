<?php echo $header; ?>
<?php echo $content_header; ?>
<?php if ($this->config->get('default_breadcrumbs')) { ?>
  <div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" style="display:inline;">
    <a href="<?php echo $breadcrumb['href']; ?>" itemprop="url"><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></a></div>
  <?php } ?>
  </div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($thumb || $description) { ?>
    <div class="category-info">
      <?php if ($thumb) { ?>
        <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
      <?php } ?>
      <?php if ($description) { ?>
        <?php echo $description; ?>
      <?php } ?>
    </div>
  <?php } ?>
  <?php if ($categories) { ?>
  <h3><?php echo $text_refine; ?></h3>
  <div class="category-list">
    <?php if (count($categories) <= 5) { ?>
      <ul class="refine">
      <?php foreach ($categories as $category) { ?>
        <li><img src="catalog/view/theme/<?php echo $template; ?>/image/arrow-right.png" alt="" /> &nbsp; <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
      </ul>
    <?php } else { ?>
      <?php for ($i = 0; $i < count($categories);) { ?>
      <ul class="refine">
        <?php $j = $i + ceil(count($categories) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($categories[$i])) { ?>
            <li><img src="catalog/view/theme/<?php echo $template; ?>/image/arrow-right.png" alt="" /> &nbsp; <a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
          <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"><img src="catalog/view/theme/<?php echo $template; ?>/image/page-list-active.png" alt="" /> <a onclick="display('grid');"><img src="catalog/view/theme/<?php echo $template; ?>/image/page-grid-off.png" alt="" /></a></div>
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><span class="hide-phone"><?php echo $text_compare; ?></span></a></div>
	<div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
      <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
      <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
      <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
      <?php } ?>
      </select>
    </div>
  </div>
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
      <div>
        <?php if (!$label && $product['offer']) { ?>
          <div class="promo-medium"><img src="catalog/view/theme/<?php echo $template; ?>/image/labels/offer-45x45-<?php echo $lang; ?>.png" alt="" /></div>
        <?php } ?>
        <?php if ($product['thumb']) { ?>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="manufacturer"><?php echo $this->config->get('default_manufacturer_name') ? $product['manufacturer'] : ""; ?></div>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="description"><?php echo $product['description']; ?></div>
        <?php if ($product['price']) { ?>
          <div class="price">
            <?php if ($product['price_option']) { ?>
              <span class="from"><?php echo $text_from; ?></span><br />
            <?php } ?>
            <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
            <?php } else { ?>
              <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
              <br />
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            <?php } ?>
            <?php if ($product['age_minimum']) { ?>
              <span class="help">(<?php echo $product['age_minimum']; ?>+)</span>
            <?php } ?>
          </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
          <div class="rating"><img src="catalog/view/theme/<?php echo $template; ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="addons">
          <a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="button-add"><img src="catalog/view/theme/<?php echo $template; ?>/image/icon_wishlist.png" alt="<?php echo $button_wishlist; ?>" title="<?php echo $button_wishlist; ?>" /></a>
          <a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="button-add"><img src="catalog/view/theme/<?php echo $template; ?>/image/icon_compare.png" alt="<?php echo $button_compare; ?>" title="<?php echo $button_compare; ?>" /></a>
          <a href="<?php echo $product['href']; ?>" class="button-add"><img src="catalog/view/theme/<?php echo $template; ?>/image/icon_view.png" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
        </div>
        <div class="cart">
          <?php if ($dob && $product['age_minimum'] && !$product['age_logged']) { ?>
            <a href="<?php echo $login_register; ?>" class="button"><?php echo $button_login; ?></a>
          <?php } elseif ($dob && $product['age_minimum'] && !$product['age_checked']) { ?>
            <p class="hidden"></p>
          <?php } else { ?>
            <?php if ($product['quote']) { ?>
              <a href="<?php echo $product['quote']; ?>" title="" class="button"><?php echo $button_quote; ?></a>
            <?php } else { ?>
              <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
            <?php } ?>
          <?php } ?>
        </div>
      </div>
    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  <?php } ?>
<?php echo $content_bottom; ?>
</div>
<?php echo $content_footer; ?>

<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');

		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="addons">' + $(element).find('.addons').html() + '</div>';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '</div>';

			html += '<div class="left">';

			var offer = $(element).find('.promo-medium').html();

			if (offer != null) {
				html += '<div class="promo-medium">' + $(element).find('.promo-medium').html() + '</div>';
			}

			var image = $(element).find('.image').html();

			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}

			var price = $(element).find('.price').html();

			if (price != null) {
				html += '<div class="price">' + price + '</div>';
			}

			html += '  <div class="manufacturer">' + $(element).find('.manufacturer').html() + '</div>';
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';

			var rating = $(element).find('.rating').html();

			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '</div>';

			$(element).html(html);
		});

		$('.display').html('<img src="catalog/view/theme/<?php echo $template; ?>/image/page-list-active.png" alt="" /> <a onclick="display(\'grid\');"><img src="catalog/view/theme/<?php echo $template; ?>/image/page-grid-off.png" alt="" /></a>');

		$.totalStorage('display', 'list');

	} else {
		$('.product-list').attr('class', 'product-grid');

		$('.product-grid > div').each(function(index, element) {
			html = '';

			var offer = $(element).find('.promo-medium').html();

			if (offer != null) {
				html += '<div class="promo-medium">' + $(element).find('.promo-medium').html() + '</div>';
			}

			var image = $(element).find('.image').html();

			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}

			html += '<div class="manufacturer">' + $(element).find('.manufacturer').html() + '</div>';
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';

			var price = $(element).find('.price').html();

			if (price != null) {
				html += '<div class="price">' + price + '</div>';
			}

			var rating = $(element).find('.rating').html();

			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '<div class="addons">' + $(element).find('.addons').html() + '</div>';
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';

			$(element).html(html);
		});

		$('.display').html('<a onclick="display(\'list\');"><img src="catalog/view/theme/<?php echo $template; ?>/image/page-list-off.png" alt="" /></a> <img src="catalog/view/theme/<?php echo $template; ?>/image/page-grid-active.png" alt="" /></a>');

		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>

<?php echo $footer; ?>