
<article class="blog-item clearfix blog-border">
    <div class="pavcol21 info1">
        <div class="col-xs-12 bg-title">    
            <?php if( $config->get('cat_show_title') ) { ?>
            <header class="blog-header clearfix">
                <h4 class="blog-title"><a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a></h4>
            </header>
            <?php } ?></div>
        <div class="col-xs-12 content-blog">
            <div class="col-xs-12 col-sm-4 img-post"> <?php if( $blog['thumb'] && $config->get('cat_show_image') )  { ?>
                <figure class="blog-body image pavcol2">
                    <img src="<?php echo HTTP_SERVER.'image/'.$blog['image'];?>" title="<?php echo $blog['title'];?>" alt="<?php echo $blog['title'];?>" class="img-responsive bd-radius" />
                </figure>
                <?php } ?></div>

            <div class="col-xs-12 col-sm-8 text-blog">
                <footer>
                    <section class="blog-meta">
                        <?php if( $config->get('cat_show_author') ) { ?>
                        <span class="author">
                            <span><i class="fa fa-pencil"></i><?php echo $objlang->get("text_write_by");?></span> 
                            <span class="t-color"><?php echo $blog['author'];?></span>
                        </span>
                        <?php } ?>

                        <?php if( $config->get('cat_show_category') ) { ?>
                        <span class="publishin">
                            <span><i class="fa fa-thumb-tack"></i><?php echo $objlang->get("text_published_in");?></span>
                            <a href="<?php echo $blog['category_link'];?>" class="t-color" title="<?php echo $blog['category_title'];?>"><?php echo $blog['category_title'];?></a>
                        </span>
                        <?php } ?>

                        <?php if( $config->get('cat_show_hits') ) { ?>
                        <span class="hits">
                            <span><i class="fa fa-insert-template"></i><?php echo $objlang->get("text_hits");?></span>
                            <span class="t-color"><?php echo $blog['hits'];?></span>
                        </span>
                        <?php } ?>


                        <?php if( $config->get('cat_show_comment_counter') ) { ?>
                        <span class="comment_count">
                            <span><i class="fa fa-comment"></i><?php echo $objlang->get("text_comment_count");?></span>
                            <span class="t-color"><?php echo $blog['comment_count'];?></span>
                        </span>
                        <?php } ?>
                    </section>
                    <?php if( $config->get('cat_show_description') ) {?>
                        <section class="description">
                        <?php 
                            if(strlen($blog['description'])>700){
                             echo SUBSTR($blog['description'],0,700). " ..." ;
                            } else {
                              echo $blog['description'];
                            }
                            ?>
                    </section>
                    <?php } ?>
                </footer>
            </div>

        </div>
        <div class="col-xs-12">
            <?php if( $config->get('cat_show_readmore') ) { ?>
            <section class="btn-more-link pull-right">
                <a href="<?php echo $blog['link'];?>" class="readmore btn btn-outline"><?php echo $objlang->get('text_readmore');?></a>
            </section>
            <?php } ?>
        </div>



    </div>
</article>