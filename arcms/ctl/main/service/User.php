<?php
/**
 * Powerd by ArPHP.
 *
 * User service.
 *
 */
namespace arcms\ctl\main\service;
use arcms\lib\model\User as UserModel;

/**
 * 用户服务组件
 */
class User
{
    // seesion 组件
    protected $_seesion = null;

    function __construct() {
        $this->_session = \ar\core\comp('lists.session');
    }

    // 登陆组件
    public function login($username, $pass, $code)
    {
        $errorMsg = '';
        // var_dump($code, $this->_session->get('code'));
        if ($code && $code === $this->_session->get('code')) {
            $userConditon = [
                'username' => $username,
                'password' => UserModel::pwd($pass),
            ];
            $userCount = UserModel::model()->getDb()->where($userConditon)->count();
            if ($userCount > 0) {
                $this->_session->set('login', true);
                $this->_session->set('code', null);
                return true;
            } else {
                $errorMsg = '帐号或者密码错误';
            }
        } else {
            $errorMsg = '验证码错误';
        }
        return $errorMsg;
    }

    // 是否登陆
    public function isLogin()
    {
        return !!$this->_session->get('login');
    }

    // 生成登陆验证码
    public function generateCode()
    {
        $_vc = new \arcms\lib\ext\ValidateCode();
        $_vc->doimg();
        $code = $_vc->getCode();// 验证码保存到SESSION中
        // $code = \ar\core\comp('tools.util')->randpw(4, 'NUMBER');
        $this->_session->set('code', $code);
    }

    // 退出
    public function loginout()
    {
        $this->_session->set('login', false);
    }

}
