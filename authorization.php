<?php
$conn = new mysqli("localhost", "root", "", "Vishnev_A_IS1_45");

if ($conn->connect_error) {
    die("Ошибка подключения: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['user_email'];
    $password = $_POST['user_password'];

    // Исправленный SQL запрос с использованием плейсхолдеров
    $sql = "SELECT * FROM Users WHERE user_email=? AND user_password=?";

    $stmt = $conn->prepare($sql);
    // Первый аргумент в bind_param указывает типы параметров: 's' для строки
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo '<script> window.location.href = "main.html"; alert("Авторизация успешна!");</script>';
    } else {
        echo '<script> window.location.href = "index.html";alert("Неверное имя пользователя или пароль");</script>';
    }

    $stmt->close();
}

$conn->close();
?>