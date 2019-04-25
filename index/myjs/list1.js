$(function(){
   
    if(location.search!==""){
        var wid=location.search.split("=")[1];
         console.log(wid);
         $.ajax({
          url:`http://127.0.0.1:3000/my2`,
          type:"get",
          data:{wid},
          dataType:"json" //JSON.parse()
       }).then(function(result){
           var res=result.list1;
             //console.log(res);
             //console.log(res.list1);
             $('#fourfl>div button>a').attr('href',res.href)
            var arrp=[];
            var subtit=[];
            arrp.push(res.pic1);
            arrp.push(res.pic2);
            arrp.push(res.pic3);
            arrp.push(res.pic4);
            //console.log(arrp);
            subtit.push(res.subdetail1);
            subtit.push(res.subdetail2);
            subtit.push(res.subdetail3);
            subtit.push(res.subdetail4);
            //console.log(subtit);
            
            $('#onefl>div>div:first-child>h4').html(res.title);

            $('#onefl>div>div:first-child>p').html(res.details);

            $('#fourfl>div>div>h3').html(res.subtitle);

            $('#fourfl>div>div>p').html(subtit[0]);
            $('#fourfl>div>div:nth-child(3)>img').attr('src',arrp[3]);

            var next1=$('#next1');
            var fi=0;
            console.log(subtit)
            next1.click(function() {
                fi++;
                if(fi>3){
                    fi=0;
                }
                $('.fourimg').attr('src',arrp[fi])
                $('.four-t>p').html(subtit[fi])
               // console.log(1);

            });
            var prev1=$('#prev1');
            prev1.click(function() {
               // console.log(8);
                fi--;
                if(fi<0){
                    fi=3;
                }
                $('.fourimg').attr('src',arrp[fi]);
                $('.four-t>p').html(subtit[fi])
                console.log(fi);
            })
           
        



         
        var images = [];
        images=arrp;
        var html="";
        for(var ap of arrp){
            html +=` <li>
            <img  src="${ap}" alt=""/>
        </li>`
       
        }
      
         $("#myl").html(html);
        console.log(arrp);
        

        console.log(images);
        var mylunbo=$('#myl')[0];
        console.log(mylunbo);
        var lprev=$('#lprev');
        var lnext=$('#lnext');
        var w=0;
      
        lnext.click(function(){
            console.log(1);
            w-=25;
            if(w<-75){
                w=0;
            }
            console.log(w)
            mylunbo.style.webkitTransform = `translateX(${w}%)`;
        });
        lprev.click(function(){
            console.log(1);
            w+=25;
            if(w>0){
                w=-75;
            }
            mylunbo.style.webkitTransform = `translateX(${w}%)`;
            
        });
                                    
  













       })
    }
























 
})