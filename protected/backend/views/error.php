<?php
/* @var $exception \yii\web\HttpException|\Exception */
/* @var $handler \yii\web\ErrorHandler */
if ($exception instanceof \yii\web\HttpException) {
    $code = $exception->statusCode;
} else {
    $code = $exception->getCode();
}
$name = $handler->getExceptionName($exception);
if ($name === null) {
    $name = 'Error';
}
if ($code) {
    $name .= " (#$code)";
}



if ($exception instanceof \yii\base\UserException) {
    $message = $exception->getMessage();
} else {
    $message = 'ERROR INTERNO DEL SERVIDOR.';
}

$this->title = $handler->htmlEncode($name);
?>
<br/><br/>
<div class="alert alert-danger">
    <h3><?= nl2br($handler->htmlEncode($message)) ?></h3>
    <p>
        No se pudo completar la accion.
    </p>
    <p>
        EN LA CASA SI VALIA    :'v.
    </p>
    <p>
        .
    </p>
    <p>
        .
    </p>
     <p>
        psdt: Todo error es culpa del Lopez XD
    </p>
</div>