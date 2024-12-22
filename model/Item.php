<?php
class Item extends Db{
    public function getAllItems()
    {
        $sql = self::$connection->prepare("SELECT `sanpham_name`,`sanpham_gia`,`sanpham_giakhuyenmai`,`sanpham_active`,`sanpham_soluong`,`sanpham_image`
        FROM `tbl_sanpham`
        ORDER BY `sanpham_id` DESC");
        $sql->execute();
        $item = array();
        $item = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $item;
    }
    public function searchCount($keyword){
        $sql = self::$connection->prepare("SELECT * FROM `tbl_sanpham`
        WHERE `sanpham_name`
        LIKE ?");
        $keyword = "%$keyword%";
        $sql -> bind_param("s",$keyword);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function search($keyword,$page,$count){
        $start = ($page - 1) * $count;
        $sql = self::$connection->prepare("SELECT * FROM `tbl_sanpham`
        WHERE `sanpham_name`
        LIKE ?
        LIMIT ?,?");
        $keyword = "%$keyword%";
        $sql -> bind_param("sii",$keyword,$start,$count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    function paginate($url, $total, $count,$page)
    {
        $totalLinks = ceil($total/$count);
        $link ="";
        for($j=1; $j <= $totalLinks ; $j++)
        {
            if($page == $j){

                $link = $link."<a styte='font-weight:bold' href='$url&page=$j'> $j </a>";
            }
            else{
                $link = $link."<a href='$url&page=$j'> $j </a>";
            }
        }
        return $link;
    }
    public function getNewItem($start,$count){
        $sql = self::$connection->prepare("SELECT * From `tbl_sanpham` ORDER BY `sanpham_id` ASC
        LIMIT ?,?");
        $sql -> bind_param("ii",$start,$count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    
}

?>