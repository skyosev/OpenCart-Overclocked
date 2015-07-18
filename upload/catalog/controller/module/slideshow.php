<?php
class ControllerModuleSlideshow extends Controller {
	private $_name = 'slideshow';

	protected function index($setting) {
		static $module = 0;

		$this->language->load('module/' . $this->_name);

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->document->addStyle('catalog/view/javascript/jquery/camera/css/camera.css');

		$this->document->addScript('catalog/view/javascript/jquery/camera/jquery.easing.1.3.js');
		$this->document->addScript('catalog/view/javascript/jquery/camera/camera.min.js');

		// Module
		$this->data['theme'] = $this->config->get($this->_name . '_theme');
		$this->data['title'] = $this->config->get($this->_name . '_title' . $this->config->get('config_language_id'));

		if (!$this->data['title']) {
			$this->data['title'] = $this->data['heading_title'];
		}

		$this->data['camera_theme'] = $this->config->get($this->_name . '_skin');

		$option_playpause = $this->config->get($this->_name . '_playpause');
		$option_pagination = $this->config->get($this->_name . '_pagination');
		$option_thumbnails = $this->config->get($this->_name . '_thumbnails');

		$this->data['camera_playpause'] = $option_playpause ? 'true' : 'false';
		$this->data['camera_pagination'] = $option_pagination ? 'true' : 'false';

		if ($option_pagination && $option_thumbnails) {
			$this->data['camera_thumbnails'] = 'true';
		} else {
			$this->data['camera_thumbnails'] = 'false';
		}

		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];

		// Calculate image ratio
		$image_ratio = ($setting['height'] * 100) / $setting['width'];

		if ($image_ratio > 0) {
			$this->data['ratio'] = round($image_ratio, 0);
		} else {
			$this->data['ratio'] = '33';
		}

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->data['banners'] = array();

		if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);

			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$this->data['banners'][] = array(
						'title'		=> $result['title'],
						'link'		=> $result['link'],
						'image'	=> $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					);
				}
			}
		}

		$this->data['module'] = $module++;

		// Template
		$this->data['template'] = $this->config->get('config_template');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/slideshow.tpl';
		} else {
			$this->template = 'default/template/module/slideshow.tpl';
		}

		$this->render();
	}
}
?>