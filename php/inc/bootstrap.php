<?php
define("PROJECT_ROOT_PATH", __DIR__ . "/../");
 
// include main config file
require_once PROJECT_ROOT_PATH . "/inc/config.php";
 
// include the base controller file
require_once PROJECT_ROOT_PATH . "/Controller/API/BaseController.php";
 
// include the user model file
require_once PROJECT_ROOT_PATH . "/Model/UserModel.php";
