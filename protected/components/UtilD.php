<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UtilD
 *
 * @author lzh
 */
class UtilD {

    //put your code here
    public static function password($password) {
        return md5($password);
    }

    /**
     * 中文字符串截取
     * @param string    $string  需要截取的字符串
     * @param int       $length  截取的长度
     * @param string    $etc     被截取的部分替换的字符串
     * @param bool    $encry     是否需要返回转义后的字符串
     */
    public static function cutString($string, $length, $etc = '...', $charset = 'UTF-8') {
        $string = UtilD::deSlashes($string);
        $trans = array('&nbsp;' => ' ');
        $string = strtr($string, $trans);
        $string = trim(strip_tags($string));
        $string = mb_strimwidth($string, 0, $length * 2, $etc, $charset);
        return $string;
    }

    //判断ipv4地址是否是一个局域网地址
    public static function isInternalp($ip) {
        $ip = ip2long($ip);
        $net_a = ip2long('10.255.255.255') >> 24; //A类网预留ip的网络地址 
        $net_b = ip2long('172.31.255.255') >> 20; //B类网预留ip的网络地址 
        $net_c = ip2long('192.168.255.255') >> 16; //C类网预留ip的网络地址 
        return $ip >> 24 === $net_a || $ip >> 20 === $net_b || $ip >> 16 === $net_c;
    }

    /**
     * 有[&#]的数据转换成正常数据
     */
    public static function deSlashes($value, $ucfirst = false) {
        if (empty($value)) {
            return $value;
        }
        if (mb_check_encoding($value, 'GBK') !== true) {
            $value = self::filterPartialUTF8Char($value);
        }
        if (mb_check_encoding($value, 'GBK') == false && mb_check_encoding($value, 'UTF-8') == false) {
            return '';
        }
        if (mb_check_encoding($value, 'GBK') == true && mb_check_encoding($value, 'UTF-8') !== true) {
            $value = mb_convert_encoding($value, 'UTF-8', 'GBK');
        }
        if (strpos($value, '&') !== false) {
            $value = htmlspecialchars_decode($value, ENT_QUOTES | ENT_NOQUOTES);
        }
        if (strpos($value, '&#') === false) {
            return $value;
        }

        $filters = array('&' => '&#' . ord('&') . ';', '#' => '&#' . ord('#') . ';', ' ' => '&#' . ord(' ') . ';', '\'' => '&#' . ord('\'') . ';', '>' => '&#' . ord('>') . ';',
            '<' => '&#' . ord('<') . ';', '=' => '&#' . ord('=') . ';', '!' => '&#' . ord('!') . ';', '^' => '&#' . ord('^') . ';', '+' => '&#' . ord('+') . ';',
            '-' => '&#' . ord('-') . ';', '*' => '&#' . ord('*') . ';', '/' => '&#' . ord('/') . ';', '%' => '&#' . ord('%') . ';', '|' => '&#' . ord('|') . ';',
            '~' => '&#' . ord('~') . ';', '@' => '&#' . ord('@') . ';', '"' => '&#' . ord('"') . ';', ';' => '&#' . ord(';') . ';');
        $value = strtr($value, array_flip($filters));
        if ($ucfirst === true) {
            $value = strtolower($value);
        }
        return $value;
    }

    /**
     * 数据转换成有[&#]
     */
    public static function enSlashes($value, $ucfirst = false) {
        if (empty($value)) {
            return $value;
        }
        //过滤不完整的utf8字符
        if (mb_check_encoding($value, 'GBK') !== true) {
            $value = self::filterPartialUTF8Char($value);
        }
        if (mb_check_encoding($value, 'GBK') == false && mb_check_encoding($value, 'UTF-8') == false) {
            return '';
        }
        if (mb_check_encoding($value, 'GBK') == true && mb_check_encoding($value, 'UTF-8') !== true) {
            $value = mb_convert_encoding($value, 'UTF-8', 'GBK');
        }
        if (strpos($value, '&') !== false) {
            $value = htmlspecialchars_decode($value, ENT_QUOTES | ENT_NOQUOTES);
        }
        $filters = array('&' => '&#' . ord('&') . ';', '#' => '&#' . ord('#') . ';', ' ' => '&#' . ord(' ') . ';', '\'' => '&#' . ord('\'') . ';', '>' => '&#' . ord('>') . ';',
            '<' => '&#' . ord('<') . ';', '=' => '&#' . ord('=') . ';', '!' => '&#' . ord('!') . ';', '^' => '&#' . ord('^') . ';', '+' => '&#' . ord('+') . ';',
            '-' => '&#' . ord('-') . ';', '*' => '&#' . ord('*') . ';', '/' => '&#' . ord('/') . ';', '%' => '&#' . ord('%') . ';', '|' => '&#' . ord('|') . ';',
            '~' => '&#' . ord('~') . ';', '@' => '&#' . ord('@') . ';', '"' => '&#' . ord('"') . ';', ';' => '&#' . ord(';') . ';');
        $value = strtr($value, $filters);
        if (strpos($value, '&#38;&#35;') !== false) {//如果本身就含转义字符
            $value = str_replace('&#38;&#35;', '&#', $value);
        }
        if ($ucfirst === true) {
            $value = strtolower($value);
        }
        return $value;
    }

