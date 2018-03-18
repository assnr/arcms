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
 * 默认入口控制器
 */
class Index extends Controller
{
    // 后台首页
    public function index()
    {
        if (!$this->getUserService()->isLogin()) {
            $this->redirect('login/login');
        }
        $this->display('/index');
    }

    // 主页
    public function main()
    {
        $this->display('/main');
    }

    // 404
    public function p404()
    {
        $this->display('/404');
    }

}
