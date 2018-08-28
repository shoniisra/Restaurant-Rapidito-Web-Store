<?php
use usni\UsniAdaptor;
use usni\library\utils\Html;
use common\modules\stores\models\Store;
use newsletter\models\NewsletterCustomers;

/* @var $this \frontend\web\View */
?>
<!-- begin:footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h5><?php echo UsniAdaptor::t('cms', 'Informacion'); ?></h5>
                <ul class="list-unstyled">
                    <li>
                        <?php echo Html::a(UsniAdaptor::t('cms', 'Sobre nosotros'), UsniAdaptor::createUrl('cms/site/page', ['alias' => UsniAdaptor::t('cms', 'about-us')])); ?>
                    </li>
                    <li>
                        <?php echo Html::a(UsniAdaptor::t('cms', 'Información de Compra'), UsniAdaptor::createUrl('cms/site/page', ['alias' => UsniAdaptor::t('cms', 'delivery-info')])); ?>
                    </li>
                    <li>
                        <?php echo Html::a(UsniAdaptor::t('cms', 'Politica de Privacidad'), UsniAdaptor::createUrl('cms/site/page', ['alias' => UsniAdaptor::t('cms', 'privacy-policy')])); ?>
                    </li>
                    <li>
                        <?php echo Html::a(UsniAdaptor::t('cms', 'Terminos y Condiciones'), UsniAdaptor::createUrl('cms/site/page', ['alias' => UsniAdaptor::t('cms', 'terms')])); ?>
                    </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5> <?php echo UsniAdaptor::t('customer', 'Servicio al Cliente'); ?> </h5>
                <ul class="list-unstyled">
                    <li>
                        <?php echo Html::a(UsniAdaptor::t('cms', 'Contáctanos'), UsniAdaptor::createUrl('site/default/contact-us')); ?>
                    </li>
                   <!--  <li>
                        <?php
                        $label = UsniAdaptor::t('newsletter', 'Join the newsletter');
                        echo Html::a($label, '#',
                                        ['class'       => 'send-newsletter',
                                         'type'        => 'button',
                                         'data-toggle' => 'modal',
                                         'data-target' => '#sendNewsletterModal']);
                        echo $this->render('@newsletter/views/front/sendnewsletter', ['model' => new NewsletterCustomers(['scenario' => 'send'])]);
                        ?>
                    </li> -->
                </ul>
            </div>
            <div class="col-sm-3">
                <h5> <?php echo UsniAdaptor::t('users', 'Mi cuenta'); ?> </h5>
                <ul class="list-unstyled">
                    <li> <?php echo Html::a(UsniAdaptor::t('users', 'Mi perfil'), UsniAdaptor::createUrl('customer/site/my-account')); ?> </li>
                    <li> <?php echo Html::a(UsniAdaptor::t('order', 'Historial de Pedidos'), UsniAdaptor::createUrl('customer/site/order-history')); ?> </li>
                    <li> <?php echo Html::a(UsniAdaptor::t('cart', 'Carrito de compras'), UsniAdaptor::createUrl('cart/default/view')); ?> </li>
                    <li> <?php echo Html::a(UsniAdaptor::t('cart', 'Checkout'), UsniAdaptor::createUrl('cart/checkout/index')); ?> </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5> <?php echo UsniAdaptor::t('application', 'Aviso'); ?> </h5>
                <p>
                    <a href="#"><i> Inge pondrá buena nota :v</i></a> &nbsp;
                   
                </p>
            </div>
        </div>
        <hr>
        <?php
            $currentStore   = UsniAdaptor::app()->storeManager->selectedStore;
            if($currentStore['id'] == Store::DEFAULT_STORE_ID)
            {
                $storeName  = UsniAdaptor::t('stores', 'Default Store');
            }
            else
            {
                $storeName = $currentStore['name'];
            }
            echo '<p>Copyright &copy; ' . date("Y") . " " . '" RAPIDITO FAST FOOD. Todos los derechos reservados.  Creado por A.D.J. </p>';
        ?>
    </div>
</footer>
<!-- end:footer -->