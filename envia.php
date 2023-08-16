<?php
// echo 'arquivo abriu...';
//die();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';

if(isset($_POST['send']) && $_POST['action'] === 'enviar_email'){
    $texto = htmlentities($_POST['texto']);
    
    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'luite8555@gmail.com';
    $mail->Password = 'qlcmrywvdjlotuov';
    $mail->Port = 465;
    $mail->SMTPSecure = 'ssl';
    $mail->isHTML(true);
    
    $mail->setFrom('luite8555@gmail.com', 'Luite Emanuel');
    $mail->addAddress('luiteemanuel@hotmail.com');
    $mail->Subject = 'Essa Foi sua Fala';
    $mail->Body = $texto;
    try {
        $mail->send();
        echo 'Envio feito!';
    } catch (Exception $e) {
        echo 'Erro ao enviar o email: ', $mail->ErrorInfo;
    }

    try {
        $pdo = new PDO('mysql:host=localhost;dbname=voice', 'root', '');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $texto = htmlentities($_POST['texto']);
        $dataRegistro = date('Y-m-d H:i:s'); 
    
        $sql = $pdo->prepare("INSERT INTO `registros` (`id`, `texto`, `dt_registro`) VALUES (null, :texto, :dataRegistro)");
    
        $sql->bindParam(':texto', $texto, PDO::PARAM_STR);
        $sql->bindParam(':dataRegistro', $dataRegistro, PDO::PARAM_STR);
    
        $sql->execute();
    
        echo "Inserção bem-sucedida!";
    } catch (PDOException $e) {
        echo "Erro: " . $e->getMessage();
    }
    
}
?>


