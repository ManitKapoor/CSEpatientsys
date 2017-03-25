<?php
ob_start();
@session_start();
ini_set("display_errors","Off");
error_reporting(E_ALL & ~E_NOTICE);

$dbhost = getenv('IP');;
$dbuser =  getenv('C9_USER');;
$dbpass = "";
$dbname = "patient";
$vpath = "http://".$_SERVER['HTTP_HOST']."/patient/";
$apath = $_SERVER['DOCUMENT_ROOT']."/patient/";
$fckapath = $_SERVER['DOCUMENT_ROOT']."/patient/";


// Database Connection
$dbh=mysql_connect($dbhost, $dbuser, $dbpass) or die ('I cannot connect to the database because: ' . mysql_error());
$db=mysql_select_db($dbname, $dbh) or die ('I cannot select the database because: ' . mysql_error());

$prev="p_"; // table perfix

?>