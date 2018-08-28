<?php
use usni\library\utils\StringUtil;
use usni\library\utils\Html;
use usni\UsniAdaptor;

/* @var $this \frontend\web\View */
    
$logoContent    = null;
$logo           = null;
$storeLogo      = UsniAdaptor::app()->storeManager->getImageSetting('store_logo');
$altText        = $this->getConfigValue('application', 'logoAltText');
if(!empty($storeLogo))
{
    $logo = $storeLogo;
}
else
{
    $logo = $this->getConfigValue('application', 'logo');
}
if(empty($altText))
{
    $altText = UsniAdaptor::app()->name;
}
if($logo != null && $logo != 'img_not_available.png')
{
    $storeImageWidth    = UsniAdaptor::app()->storeManager->getImageSetting('store_image_width', 540);
    $storeImageHeight   = UsniAdaptor::app()->storeManager->getImageSetting('store_image_height', 150);
    $logoContent        = StringUtil::replaceBackSlashByForwardSlash(Html::img(UsniAdaptor::app()->assetManager->getImageUploadUrl() . DS . $logo, 
                                                                            [
                                                                                'alt' => $altText, 
                                                                                'title' => UsniAdaptor::app()->name, 
                                                                                'width' => 540, 
                                                                                'height' => 150, 
                                                                             //   'class' => 'img-responsive'
                                                                            ]));
    $logoContent        = Html::a($logoContent, UsniAdaptor::createUrl('site/default/index'));
}
else
{
    $logoContent = Html::tag('h1', Html::a(UsniAdaptor::app()->name, UsniAdaptor::createUrl('site/default/index')));
}

echo $logoContent;

