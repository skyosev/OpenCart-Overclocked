<?php echo $header; ?>
<?php echo $content_header; ?>
<?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($this->config->get('default_breadcrumbs')) { ?>
  <div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
  </div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div class="buttons">
    <div class="left"><h3><?php echo $firstname; ?> <?php echo $lastname; ?> &nbsp; (<?php echo $email; ?>)</h3></div>
    <div class="right"><a href="<?php echo $logout; ?>" class="button"><?php echo $button_logout; ?></a></div>
  </div>
  <h2><?php echo $text_my_account; ?></h2>
  <div class="content">
    <div class="box-account">
      <ul>
        <li><a href="<?php echo $edit; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/account.png" alt="" /><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/password.png" alt="" /><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/address.png" alt="" /><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/wishlist.png" alt="" /><?php echo $text_wishlist; ?></a></li>
      </ul>
    </div>
  </div>
  <h2><?php echo $text_my_orders; ?></h2>
  <div class="content">
    <div class="box-account">
      <ul>
        <li><a href="<?php echo $order; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/history.png" alt="" /><?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $download; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/download.png" alt="" /><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
          <li><a href="<?php echo $reward; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/reward.png" alt="" /><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $transaction; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/transaction.png" alt="" /><?php echo $text_transaction; ?></a></li>
        <?php if ($allow_return) { ?>
          <li><a href="<?php echo $return; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/return.png" alt="" /><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $addreturn; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/addreturn.png" alt="" /><?php echo $text_addreturn; ?></a></li>
        <?php } ?>
        <?php if ($profile_exist) { ?>
          <li><a href="<?php echo $recurring; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/recurring.png" alt="" /><?php echo $text_recurring; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <h2><?php echo $text_my_newsletter; ?></h2>
  <div class="content">
    <div class="box-account">
      <ul>
        <li><a href="<?php echo $newsletter; ?>"><img src="catalog/view/theme/<?php echo $template; ?>/image/account/newsletter.png" alt="" /><?php echo $text_newsletter; ?></a></li>
      </ul>
    </div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $content_footer; ?>
<?php echo $footer; ?> 