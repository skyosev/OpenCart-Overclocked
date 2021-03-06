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
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button-save"><?php echo $button_save; ?></a>
        <a onclick="apply();" class="button-save"><?php echo $button_apply; ?></a>
        <a href="<?php echo $cancel; ?>" class="button-cancel"><?php echo $button_cancel; ?></a>
      </div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" name="slideshow">
        <table class="form">
          <tr>
            <td><?php echo $entry_theme; ?></td>
            <td><?php if ($slideshow_theme) { ?>
              <input type="radio" name="slideshow_theme" value="1" id="theme-on" class="radio" checked />
              <label for="theme-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_theme" value="0" id="theme-off" class="radio" />
              <label for="theme-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="slideshow_theme" value="1" id="theme-on" class="radio" />
              <label for="theme-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_theme" value="0" id="theme-off" class="radio" checked />
              <label for="theme-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_title; ?></td>
            <td><?php foreach ($languages as $language) { ?>
              <input type="text" name="slideshow_title<?php echo $language['language_id']; ?>" id="slideshow_title<?php echo $language['language_id']; ?>" size="30" value="<?php echo ${'slideshow_title' . $language['language_id']}; ?>" />
              <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" alt="" style="vertical-align:top;" /><br />
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_skin; ?></td>
            <td><select name="slideshow_skin">
              <?php foreach ($skins as $skin) { ?>
                <?php if ($slideshow_skin == $skin['skin']) { ?>
                  <option value="<?php echo $skin['skin']; ?>" style="background-color:<?php echo $skin['color']; ?>; padding:2px 4px;" selected="selected"><?php echo $skin['title']; ?></option>
                <?php } else { ?>
                  <option value="<?php echo $skin['skin']; ?>" style="background-color:<?php echo $skin['color']; ?>; padding:2px 4px;"><?php echo $skin['title']; ?></option>
                <?php } ?>
              <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_playpause; ?></td>
            <td><?php if ($slideshow_playpause) { ?>
              <input type="radio" name="slideshow_playpause" value="1" id="playpause-on" class="radio" checked />
              <label for="playpause-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_playpause" value="0" id="playpause-off" class="radio" />
              <label for="playpause-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="slideshow_playpause" value="1" id="playpause-on" class="radio" />
              <label for="playpause-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_playpause" value="0" id="playpause-off" class="radio" checked />
              <label for="playpause-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_pagination; ?></td>
            <td><?php if ($slideshow_pagination) { ?>
              <input type="radio" name="slideshow_pagination" value="1" id="pagination-on" class="radio" checked />
              <label for="pagination-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_pagination" value="0" id="pagination-off" class="radio" />
              <label for="pagination-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="slideshow_pagination" value="1" id="pagination-on" class="radio" />
              <label for="pagination-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_pagination" value="0" id="pagination-off" class="radio" checked />
              <label for="pagination-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_thumbnails; ?></td>
            <td><?php if ($slideshow_thumbnails) { ?>
              <input type="radio" name="slideshow_thumbnails" value="1" id="thumbnails-on" class="radio" checked />
              <label for="thumbnails-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_thumbnails" value="0" id="thumbnails-off" class="radio" />
              <label for="thumbnails-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } else { ?>
              <input type="radio" name="slideshow_thumbnails" value="1" id="thumbnails-on" class="radio" />
              <label for="thumbnails-on"><span><span></span></span><?php echo $text_yes; ?></label>
              <input type="radio" name="slideshow_thumbnails" value="0" id="thumbnails-off" class="radio" checked />
              <label for="thumbnails-off"><span><span></span></span><?php echo $text_no; ?></label>
            <?php } ?></td>
          </tr>
        </table>
        <table id="module" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_banner; ?></td>
              <td class="left"><span class="required">*</span> <?php echo $entry_dimension; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="left"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
        <?php $module_row = 0; ?>
        <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
              <td class="left"><select name="slideshow_module[<?php echo $module_row; ?>][banner_id]">
                <?php foreach ($banners as $banner) { ?>
                  <?php if ($banner['banner_id'] == $module['banner_id']) { ?>
                    <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                  <?php } else { ?>
                    <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                  <?php } ?>
                <?php } ?>
              </select></td>
              <td class="left">
                <input type="text" name="slideshow_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" size="3" /> x 
                <input type="text" name="slideshow_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" size="3" /> px
                <?php if (isset($error_dimension[$module_row])) { ?>
                  <span class="error"><?php echo $error_dimension[$module_row]; ?></span>
                <?php } ?>
              </td>
              <td class="left"><select name="slideshow_module[<?php echo $module_row; ?>][layout_id]">
                <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                    <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                    <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                <?php } ?>
              </select></td>
              <td class="left"><select name="slideshow_module[<?php echo $module_row; ?>][position]">
                <?php if ($module['position'] == 'content_header') { ?>
                  <option value="content_header" selected="selected"><?php echo $text_content_header; ?></option>
                <?php } else { ?>
                  <option value="content_header"><?php echo $text_content_header; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'content_footer') { ?>
                  <option value="content_footer" selected="selected"><?php echo $text_content_footer; ?></option>
                <?php } else { ?>
                  <option value="content_footer"><?php echo $text_content_footer; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                <?php } ?>
              </select></td>
              <td class="left"><select name="slideshow_module[<?php echo $module_row; ?>][status]">
                <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
              <td class="center">
                <input type="text" name="slideshow_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" />
              </td>
              <td class="center">
                <a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button-delete"><?php echo $button_remove; ?></a>
              </td>
            </tr>
          </tbody>
        <?php $module_row++; ?>
        <?php } ?>
          <tfoot>
            <tr>
              <td colspan="6" style="text-align:center; color:#444; font-size:10px;">Powered by <?php echo $slideshow_plugin; ?> <?php echo $slideshow_version; ?></td>
              <td class="center"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="slideshow_module[' + module_row + '][banner_id]">';
	<?php foreach ($banners as $banner) { ?>
	html += '      <option value="<?php echo $banner['banner_id']; ?>"><?php echo addslashes($banner['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left">';
	html += '      <input type="text" name="slideshow_module[' + module_row + '][width]" value="480" size="3" /> x ';
	html += '      <input type="text" name="slideshow_module[' + module_row + '][height]" value="180" size="3" /> px';
	html += '    </td>';
	html += '    <td class="left"><select name="slideshow_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="slideshow_module[' + module_row + '][position]">';
	html += '      <option value="content_header"><?php echo $text_content_header; ?></option>';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="content_footer"><?php echo $text_content_footer; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="slideshow_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="center"><input type="text" name="slideshow_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="center"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button-delete"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';

	$('#module tfoot').before(html);

	module_row++;
}
//--></script>

<?php echo $footer; ?>