
   // document.addEventListener("DOMContentLoaded",function () {
        $(function(){
        var body = document.body;
        var html = document.documentElement;
        var itv,height = document.body.offsetHeight;
        var page = scrollTop() / height | 0;
        addEventListener("resize",onresize,false);
        onresize();
        console.log(height,page)
 
        //鼠标滚轮事件
        document.body.addEventListener("onwheel" in document ? "wheel" : "mousewheel",function (e) {
            clearTimeout(itv);
            itv = setTimeout(function () {
                //判断滚轮滚的方向
                var delta = e.wheelDelta / 120 || -e.deltaY / 3;
                page -= delta;
                var max = (document.body.scrollHeight / height | 0) -1;
                if (page < 0){
                    return page = 0;
                }
                if (page > max){
                    return page = max;
                }
                move();
            },100);
            e.preventDefault();
        });
        //当窗体发生变化时还是保证每次滚动滚一屏
        function  onresize() {
            height = body.offsetHeight;
            move();
        };
        
        function  move() {
            var value = height * page;
            var diff = scrollTop() - value;
            (function callee() {
                diff = diff / 1.2 | 0;
                scrollTop(value + diff);
                if (diff){
                    itv = setTimeout(callee,16);
                }
            })();
        };
 
        function scrollTop(v) {
            if (v == null){
                return Math.max(body.scrollTop,html.scrollTop);
            }else{
                body.scrollTop = html.scrollTop = v;
            }
        }
    })
 //   })
