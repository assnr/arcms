<?php
/**
 * Powerd by ArPHP.
 *
 * User service.
 *
 */
namespace arcms\ctl\main\service;
use arcms\lib\model\News as News;

/**
 * 数据服务组件
 */
class Data
{
    public function init()
    {
        echo 'nnn';
    }

    // 添加新闻
    public function addNews($newsData)
    {
        if ($newsId = $newsData['newsId']) {
            // 更新
            return News::model()->getDb()
                ->where(['newsId' => $newsId])
                ->update($newsData, 1);
        } else {
            // 写入
            $newsData['newsAuthor'] = '阿。sir';
            return News::model()->getDb()->insert($newsData, 1);
        }
    }

    // 新闻列表
    public function newslist($request)
    {
        // 分页数据
        // $cpage = $request['page'];
        // $cpage = !empty($request['page']) ? $request['page'] : 1;
        $limit = !empty($request['limit']) ? $request['limit'] : 10;

        $condition = [];
        // 搜索
        $key = !empty($request['key']) ? $request['key'] : '';
        if ($key) {
            $condition['newsName like '] = '%'. $key . '%';
        }
        $totalCount = News::model()->getDb()->where($condition)->count();
        $page = new \arcms\lib\ext\Page($totalCount, $limit);

        $news = News::model()->getDb()
            ->where($condition)
            ->limit($page->limit())
            ->order('newsId desc')
            ->queryAll();
        foreach ($news as &$newsDetail) {
            $newsDetail['content'] = stripslashes(stripslashes($newsDetail['content']));
        }

        return [
            'news' => $news,
            'count' => $totalCount
        ];
    }

    // 删除文章
    public function delNews($id)
    {
        // if (is_array($id)) {
        // }
        // $id 可以是数组
        return News::model()->getDb()->where(['newsId' => $id])->delete();
    }

    // 置顶
    public function setNewsTop($id, $value)
    {
        $con = [
            'newsId' => $id
        ];
        return News::model()->getDb()
            ->where($con)
            ->update(['newsTop' => (int)$value]);
    }
}
