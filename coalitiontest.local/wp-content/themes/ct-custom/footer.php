<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package CT_Custom
 */

?>

</div><!-- #content -->

<footer id="colophon" class="site-footer">

	<?php
	// Output logo 
	$logo_image = get_theme_mod('logo_image');
	if ($logo_image) {
		echo '<img src="' . esc_url($logo_image) . '" alt="Logo">';
	}

	// Output phone
	$phone_number = get_theme_mod('phone_number');
	if ($phone_number) {
		echo '<p>Phone Number: ' . esc_html($phone_number) . '</p>';
	}

	// Output address
	$address_info = get_theme_mod('address_info');
	if ($address_info) {
		echo '<p>Address: ' . esc_html($address_info) . '</p>';
	}

	// Output fax 
	$fax_number = get_theme_mod('fax_number');
	if ($fax_number) {
		echo '<p>Fax Number: ' . esc_html($fax_number) . '</p>';
	}

	// Output social media
	$social_media_links = get_theme_mod('social_media_links');
	if ($social_media_links) {
		echo '<p>Social Media Links: ' . esc_html($social_media_links) . '</p>';
	}
	?>


	<!-- coalitiontechnologies.com default footer :-)   -->
	<div class="site-info">
		<a href="<?php echo esc_url(__('https://wordpress.org/', 'ct-custom')); ?>">
			<?php
			/* translators: %s: CMS name, i.e. WordPress. */
			printf(esc_html__('Proudly powered by %s', 'ct-custom'), 'WordPress');
			?>
		</a>
		<span class="sep"> | </span>
		<?php
		/* translators: 1: Theme name, 2: Theme author. */
		printf(esc_html__('Theme: %1$s by %2$s.', 'ct-custom'), 'ct-custom', '<a href="https://coalitiontechnologies.com/">Coalition Technologies</a>');
		?>
	</div><!-- .site-info -->
</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>