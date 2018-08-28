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



if ($exception instanceof \yii\base\UserException) 
{
    $message = $exception->getMessage();
} else {
    $message = 'Pequeñas fallas tecnicas.';
}

$this->title = $handler->htmlEncode($name);
?>
<div class="alert alert-danger">
    <h3><?= nl2br($handler->htmlEncode($message)) ?></h3>
    <p>
        No se pudo completar la transaccion.
    </p>
    <p>
        En la casa si valia :/ .
    </p>
</div>