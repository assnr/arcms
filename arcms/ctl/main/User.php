<?php
/**
 * 前端基于layuicms2.0 ，后端基于arphp 5.1.14
 *
 * @author assnr assnr@coopcoder.com
 *
 * 本项目仅供学习交流使用，如果用于商业请联系授权
 */
namespace arcms\ctl\main;
use \ar\core\Controller as Controller;

/**
 * 控制器
 */
class User extends Controller
{
    public function userList()
    {
        $this->display('/user/userList');
    }

    public function userAdd()
    {
        $this->display('/user/userAdd');
    }

    public function userGrade()
    {
        $this->display('/user/userGrade');
    }

    public function userInfo()
    {
        $this->display('/user/userInfo');
    }

    public function changePwd()
    {
        $this->display('/user/changePwd');
    }
}
