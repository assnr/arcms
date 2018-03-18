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
class SystemSetting extends Controller
{
    public function basicParameter()
    {
        $this->display('/systemSetting/basicParameter');
    }

    public function logs()
    {
        $this->display('/systemSetting/logs');
    }

    public function linkList()
    {
        $this->display('/systemSetting/linkList');
    }

    public function linksAdd()
    {
        $this->display('/systemSetting/linksAdd');
    }

    public function icons()
    {
        $this->display('/systemSetting/icons');
    }

}
