<?php
/*
 * Template Name: Homepage
 */

while (have_posts()) {
    the_post();
    the_content();
}
?>

<!-- WORKING WORKING -->

<div class="theme-settings">
    <!-- Display the Logo -->
    <?php
    $logo = esc_attr(get_option('theme_logo'));
    if ($logo) {
        echo '<img src="' . $logo . '" alt="Logo" style="max-width: 50px; height: auto;" />';
    }
    ?>


    <!-- Display "Reach Us" -->
    <?php
    echo '<h2>Reach Us</h2>';

    ?>

    <!-- Display the Phone Number -->
    <?php
    $phone = esc_attr(get_option('theme_phone_number'));
    if ($phone) {
        echo '<p>Phone: ' . $phone . '</p>';
    }
    ?>

    <!-- Display the Address -->
    <?php
    $address = esc_textarea(get_option('theme_address'));
    if ($address) {
        echo '<p>Address: ' . $address . '</p>';
    }
    ?>

    <!-- Display the Fax Number -->
    <?php
    $fax = esc_attr(get_option('theme_fax_number'));
    if ($fax) {
        echo '<p>Fax: ' . $fax . '</p>';
    }
    ?>

    <!-- Display the Social Media Links -->
    <?php
    $socialLinks = esc_attr(get_option('theme_social_links'));
    if ($socialLinks) {
        $links = explode(',', $socialLinks);
        echo '<ul class="social-media-links" style="margin-left: 0px; padding-left: 0px">';
        foreach ($links as $link) {
            $link = trim($link);
            if ($link) {
                echo '<li style="list-style-type: none"><a  href="' . esc_url($link) . '">' . esc_html($link) . '</a></li>';
            }
        }
        echo '</ul>';
    }
    ?>
</div>

<?php
get_footer();
