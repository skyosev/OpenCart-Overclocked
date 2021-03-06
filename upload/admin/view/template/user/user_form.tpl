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
      <h1><img src="view/image/user.png" alt="" /> <?php echo $user_title; ?></h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button-save"><?php echo $button_save; ?></a>
        <a onclick="apply();" class="button-save"><?php echo $button_apply; ?></a>
        <a href="<?php echo $cancel; ?>" class="button-cancel"><?php echo $button_cancel; ?></a>
      </div>
    </div>
    <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
        <tr>
          <td><span class="required">*</span> <?php echo $entry_username; ?></td>
          <td><?php if ($error_username) { ?>
            <input type="text" name="username" value="<?php echo $username; ?>" class="input-error" />
            <span class="error"><?php echo $error_username; ?></span>
          <?php } else { ?>
            <input type="text" name="username" value="<?php echo $username; ?>" />
          <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
          <td><?php if ($error_firstname) { ?>
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-error" />
            <span class="error"><?php echo $error_firstname; ?></span>
          <?php } else { ?>
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
          <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
          <td><?php if ($error_lastname) { ?>
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-error" />
            <span class="error"><?php echo $error_lastname; ?></span>
          <?php } else { ?>
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
          <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_email; ?></td>
          <td><?php if ($error_email) { ?>
            <input type="text" name="email" value="<?php echo $email; ?>" size="40" class="input-error" />
            <span class="error"><?php echo $error_email; ?></span>
          <?php } else { ?>
            <input type="text" name="email" value="<?php echo $email; ?>" size="40" />
          <?php } ?></td>
        </tr>
        <tr>
          <td><?php echo $entry_user_group; ?></td>
          <td><select name="user_group_id">
          <?php foreach ($user_groups as $user_group) { ?>
            <?php if ($user_group['user_group_id'] == $user_group_id) { ?>
              <option value="<?php echo $user_group['user_group_id']; ?>" selected="selected"><?php echo $user_group['name']; ?></option>
            <?php } else { ?>
              <option value="<?php echo $user_group['user_group_id']; ?>"><?php echo $user_group['name']; ?></option>
            <?php } ?>
          <?php } ?>
          </select></td>
        </tr>
        <tr>
          <td><span class="<?php echo $is_required; ?>">*</span> <?php echo $entry_password; ?></td>
          <td><?php if ($error_password) { ?>
            <input type="password" name="password" value="<?php echo $password; ?>" class="input-error" />
            <span class="error"><?php echo $error_password; ?></span>
          <?php } else { ?>
            <input type="password" name="password" value="<?php echo $password; ?>" />
          <?php  } ?></td>
        </tr>
        <tr>
          <td><span class="<?php echo $is_required; ?>">*</span> <?php echo $entry_confirm; ?></td>
          <td><?php if ($error_confirm) { ?>
            <input type="password" name="confirm" value="<?php echo $confirm; ?>" class="input-error" />
            <span class="error"><?php echo $error_confirm; ?></span>
          <?php } else { ?>
            <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
          <?php  } ?></td>
        </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="status">
          <?php if ($status) { ?>
            <option value="0"><?php echo $text_disabled; ?></option>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
          <?php } else { ?>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <option value="1"><?php echo $text_enabled; ?></option>
          <?php } ?>
          </select></td>
        </tr>
      </table>
    </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 