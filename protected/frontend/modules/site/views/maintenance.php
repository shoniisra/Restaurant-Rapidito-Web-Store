<?php
/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/lgpl.html
 */
use usni\UsniAdaptor;
?>
<?php
if(empty(strip_tags($customMessage)))
{
?>
<h1><?php echo UsniAdaptor::t('service', 'Sitio temporalmente no disponible.'); ?></h1>
<p><?php echo UsniAdaptor::t('service', 'Sitio en mantenimiento, vuelva pronto.');?></p>
<p><?php echo UsniAdaptor::t('service', 'Disculpe los inconvenientes.')?></p>
<?php
}
else
{
?>
<?php echo $customMessage;?>
<?php 
}
