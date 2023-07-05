<?php

/*
 - Theme Settings Page -
*/

// provide the necessary scripts and styles for the theme settings page.
function enqueue_theme_settings_scripts()
{
    wp_enqueue_media();
}
add_action('customize_controls_enqueue_scripts', 'enqueue_theme_settings_scripts');


// add the theme settings section and fields.
function register_theme_settings($wp_customize)
{
    // Add the theme settings section
    $wp_customize->add_section('theme_settings', array(
        'title'    => __('Theme Settings', 'your-theme'),
        'priority' => 200,
    ));

    // Logo Upload
    $wp_customize->add_setting('logo_image', array(
        'default'           => '',
        'sanitize_callback' => 'esc_url_raw',
    ));

    $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'logo_image', array(
        'label'    => __('Logo Image Upload', 'your-theme'),
        'section'  => 'theme_settings',
        'settings' => 'logo_image',
    )));

    // Phone Number
    $wp_customize->add_setting('phone_number', array(
        'default'           => '',
        'sanitize_callback' => 'sanitize_text_field',
    ));

    $wp_customize->add_control('phone_number', array(
        'label'    => __('Phone Number', 'your-theme'),
        'section'  => 'theme_settings',
        'settings' => 'phone_number',
        'type'     => 'text',
    ));

    // Address Information
    $wp_customize->add_setting('address_info', array(
        'default'           => '',
        'sanitize_callback' => 'sanitize_textarea_field',
    ));

    $wp_customize->add_control('address_info', array(
        'label'    => __('Address Information', 'your-theme'),
        'section'  => 'theme_settings',
        'settings' => 'address_info',
        'type'     => 'textarea',
    ));

    // Fax Number
    $wp_customize->add_setting('fax_number', array(
        'default'           => '',
        'sanitize_callback' => 'sanitize_text_field',
    ));

    $wp_customize->add_control('fax_number', array(
        'label'    => __('Fax Number', 'your-theme'),
        'section'  => 'theme_settings',
        'settings' => 'fax_number',
        'type'     => 'text',
    ));

    // Social Media Links
    $wp_customize->add_setting('social_media_links', array(
        'default'           => '',
        'sanitize_callback' => 'sanitize_textarea_field',
    ));

    $wp_customize->add_control('social_media_links', array(
        'label'    => __('Social Media Links', 'your-theme'),
        'section'  => 'theme_settings',
        'settings' => 'social_media_links',
        'type'     => 'textarea',
    ));
}
add_action('customize_register', 'register_theme_settings');


// Output the theme settings in the global footer.
function output_theme_settings()
{
    $logo_image        = get_theme_mod('logo_image', '');
    $phone_number      = get_theme_mod('phone_number', '');
    $address_info      = get_theme_mod('address_info', '');
    $fax_number        = get_theme_mod('fax_number', '');
    $social_media_links = get_theme_mod('social_media_links', '');
}

add_action('wp_footer', 'output_theme_settings');


// Save the theme settings when the Customizer is saved.
function save_theme_settings()
{
    $logo_image        = get_theme_mod('logo_image', '');
    $phone_number      = get_theme_mod('phone_number', '');
    $address_info      = get_theme_mod('address_info', '');
    $fax_number        = get_theme_mod('fax_number', '');
    $social_media_links = get_theme_mod('social_media_links', '');

    // Update the theme settings in the database
    set_theme_mod('logo_image', $logo_image);
    set_theme_mod('phone_number', $phone_number);
    set_theme_mod('address_info', $address_info);
    set_theme_mod('fax_number', $fax_number);
    set_theme_mod('social_media_links', $social_media_links);
}
add_action('customize_save_after', 'save_theme_settings');
