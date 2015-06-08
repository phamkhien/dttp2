<div class="box  pavblogs-comments-box">
    <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
    <div class="box-content">
        <div class="clearfix">
            <?php if( !empty($comments) ) { ?>
            <div class="pavblog-comments comment-meta">
                <?php $default=''; foreach( $comments as $comment ) { ?>
                <div class="pav-comment media">
                    <a class="pull-left" href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
                    </a>
                    <div class="media-body">
                        <p class="comment"><?php echo utf8_substr( $comment['comment'],0, 50 ); ?>...</p>
                        <span class="comment-postedby"><b><?php echo $objlang->get('text_postedby');?></b><span> <?php echo $comment['user'];?></span></span>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
