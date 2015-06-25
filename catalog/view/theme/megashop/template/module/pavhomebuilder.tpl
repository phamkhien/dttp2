<?php 

$objlang = $this->registry->get('language');
?>

<?php if( !isset($rows) ){ ?>
<div id="pav-homebuilder<?php echo rand(); ?>" class="homebuilder clearfix">
<?php $rows = $layouts; $level = 1; } ?>	
 	<?php foreach ( $rows as $row) { 
 			$row->level = $level;
                       
                        
 	?>
	    <?php if ( $row->level==1 ){	 ?>
	        <div class="pav-container <?php if ( isset($row->parallax)&&$row->parallax ) { ?> pts-parallax <?php } ?>" <?php echo $row->attrs?>>
	        	<div class="pav-inner">
	    <?php } ?>  
	    <div class="row row-level-<?php echo $row->level; ?> <?php echo $row->sfxcls?>">
            <div class="row-inner <?php echo $row->cls; ?> clearfix" >
	        <?php foreach( $row->cols as $col ) { ?>
                    <?php if($col->widgets[0]->module == 'pavproducttabs.89'){ $id = rand(1,9)+rand();  ?>
                        <div class="col-inner"> 
                            <div class="pav-col col-lg-12 col-md-12 col-sm-12 col-xs-12  no-padding">
                           
                            <ul class="nav nav-pills box-heading" id="producttabs12546287958">
                                
                                <li class="active" style="padding:0px;"><a style="font-size:14px;" href="#tab-latest12546287958" data-toggle="tab">SẢN PHẨM MỚI NHẤT</a></li>
                               
                            </ul>
                             </div>
                        </div>
                    <?php } ?>
	            <div class="pav-col col-lg-<?php echo $col->lgcol; ?> col-md-<?php echo $col->mdcol;?> col-sm-<?php echo $col->smcol;?> col-xs-<?php echo $col->xscol;?> <?php echo $col->sfxcls?> <?php echo $col->cls;?> ">
                    <div class="col-inner">
                        <?php foreach ( $col->widgets as $widget ){
                       
                        ?>
                               
                            <?php if( isset($widget->content) ) { ?>
                                    <?php echo $widget->content; ?>
                            <?php } ?>
                        <?php } ?>
                        <?php if (isset($col->rows)&&$col->rows) { ?>
                            <?php
                                $rows = $col->rows;
                                $level = $level + 1;
                                require(  DIR_TEMPLATE.$template );
                            ?>
                        <?php } ?>
	                </div>
                </div>
	        <?php } ?>
	        </div>
        </div>
	    <?php if ($row->level==1 ) { ?>
	            </div>
	        </div>
	    <?php } ?>
<?php } ?> 


<?php if( $level == 1 ){ ?>
</div>
<?php } ?>	
