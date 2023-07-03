<?php

/**
 * CT Custom functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package CT_Custom
 */

if (!function_exists('ct_custom_setup')) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function ct_custom_setup()
	{
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on CT Custom, use a find and replace
		 * to change 'ct-custom' to the name of your theme in all the template files.
		 */
		load_theme_textdomain('ct-custom', get_template_directory() . '/languages');

		// Add default posts and comments RSS feed links to head.
		add_theme_support('automatic-feed-links');

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support('title-tag');

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support('post-thumbnails');

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(array(
			'menu-1' => esc_html__('Primary', 'ct-custom'),
		));

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support('html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		));

		// Set up the WordPress core custom background feature.
		add_theme_support('custom-background', apply_filters('ct_custom_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		)));

		// Add theme support for selective refresh for widgets.
		add_theme_support('customize-selective-refresh-widgets');

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support('custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		));
	}
endif;
add_action('after_setup_theme', 'ct_custom_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function ct_custom_content_width()
{
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters('ct_custom_content_width', 640);
}
add_action('after_setup_theme', 'ct_custom_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function ct_custom_widgets_init()
{
	register_sidebar(array(
		'name'          => esc_html__('Sidebar', 'ct-custom'),
		'id'            => 'sidebar-1',
		'description'   => esc_html__('Add widgets here.', 'ct-custom'),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	));
}
add_action('widgets_init', 'ct_custom_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function ct_custom_scripts()
{
	wp_enqueue_style('ct-custom-style', get_stylesheet_uri());

	wp_enqueue_script('ct-custom-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true);

	wp_enqueue_script('ct-custom-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true);

	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}
}
add_action('wp_enqueue_scripts', 'ct_custom_scripts');

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Load WooCommerce compatibility file.
 */
if (class_exists('WooCommerce')) {
	require get_template_directory() . '/inc/woocommerce.php';
}

// add Theme Settings into "Appearance" 
function theme_settings_menu()
{
	add_theme_page(
		'Theme Settings', // Page title
		'Theme Settings', // Menu title
		'manage_options', // Capability required
		'theme-settings', // Menu slug
		'theme_settings_render_page', // Callback function
		'dashicons-admin-generic', // Icon
		99 // Menu position
	);
}
add_action('admin_menu', 'theme_settings_menu');


function theme_settings_render_page()
{
?>
	<div class="wrap">
		<h1>Theme Settings</h1>
		<form method="post" action="options.php" enctype="multipart/form-data">
			<?php
			settings_fields('theme_settings');
			do_settings_sections('theme_settings');
			submit_button();
			?>
		</form>
	</div>
<?php
}

function theme_settings_init()
{
	add_settings_section(
		'theme_settings_section',
		'Theme Settings',
		'',
		'theme_settings'
	);

	add_settings_field(
		'theme_logo',
		'Logo',
		'theme_logo_render_field',
		'theme_settings',
		'theme_settings_section'
	);

	add_settings_field(
		'theme_phone_number',
		'Phone Number',
		'theme_phone_number_render_field',
		'theme_settings',
		'theme_settings_section'
	);

	add_settings_field(
		'theme_address',
		'Address Information',
		'theme_address_render_field',
		'theme_settings',
		'theme_settings_section'
	);

	add_settings_field(
		'theme_fax_number',
		'Fax Number',
		'theme_fax_number_render_field',
		'theme_settings',
		'theme_settings_section'
	);

	add_settings_field(
		'theme_social_links',
		'Social Media Links',
		'theme_social_links_render_field',
		'theme_settings',
		'theme_settings_section'
	);

	register_setting('theme_settings', 'theme_logo');
	register_setting('theme_settings', 'theme_phone_number');
	register_setting('theme_settings', 'theme_address');
	register_setting('theme_settings', 'theme_fax_number');
	register_setting('theme_settings', 'theme_social_links');
}
add_action('admin_init', 'theme_settings_init');

// Logo Upload field
function theme_logo_render_field()
{
	$logo_url = esc_attr(get_option('theme_logo'));
	echo '<input type="hidden" name="theme_logo" value="' . $logo_url . '" />';
	echo '<input type="file" name="theme_logo_upload" id="theme_logo_upload" accept="image/*" />';
	if ($logo_url) {
		echo '<img src="' . $logo_url . '" alt="Logo" style="max-width: 100px; height: auto;" />';
	}
}

function theme_phone_number_render_field()
{
	$phone_number = esc_attr(get_option('theme_phone_number'));
	echo '<input type="text" name="theme_phone_number" value="' . $phone_number . '" />';
}

function theme_address_render_field()
{
	$address = esc_textarea(get_option('theme_address'));
	echo '<textarea name="theme_address">' . $address . '</textarea>';
}

function theme_fax_number_render_field()
{
	$fax_number = esc_attr(get_option('theme_fax_number'));
	echo '<input type="text" name="theme_fax_number" value="' . $fax_number . '" />';
}

function theme_social_links_render_field()
{
	$social_links = esc_attr(get_option('theme_social_links'));
	echo '<input type="text" name="theme_social_links" value="' . $social_links . '" />';
}

// Upload logo
function theme_settings_save_logo($value)
{
	if (!empty($_FILES['theme_logo_upload']['tmp_name'])) {
		$file = $_FILES['theme_logo_upload'];

		require_once(ABSPATH . 'wp-admin/includes/file.php');
		require_once(ABSPATH . 'wp-admin/includes/image.php');

		$upload_overrides = array('test_form' => false);
		$uploaded_logo = wp_handle_upload($file, $upload_overrides);

		if ($uploaded_logo && isset($uploaded_logo['url'])) {
			$value = $uploaded_logo['url'];
		}
	}

	return $value;
}
add_filter('pre_update_option_theme_logo', 'theme_settings_save_logo');


// add custom css file for custom designs
wp_enqueue_style('theme-style', get_template_directory_uri() . '/customStyles.css');