    /*
     * 加密字符串
     * @param int $string   明文
     * @param int $operation   DECODE解密
     * @param int $key   密钥
     * @param int $expiry   过期时间，秒
     */

    public static function authcode($string, $operation = 'DECODE', $key = '', $expiry = 0) {

        $ckey_length = 4;

        $key = md5($key ? $key : 'authcode^6key(9');
        $keya = md5(substr($key, 0, 16));
        $keyb = md5(substr($key, 16, 16));
        $keyc = $ckey_length ? ($operation == 'DECODE' ? substr($string, 0, $ckey_length) : substr(md5(microtime()), -$ckey_length)) : '';

        $cryptkey = $keya . md5($keya . $keyc);
        $key_length = strlen($cryptkey);

        $string = $operation == 'DECODE' ? base64_decode(substr($string, $ckey_length)) : sprintf('%010d', $expiry ? $expiry + time() : 0) . substr(md5($string . $keyb), 0, 16) . $string;
        $string_length = strlen($string);

        $result = '';
        $box = range(0, 255);

        $rndkey = array();
        for ($i = 0; $i <= 255; $i++) {
            $rndkey[$i] = ord($cryptkey[$i % $key_length]);
        }

        for ($j = $i = 0; $i < 256; $i++) {
            $j = ($j + $box[$i] + $rndkey[$i]) % 256;
            $tmp = $box[$i];
            $box[$i] = $box[$j];
            $box[$j] = $tmp;
        }

        for ($a = $j = $i = 0; $i < $string_length; $i++) {
            $a = ($a + 1) % 256;
            $j = ($j + $box[$a]) % 256;
            $tmp = $box[$a];
            $box[$a] = $box[$j];
            $box[$j] = $tmp;
            $result .= chr(ord($string[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
        }

        if ($operation == 'DECODE') {
            if ((substr($result, 0, 10) == 0 || substr($result, 0, 10) - time() > 0) && substr($result, 10, 16) == substr(md5(substr($result, 26) . $keyb), 0, 16)) {
                return substr($result, 26);
            } else {
                return '';
            }
        } else {
            return $keyc . str_replace('=', '', base64_encode($result));
        }
    }

    /**
     * 取得IP
     * @return string 字符串类型的返回结果
     */
    public static function getIp() {
        if (@$_SERVER['HTTP_CLIENT_IP'] && $_SERVER['HTTP_CLIENT_IP'] != 'unknown') {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (@$_SERVER['HTTP_X_FORWARDED_FOR'] && $_SERVER['HTTP_X_FORWARDED_FOR'] != 'unknown') {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return preg_match('/^\d[\d.]+\d$/', $ip) ? $ip : '';
    }

    /**
      汉字转拼音
     * */
    public static function cnToPinyin($str, $_Code = 'utf-8') {
        if (mb_check_encoding($str, 'UTF-8')) {
            $str = mb_convert_encoding($str, 'GBK', 'UTF-8');
        }
        $len = mb_strlen($str, 'GBK');
        $ret = '';
        for ($i = 0; $i < $len; $i++) {

            try {
                $char = mb_substr($str, $i, 1, 'GBK');
                $xx = self::toPinyin($char);
            } catch (Exception $e) {
                $xx = array();
            }
            if (isset($xx['py'])) {
                $ret.=$xx['py'];
            } else {
                $ret.='unkown';
            }
        }
        return $ret;
    }

    /**
     * 格式化价格
     * @param float $price
     * @return string
     */
    public static function formatPrice($price) {
        if (!is_numeric(trim($price)))
            return 0;
        return sprintf('%.2f', trim($price));
    }

    /*
     * 重写$_SERVER['REQUREST_URI']
     */

    public static function request_uri() {
        if (isset($_SERVER['REQUEST_URI'])) {
            $uri = $_SERVER['REQUEST_URI'];
        } else {
            if (isset($_SERVER['argv'])) {
                $uri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['argv'][0];
            } else {
                $uri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING'];
            }
        }
        return $uri;
    }

    /**
     * 加密函数
     *
     * @param string $txt 需要加密的字符串
     * @param string $key 密钥
     * @return string 返回加密结果
     */
    public static function encrypt($txt, $key = '') {
        if (empty($key) || empty($txt)) {
            return $txt;
        }
        $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";
        $ikey = "-x6g6ZWm2G9g_vr0Bo.pOq3kRIxsZ6rm";
        $nh1 = rand(0, 64);
        $nh2 = rand(0, 64);
        $nh3 = rand(0, 64);
        $ch1 = $chars{$nh1};
        $ch2 = $chars{$nh2};
        $ch3 = $chars{$nh3};
        $nhnum = $nh1 + $nh2 + $nh3;
        $knum = 0;
        $i = 0;
        while (isset($key{$i}))
            $knum +=ord($key{$i++});
        $mdKey = substr(md5(md5(md5($key . $ch1) . $ch2 . $ikey) . $ch3), $nhnum % 8, $knum % 8 + 16);
        $txt = base64_encode($txt);
        $txt = str_replace(array('+', '/', '='), array('-', '_', '.'), $txt);
        $tmp = '';
        $j = 0;
        $k = 0;
        $tlen = strlen($txt);
        $klen = strlen($mdKey);
        for ($i = 0; $i < $tlen; $i++) {
            $k = $k == $klen ? 0 : $k;
            $j = ($nhnum + strpos($chars, $txt{$i}) + ord($mdKey{$k++})) % 64;
            $tmp .= $chars{$j};
        }
        $tmplen = strlen($tmp);
        $tmp = substr_replace($tmp, $ch3, $nh2 % ++$tmplen, 0);
        $tmp = substr_replace($tmp, $ch2, $nh1 % ++$tmplen, 0);
        $tmp = substr_replace($tmp, $ch1, $knum % ++$tmplen, 0);
        return $tmp;
    }

    /**
     * 解密函数
     *
     * @param string $txt 需要解密的字符串
     * @param string $key 密匙
     * @return string 字符串类型的返回结果
     */
    public static function decrypt($txt, $key = '') {
        if (empty($key) || empty($txt)) {
            return $txt;
        }

        $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";
        $ikey = "-x6g6ZWm2G9g_vr0Bo.pOq3kRIxsZ6rm";
        $knum = 0;
        $i = 0;
        $tlen = strlen($txt);
        while (isset($key{$i}))
            $knum +=ord($key{$i++});
        $ch1 = $txt{$knum % $tlen};
        $nh1 = strpos($chars, $ch1);
        $txt = substr_replace($txt, '', $knum % $tlen--, 1);
        $ch2 = $txt{$nh1 % $tlen};
        $nh2 = strpos($chars, $ch2);
        $txt = substr_replace($txt, '', $nh1 % $tlen--, 1);
        $ch3 = $txt{$nh2 % $tlen};
        $nh3 = strpos($chars, $ch3);
        $txt = substr_replace($txt, '', $nh2 % $tlen--, 1);
        $nhnum = $nh1 + $nh2 + $nh3;
        $mdKey = substr(md5(md5(md5($key . $ch1) . $ch2 . $ikey) . $ch3), $nhnum % 8, $knum % 8 + 16);
        $tmp = '';
        $j = 0;
        $k = 0;
        $tlen = strlen($txt);
        $klen = strlen($mdKey);
        for ($i = 0; $i < $tlen; $i++) {
            $k = $k == $klen ? 0 : $k;
            $j = strpos($chars, $txt{$i}) - $nhnum - ord($mdKey{$k++});
            while ($j < 0)
                $j+=64;
            $tmp .= $chars{$j};
        }
        $tmp = str_replace(array('-', '_', '.'), array('+', '/', '='), $tmp);
        return trim(base64_decode($tmp));
    }

    /**
     * 读取目录列表
     * 不包括 . .. 文件 三部分
     * @param string $path 路径
     * @return array 数组格式的返回结果
     */
    public static function readDirList($path) {
        if (is_dir($path)) {
            $handle = @opendir($path);
            $dir_list = array();
            if ($handle) {
                while (false !== ($dir = readdir($handle))) {
                    if ($dir != '.' && $dir != '..' && is_dir($path . DS . $dir)) {
                        $dir_list[] = $dir;
                    }
                }
                return $dir_list;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * 获取文件列表(所有子目录文件)     *
     * @param string $path 目录
     * @param array $file_list 存放所有子文件的数组
     * @param array $ignore_dir 需要忽略的目录或文件
     * @return array 数据格式的返回结果
     */
    public static function readFileList($path, &$file_list, $ignore_dir = array()) {
        $path = rtrim($path, '/');
        if (is_dir($path)) {
            $handle = @opendir($path);
            if ($handle) {
                while (false !== ($dir = readdir($handle))) {
                    if ($dir != '.' && $dir != '..') {
                        if (!in_array($dir, $ignore_dir)) {
                            if (is_file($path . DS . $dir)) {
                                $file_list[] = $path . DS . $dir;
                            } elseif (is_dir($path . DS . $dir)) {
                                readFileList($path . DS . $dir, $file_list, $ignore_dir);
                            }
                        }
                    }
                }
                @closedir($handle);
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * unicode转为utf8
     * @param string $str 待转的字符串
     * @return string
     */
    public static function unicodeToUtf8($str, $order = "little") {
        $utf8string = "";
        $n = strlen($str);
        for ($i = 0; $i < $n; $i++) {
            if ($order == "little") {
                $val = str_pad(dechex(ord($str[$i + 1])), 2, 0, STR_PAD_LEFT) .
                        str_pad(dechex(ord($str[$i])), 2, 0, STR_PAD_LEFT);
            } else {
                $val = str_pad(dechex(ord($str[$i])), 2, 0, STR_PAD_LEFT) .
                        str_pad(dechex(ord($str[$i + 1])), 2, 0, STR_PAD_LEFT);
            }
            $val = intval($val, 16); // 由于上次的.连接，导致$val变为字符串，这里得转回来。
            $i++; // 两个字节表示一个unicode字符。
            $c = "";
            if ($val < 0x7F) { // 0000-007F
                $c .= chr($val);
            } elseif ($val < 0x800) { // 0080-07F0
                $c .= chr(0xC0 | ($val / 64));
                $c .= chr(0x80 | ($val % 64));
            } else { // 0800-FFFF
                $c .= chr(0xE0 | (($val / 64) / 64));
                $c .= chr(0x80 | (($val / 64) % 64));
                $c .= chr(0x80 | ($val % 64));
            }
            $utf8string .= $c;
        }
        /* 去除bom标记 才能使内置的iconv函数正确转换 */
        if (ord(substr($utf8string, 0, 1)) == 0xEF && ord(substr($utf8string, 1, 2)) == 0xBB && ord(substr($utf8string, 2, 1)) == 0xBF) {
            $utf8string = substr($utf8string, 3);
        }
        return $utf8string;
    }

    /**
     * 获取文件后缀
     * @param string $str
     * @return string
     */
    public static function file_ext($str) {
        $a = explode('.', $str);
        return end($a);
    }

    // 循环创建目录
    public static function mk_dir($dir, $mode = 0777) {
        if (is_dir($dir) || @mkdir($dir, $mode))
            return true;
        if (!self::mk_dir(dirname($dir), $mode))
            return false;
        return @mkdir($dir, $mode);
    }

    /**
     * 取得一个文件的后缀
     * @param type $filename
     * @return type
     */
    public static function fileext($filename) {
        return substr(strrchr($filename, '.'), 1);
    }

    /**
     * index.php目录
     * @return type
     */
    public static function webRoot() {
        return Yii::getPathOfAlias('webroot') . '/';
    }

    /**
     * 将对象转化成数组
     * @param type $object
     * @param type $keyBy
     * @return type
     */
    public static function object2array($object, $keyBy = '') {
        $array = array();
        if (is_array($object)) {
            foreach ($object as $value) {
                if ($keyBy != '')
                    $array[$value->$keyBy] = $value->attributes;
                else
                    $array[] = $value->attributes;
            }
        }
        return $array;
    }

    //格式化返回的数据
    public static function formatReturn($status, $message, $isJson = false) {
        $return = array('status' => $status, 'message' => $message);
        if ($isJson) {
            return CJSON::encode($return);
        }
        return $return;
    }

    /**
     * 获取文字的首字母
     * @param type $str
     * @return string
     */
    public static function getFirstLetter($str) {
        if (empty($str)) {
            return '';
        }
        $fchar = ord($str{0});
        if ($fchar >= ord('A') && $fchar <= ord('z'))
            return strtoupper($str{0});
        $s1 = iconv('UTF-8', 'gb2312', $str);
        $s2 = iconv('gb2312', 'UTF-8', $s1);
        $s = $s2 == $str ? $s1 : $str;
        $asc = ord($s{0}) * 256 + ord($s{1}) - 65536;
        if ($asc >= -20319 && $asc <= -20284)
            return 'A';
        if ($asc >= -20283 && $asc <= -19776)
            return 'B';
        if ($asc >= -19775 && $asc <= -19219)
            return 'C';
        if ($asc >= -19218 && $asc <= -18711)
            return 'D';
        if ($asc >= -18710 && $asc <= -18527)
            return 'E';
        if ($asc >= -18526 && $asc <= -18240)
            return 'F';
        if ($asc >= -18239 && $asc <= -17923)
            return 'G';
        if ($asc >= -17922 && $asc <= -17418)
            return 'H';
        if ($asc >= -17417 && $asc <= -16475)
            return 'J';
        if ($asc >= -16474 && $asc <= -16213)
            return 'K';
        if ($asc >= -16212 && $asc <= -15641)
            return 'L';
        if ($asc >= -15640 && $asc <= -15166)
            return 'M';
        if ($asc >= -15165 && $asc <= -14923)
            return 'N';
        if ($asc >= -14922 && $asc <= -14915)
            return 'O';
        if ($asc >= -14914 && $asc <= -14631)
            return 'P';
        if ($asc >= -14630 && $asc <= -14150)
            return 'Q';
        if ($asc >= -14149 && $asc <= -14091)
            return 'R';
        if ($asc >= -14090 && $asc <= -13319)
            return 'S';
        if ($asc >= -13318 && $asc <= -12839)
            return 'T';
        if ($asc >= -12838 && $asc <= -12557)
            return 'W';
        if ($asc >= -12556 && $asc <= -11848)
            return 'X';
        if ($asc >= -11847 && $asc <= -11056)
            return 'Y';
        if ($asc >= -11055 && $asc <= -10247)
            return 'Z';
        return null;
    }

    public static function cookie($name, $value = '', $expire = 3600, $path = '', $domain = '') {
        if (!$expire) {
            $cookies = Yii::app()->request->getCookies();
            unset($cookies[$name]);
            return true;
        } else {
            if ($value === '') {
                $cookies = Yii::app()->request->getCookies();
                return $cookies[$name] ? $cookies[$name] : "";
            }
        }
        $cookie = new CHttpCookie($name, $value);
        if ($expire) {
            $cookie->expire = time() + $expire;
        }
        if ($path) {
            $cookie->path = $path;
        }
        if ($domain) {
            $cookie->domain = $domain;
        }
        Yii::app()->request->cookies[$name] = $cookie;
    }

    /**
     * 强制转换成数字
     * @param type $var
     * @return type
     */
    public static function numeric($var) {
        $return = 0;
        if (is_numeric($var) && $var > 0) {
            $return = intval($var);
        }
        return $return;
    }
    /**
     * 取得“是否”的数组
     * @param type $key
     * @return string
     */
    public static function getTrueOrFalse($key=''){
        $return = array(
            '1' => '是',
            '0' => '否',
        );
        if(key_exists($key, $return)){
            return $return[$key];
        }
        return $return;
    }
    /**
     * 取得启用禁用数组
     * @param type $key
     * @return string
     */
    public static function getIfUse($key=''){
        $return = array(
            '1' => '启用',
            '0' => '禁用',
        );
        if(key_exists($key, $return)){
            return $return[$key];
        }
        return $return;
    }
    /**
     * 获取图片地址
     * @param type $image
     * @param type $type
     * @return string
     */
    public static function getImageUrl($image,$type=''){
        if(empty($image))
            return $image;
        if(strstr($image, '/upload')){
                return $image;
        }
        if(empty($type)){
            return '';
        }
        $type = self::getOldImgType($type);
        return Yii::app()->request->hostInfo.'/UploadFiles/'.$type.'/'.$image;
    }
    public static function getOldImgType($type){
        $return = array(
            'bc' => 'Bcs',
            'outlets' => 'Outlets',
            'seller_big_image' => 'Sellers',
            'seller_small_image' => 'SellersBrand',
            'coupon' => 'coupons',
            'vipcoupon' => 'Vipcoupons',
            'appimage' => 'Advertisement',
        );
        return $return[$type];
    }
    /**
     * 格式化时间
     * @param type $time
     * @param type $type
     * @return type
     */
    public static function formatDate($time,$type='Y-m-d H:i:s'){
        return date($type,$time);
    }
    public static function returnTrueOrFalse($int){
        return $int ? true : false;
    }

}
