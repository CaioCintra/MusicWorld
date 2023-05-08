<?php
function abrirBanco() {
    $conexao = new mysqli("localhost", "root", "", "musicworld");
    return $conexao;
}