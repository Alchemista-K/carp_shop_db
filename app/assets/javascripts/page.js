//bgswitcherの記述（２０１８・１１・２９）

jQuery(function($) {
    $('.main').bgSwitcher({
        images: ['images/01_okonomi_mtnr.JPG','images/02_2016nippon_series.JPG','images/03_anaba.JPG'], // 切り替え画像
        Interval: 5000, //切り替えの間隔 1000=1秒
        start: true, //$.fn.bgswitcher(config)をコールした時に切り替えを開始する
        loop: true, //切り替えをループする
        shuffle: false, //背景画像の順番をシャッフルする
        effect: "fade", //エフェクトの種類 "fade" "blind" "clip" "slide" "drop" "hide"
        duration: 1000, //エフェクトの時間 1000=1秒
        easing: "swing", //エフェクトのイージング "swing" "linear"
    });
});