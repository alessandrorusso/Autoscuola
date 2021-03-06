<?php
/**
 * Articles Newsflash Advanced
 *
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 
 * 
*/
defined('_JEXEC') or die;
	$item_heading = $params->get('item_heading', 'h4');
	$item_images = json_decode($item->images);
?>

<div class="indent">

	<div class="drop">
		
		<span class="dropcap">
			<?php if ($i<9){?>
				<?php echo '0'.($i+1); ?>
			<?php }else{?>
				<?php echo ($i+1); ?>
			<?php }?>
		</span>

		<?php if ($item_images->image_intro_caption): echo '<i class="caption">'. htmlspecialchars($item_images->image_intro_caption).'</i>';  endif; ?>

	</div>

	<div class="item_content">

		<!-- Intro Image -->
		<?php if ($params->get('intro_image')): ?>
			<?php  if (isset($item_images->image_intro) and !empty($item_images->image_intro)) : ?>
			<?php $imgfloat = (empty($item_images->float_intro)) ? $params->get('float_intro') : $item_images->float_intro; ?>
				<div class="item_img img-intro img-intro__<?php echo htmlspecialchars($params->get('intro_image_align')); ?>"> 
					<a href="<?php echo $item->link;?>"><img src="<?php echo htmlspecialchars($item_images->image_intro); ?>" alt="<?php echo htmlspecialchars($item_images->image_intro_alt); ?>"/></a>
				</div>
			<?php endif; ?>
		<?php endif; ?>

		<?php if ($params->get('published')) : ?>
			<div class="item_published">
				<?php echo JHtml::_('date', $item->publish_up, JText::_('DATE_FORMAT_LC4')); ?>
			</div>
		<?php endif; ?>

		<!-- Item title -->
		<?php if ($params->get('item_title')) : ?>
			<<?php echo $item_heading; ?> class="item_title item_title__<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php if ($params->get('link_titles') && $item->link != '') : ?>
				<a href="<?php echo $item->link;?>">
					<?php echo $item->title;?></a>
			<?php else : ?>
				<?php echo wrap_with_span($item->title); ?>
			<?php endif; ?>
			</<?php echo $item_heading; ?>>
		<?php endif; ?>

		<?php if (!$params->get('intro_only')) :
			echo $item->afterDisplayTitle;
		endif; ?>

		<?php if ($params->get('show_tags', 1) && !empty($item->tags)) : ?>
			<?php $item->tagLayout = new JLayoutFile('joomla.content.tags'); ?>

			<?php echo $item->tagLayout->render($item->tags->itemTags); ?>
		<?php endif; ?>

		<?php if ($params->get('createdby')) : ?>
			<div class="item_createdby">
				<?php $author = $item->author; ?>
				<?php $author = ($item->created_by_alias ? $item->created_by_alias : $author); ?>
					<?php echo JText::sprintf('MOD_ARTICLES_NEWS_ADV_BY', $author); ?>
			</div>
		<?php endif; ?>

		<?php echo $item->beforeDisplayContent; ?>

		<!-- Introtext -->
		<div class="item_introtext"><?php echo $item->introtext; ?></div>

		<!-- Read More link -->
		<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) :
			$readMoreText = JText::_('MOD_ARTICLES_NEWS_READMORE');
				if ($item->alternative_readmore){
					$readMoreText = $item->alternative_readmore;
				}
			echo '<a class="btn btn-info readmore" href="'.$item->link.'"><span>'. $readMoreText .'</span></a>';
		endif; ?>
	</div>

</div>
	
<div class="clearfix"></div>