<?php
namespace arcms\lib\model;
class User extends \ar\core\Model
{
    public $tableName = 'user';

    // 加密方式
    static public function pwd($str = 'hello,arphp')
    {
        return md5(substr(md5(md5($str) . 'arcms'), 6, 6));
    }

}
