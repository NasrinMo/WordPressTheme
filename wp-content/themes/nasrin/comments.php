<?php
//Get only the approved comments


$comments = get_comments( array(
    'post_id' => $post->ID,
    'orderby' => 'comment_date_gmt',
    'status' => 'approve',
  ) );
 

// Comment Loop
if ( $comments ) {
 foreach ( $comments as $comment ) {
 echo '<p>' . $comment->comment_content . '</p>';
 }
}

$commenter = wp_get_current_commenter();
$req = get_option( 'require_name_email' );
$aria_req = ( $req ? " aria-required='true'" : '' );
$fields =  array(
    'author' => '<p class="comment-form-author">' . '<label for="author">' . __( 'Name' ) . '</label> ' . ( $req ? '<span class="required">*</span>' : '' ) .
        '<input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '" size="30"' . $aria_req . ' /></p>',
    'email'  => '<p class="comment-form-email"><label for="email">' . __( 'Email' ) . '</label> ' . ( $req ? '<span class="required">*</span>' : '' ) .
        '<input id="email" name="email" type="text" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30"' . $aria_req . ' /></p>',
);

$comments_args = array(
    'fields' =>  $fields
);

comment_form($comments_args); 