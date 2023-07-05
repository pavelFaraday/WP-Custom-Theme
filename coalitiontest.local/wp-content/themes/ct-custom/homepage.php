<?php
/*
 * Template Name: Homepage
 */

get_header();

while (have_posts()) {
    the_post();
    the_content();
}
?>

<!-- Content Goeas here -->


<?php
get_footer();
