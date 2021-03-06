<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/theme.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button-save"><?php echo $button_save; ?></a>
        <a onclick="apply();" class="button-save"><?php echo $button_apply; ?></a>
        <a href="<?php echo $cancel; ?>" class="button-cancel"><?php echo $button_cancel; ?></a>
      </div>
    </div>
    <div class="content">
      <?php if ($active) { ?>
        <div class="tooltip" style="margin:5px 0px 10px 0px;"><?php echo $text_active; ?></div>
      <?php } else { ?>
        <div class="attention" style="margin:5px 0px 10px 0px;"><?php echo $text_not_active; ?></div>
      <?php } ?>
      <div id="tabs" class="htabs">
        <a href="#tab-general"><?php echo $tab_general; ?></a>
        <a href="#tab-footer"><?php echo $tab_footer; ?></a>
        <a href="#tab-options"><?php echo $tab_options; ?></a>
        <a href="#tab-credits"><?php echo $tab_credits; ?></a>
      </div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" name="default">
      <div id="tab-general">
        <table class="form">
          <tr>
            <td><?php echo $entry_widescreen; ?></td>
            <td><?php if ($default_widescreen) { ?>
              <input type="radio" name="default_widescreen" value="1" id="widescreen-on" class="radio" checked />
              <label for="widescreen-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_widescreen" value="0" id="widescreen-off" class="radio" />
              <label for="widescreen-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_widescreen" value="1" id="widescreen-on" class="radio" />
              <label for="widescreen-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_widescreen" value="0" id="widescreen-off" class="radio" checked />
              <label for="widescreen-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_breadcrumbs; ?></td>
            <td><?php if ($default_breadcrumbs) { ?>
              <input type="radio" name="default_breadcrumbs" value="1" id="breadcrumbs-on" class="radio" checked />
              <label for="breadcrumbs-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_breadcrumbs" value="0" id="breadcrumbs-off" class="radio" />
              <label for="breadcrumbs-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_breadcrumbs" value="1" id="breadcrumbs-on" class="radio" />
              <label for="breadcrumbs-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_breadcrumbs" value="0" id="breadcrumbs-off" class="radio" checked />
              <label for="breadcrumbs-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_back_to_top; ?></td>
            <td><?php if ($default_back_to_top) { ?>
              <input type="radio" name="default_back_to_top" value="1" id="back-to-top-on" class="radio" checked />
              <label for="back-to-top-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_back_to_top" value="0" id="back-to-top-off" class="radio" />
              <label for="back-to-top-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_back_to_top" value="1" id="back-to-top-on" class="radio" />
              <label for="back-to-top-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_back_to_top" value="0" id="back-to-top-off" class="radio" checked />
              <label for="back-to-top-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
        </table>
      </div>
      <div id="tab-footer">
        <table class="form">
          <tr>
            <td><?php echo $entry_footer_theme; ?></td>
            <td><select name="default_footer_theme">
              <?php if (isset($default_footer_theme)) { $selected = "selected"; ?>
                <option value="1" <?php if ($default_footer_theme == '1') { echo $selected; } ?>><?php echo $text_light; ?></option>
                <option value="0" <?php if ($default_footer_theme == '0') { echo $selected; } ?>><?php echo $text_dark; ?></option>
              <?php } else { ?>
                <option value="1"><?php echo $text_light; ?></option>
                <option value="0"><?php echo $text_dark; ?></option>
              <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_location; ?></td>
            <td><?php if ($default_footer_location) { ?>
              <input type="radio" name="default_footer_location" value="1" id="footer-location-on" class="radio" checked />
              <label for="footer-location-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_location" value="0" id="footer-location-off" class="radio" />
              <label for="footer-location-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_location" value="1" id="footer-location-on" class="radio" />
              <label for="footer-location-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_location" value="0" id="footer-location-off" class="radio" checked />
              <label for="footer-location-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_phone; ?></td>
            <td><?php if ($default_footer_phone) { ?>
              <input type="radio" name="default_footer_phone" value="1" id="footer-phone-on" class="radio" checked />
              <label for="footer-phone-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_phone" value="0" id="footer-phone-off" class="radio" />
              <label for="footer-phone-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_phone" value="1" id="footer-phone-on" class="radio" />
              <label for="footer-phone-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_phone" value="0" id="footer-phone-off" class="radio" checked />
              <label for="footer-phone-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_email; ?></td>
            <td><?php if ($default_footer_email) { ?>
              <input type="radio" name="default_footer_email" value="1" id="footer-email-on" class="radio" checked />
              <label for="footer-email-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_email" value="0" id="footer-email-off" class="radio" />
              <label for="footer-email-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_email" value="1" id="footer-email-on" class="radio" />
              <label for="footer-email-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_email" value="0" id="footer-email-off" class="radio" checked />
              <label for="footer-email-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_facebook; ?></td>
            <td><?php if ($default_footer_facebook) { ?>
              <input type="radio" name="default_footer_facebook" value="1" id="footer-facebook-on" class="radio" checked />
              <label for="footer-facebook-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_facebook" value="0" id="footer-facebook-off" class="radio" />
              <label for="footer-facebook-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_facebook" value="1" id="footer-facebook-on" class="radio" />
              <label for="footer-facebook-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_facebook" value="0" id="footer-facebook-off" class="radio" checked />
              <label for="footer-facebook-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_twitter; ?></td>
            <td><?php if ($default_footer_twitter) { ?>
              <input type="radio" name="default_footer_twitter" value="1" id="footer-twitter-on" class="radio" checked />
              <label for="footer-twitter-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_twitter" value="0" id="footer-twitter-off" class="radio" />
              <label for="footer-twitter-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_twitter" value="1" id="footer-twitter-on" class="radio" />
              <label for="footer-twitter-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_twitter" value="0" id="footer-twitter-off" class="radio" checked />
              <label for="footer-twitter-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_google; ?></td>
            <td><?php if ($default_footer_google) { ?>
              <input type="radio" name="default_footer_google" value="1" id="footer-google-on" class="radio" checked />
              <label for="footer-google-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_google" value="0" id="footer-google-off" class="radio" />
              <label for="footer-google-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_google" value="1" id="footer-google-on" class="radio" />
              <label for="footer-google-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_google" value="0" id="footer-google-off" class="radio" checked />
              <label for="footer-google-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_pinterest; ?></td>
            <td><?php if ($default_footer_pinterest) { ?>
              <input type="radio" name="default_footer_pinterest" value="1" id="footer-pinterest-on" class="radio" checked />
              <label for="footer-pinterest-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_pinterest" value="0" id="footer-pinterest-off" class="radio" />
              <label for="footer-pinterest-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_pinterest" value="1" id="footer-pinterest-on" class="radio" />
              <label for="footer-pinterest-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_pinterest" value="0" id="footer-pinterest-off" class="radio" checked />
              <label for="footer-pinterest-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_footer_skype; ?></td>
            <td><?php if ($default_footer_skype) { ?>
              <input type="radio" name="default_footer_skype" value="1" id="footer-skype-on" class="radio" checked />
              <label for="footer-skype-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_skype" value="0" id="footer-skype-off" class="radio" />
              <label for="footer-skype-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_footer_skype" value="1" id="footer-skype-on" class="radio" />
              <label for="footer-skype-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_footer_skype" value="0" id="footer-skype-off" class="radio" checked />
              <label for="footer-skype-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
        </table>
      </div>
      <div id="tab-options">
        <table class="form">
          <tr>
            <td><?php echo $entry_manufacturer_name; ?></td>
            <td><?php if ($default_manufacturer_name) { ?>
              <input type="radio" name="default_manufacturer_name" value="1" id="manufacturer-name-on" class="radio" checked />
              <label for="manufacturer-name-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_manufacturer_name" value="0" id="manufacturer-name-off" class="radio" />
              <label for="manufacturer-name-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_manufacturer_name" value="1" id="manufacturer-name-on" class="radio" />
              <label for="manufacturer-name-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_manufacturer_name" value="0" id="manufacturer-name-off" class="radio" checked />
              <label for="manufacturer-name-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_manufacturer_image; ?></td>
            <td><?php if ($default_manufacturer_image) { ?>
              <input type="radio" name="default_manufacturer_image" value="1" id="manufacturer-image-on" class="radio" checked />
              <label for="manufacturer-image-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_manufacturer_image" value="0" id="manufacturer-image-off" class="radio" />
              <label for="manufacturer-image-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_manufacturer_image" value="1" id="manufacturer-image-on" class="radio" />
              <label for="manufacturer-image-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_manufacturer_image" value="0" id="manufacturer-image-off" class="radio" checked />
              <label for="manufacturer-image-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_web_design; ?></td>
            <td><textarea name="default_web_design" cols="40" rows="10"><?php echo $default_web_design; ?></textarea></td>
          </tr>
          <tr>
            <td><?php echo $entry_powered_by; ?></td>
            <td><?php if ($default_powered_by) { ?>
              <input type="radio" name="default_powered_by" value="1" id="powered-by-on" class="radio" checked />
              <label for="powered-by-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_powered_by" value="0" id="powered-by-off" class="radio" />
              <label for="powered-by-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="default_powered_by" value="1" id="powered-by-on" class="radio" />
              <label for="powered-by-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="default_powered_by" value="0" id="powered-by-off" class="radio" checked />
              <label for="powered-by-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
        </table>
      </div>
      <div id="tab-credits">
        <table class="form">
          <tr>
            <td><?php echo $info_theme; ?></td>
            <td><?php echo $text_info_theme; ?></td>
          </tr>
          <tr>
            <td><?php echo $info_author; ?></td>
            <td><?php echo $text_info_author; ?></td>
          </tr>
          <tr>
            <td><?php echo $info_license; ?></td>
            <td><?php echo $text_info_license; ?></td>
          </tr>
          <tr>
            <td><?php echo $info_support; ?></td>
            <td><?php echo $text_info_support; ?></td>
          </tr>
        </table>
      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>

<?php echo $footer; ?>