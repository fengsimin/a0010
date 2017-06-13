<?php
require_once EXT_PATH . 'mailer/PHPMailerAutoload.php'; class Mailer { protected $mailer; function __construct($config) { $this->mailer = new PHPMailer(); $this->mailer->CharSet = 'UTF-8'; $this->mailer->isSMTP(); $this->mailer->SMTPDebug = $config['debug']; $this->mailer->SMTPAuth = true; $this->mailer->SMTPSecure = $config['ssl']; $this->mailer->Host = $config['host']; $this->mailer->Port = $config['port']; $this->mailer->Username = $config['user']; $this->mailer->Password = $config['pass']; $this->mailer->setFrom($config['from_email'], $config['from_name']); $this->mailer->setLanguage('zh_cn'); } function setTitle($title) { $this->mailer->Subject = $title; } function setContent($str, $ishtml = true) { if ($ishtml) { $this->mailer->msgHTML($str); } else { $this->mailer->Body = $str; $this->mailer->AltBody = $str; } } function addAddress($emails) { if (!empty($emails)) { if (is_array($emails)) { foreach ($emails as $email) { $this->mailer->addAddress($email); } } else { $this->mailer->addAddress($emails); } } } function addCC($emails) { if (!empty($emails)) { if (is_array($emails)) { foreach ($emails as $email) { $this->mailer->addCC($email); } } else { $this->mailer->addCC($emails); } } } function addBCC($emails) { if (!empty($emails)) { if (is_array($emails)) { foreach ($emails as $email) { $this->mailer->addBCC($email); } } else { $this->mailer->addBCC($emails); } } } function addAttachment($files) { if (!empty($files)) { if (is_array($files)) { foreach ($files as $file) { if (is_file($file)) { $this->mailer->addAttachment($file); } } } else { $this->mailer->addAttachment($files); } } } function send() { if ($this->mailer->Send()) { return true; } else { logger($this->mailer->ErrorInfo); return false; } } }