function sign(tooken,time,appKey,d){
    function a(e){function t(e,t){return e<<t|e>>>32-t}
        function r(e,t){var r,n,o,a,i;return o=2147483648&e,a=2147483648&t,r=1073741824&e,n=1073741824&t,i=(1073741823&e)+(1073741823&t),r&n?2147483648^i^o^a:r|n?1073741824&i?3221225472^i^o^a:1073741824^i^o^a:i^o^a}
        function n(e,t,r){return e&t|~e&r}
        function o(e,t,r){return e&r|t&~r}
        function a(e,t,r){return e^t^r}
        function i(e,t,r){return t^(e|~r)}
        function u(e,o,a,i,u,s,l){return e=r(e,r(r(n(o,a,i),u),l)),r(t(e,s),o)}
        function s(e,n,a,i,u,s,l){return e=r(e,r(r(o(n,a,i),u),l)),r(t(e,s),n)}
        function l(e,n,o,i,u,s,l){return e=r(e,r(r(a(n,o,i),u),l)),r(t(e,s),n)}
        function c(e,n,o,a,u,s,l){return e=r(e,r(r(i(n,o,a),u),l)),r(t(e,s),n)}
        function f(e){var t='',r='',n,o;for(o=0;o<=3;o++)n=e>>>8*o&255,r='0'+n.toString(16),t+=r.substr(r.length-2,2);return t}
        var d=[],p,h,g,A,_,m,v,y,b,S=7,x=12,E=17,w=22,O=5,R=9,D=14,C=20,T=4,P=11,I=16,M=23,k=6,N=10,j=15,q=21;for(e=function(e){e=e.replace(/\r\n/g,'\n');for(var t='',r=0;r<e.length;r++){var n=e.charCodeAt(r);n<128?t+=String.fromCharCode(n):n>127&&n<2048?(t+=String.fromCharCode(n>>6|192),t+=String.fromCharCode(63&n|128)):(t+=String.fromCharCode(n>>12|224),t+=String.fromCharCode(n>>6&63|128),t+=String.fromCharCode(63&n|128))}
            return t}(e),d=function(e){for(var t,r=e.length,n=r+8,o=16*((n-n%64)/64+1),a=new Array(o-1),i=0,u=0;u<r;)t=(u-u%4)/4,i=u%4*8,a[t]=a[t]|e.charCodeAt(u)<<i,u++;return t=(u-u%4)/4,i=u%4*8,a[t]=a[t]|128<<i,a[o-2]=r<<3,a[o-1]=r>>>29,a}(e),m=1732584193,v=4023233417,y=2562383102,b=271733878,p=0;p<d.length;p+=16)h=m,g=v,A=y,_=b,m=u(m,v,y,b,d[p+0],7,3614090360),b=u(b,m,v,y,d[p+1],12,3905402710),y=u(y,b,m,v,d[p+2],17,606105819),v=u(v,y,b,m,d[p+3],22,3250441966),m=u(m,v,y,b,d[p+4],7,4118548399),b=u(b,m,v,y,d[p+5],12,1200080426),y=u(y,b,m,v,d[p+6],17,2821735955),v=u(v,y,b,m,d[p+7],22,4249261313),m=u(m,v,y,b,d[p+8],7,1770035416),b=u(b,m,v,y,d[p+9],12,2336552879),y=u(y,b,m,v,d[p+10],17,4294925233),v=u(v,y,b,m,d[p+11],22,2304563134),m=u(m,v,y,b,d[p+12],7,1804603682),b=u(b,m,v,y,d[p+13],12,4254626195),y=u(y,b,m,v,d[p+14],17,2792965006),v=u(v,y,b,m,d[p+15],22,1236535329),m=s(m,v,y,b,d[p+1],5,4129170786),b=s(b,m,v,y,d[p+6],9,3225465664),y=s(y,b,m,v,d[p+11],14,643717713),v=s(v,y,b,m,d[p+0],20,3921069994),m=s(m,v,y,b,d[p+5],5,3593408605),b=s(b,m,v,y,d[p+10],9,38016083),y=s(y,b,m,v,d[p+15],14,3634488961),v=s(v,y,b,m,d[p+4],20,3889429448),m=s(m,v,y,b,d[p+9],5,568446438),b=s(b,m,v,y,d[p+14],9,3275163606),y=s(y,b,m,v,d[p+3],14,4107603335),v=s(v,y,b,m,d[p+8],20,1163531501),m=s(m,v,y,b,d[p+13],5,2850285829),b=s(b,m,v,y,d[p+2],9,4243563512),y=s(y,b,m,v,d[p+7],14,1735328473),v=s(v,y,b,m,d[p+12],20,2368359562),m=l(m,v,y,b,d[p+5],4,4294588738),b=l(b,m,v,y,d[p+8],11,2272392833),y=l(y,b,m,v,d[p+11],16,1839030562),v=l(v,y,b,m,d[p+14],23,4259657740),m=l(m,v,y,b,d[p+1],4,2763975236),b=l(b,m,v,y,d[p+4],11,1272893353),y=l(y,b,m,v,d[p+7],16,4139469664),v=l(v,y,b,m,d[p+10],23,3200236656),m=l(m,v,y,b,d[p+13],4,681279174),b=l(b,m,v,y,d[p+0],11,3936430074),y=l(y,b,m,v,d[p+3],16,3572445317),v=l(v,y,b,m,d[p+6],23,76029189),m=l(m,v,y,b,d[p+9],4,3654602809),b=l(b,m,v,y,d[p+12],11,3873151461),y=l(y,b,m,v,d[p+15],16,530742520),v=l(v,y,b,m,d[p+2],23,3299628645),m=c(m,v,y,b,d[p+0],6,4096336452),b=c(b,m,v,y,d[p+7],10,1126891415),y=c(y,b,m,v,d[p+14],15,2878612391),v=c(v,y,b,m,d[p+5],21,4237533241),m=c(m,v,y,b,d[p+12],6,1700485571),b=c(b,m,v,y,d[p+3],10,2399980690),y=c(y,b,m,v,d[p+10],15,4293915773),v=c(v,y,b,m,d[p+1],21,2240044497),m=c(m,v,y,b,d[p+8],6,1873313359),b=c(b,m,v,y,d[p+15],10,4264355552),y=c(y,b,m,v,d[p+6],15,2734768916),v=c(v,y,b,m,d[p+13],21,1309151649),m=c(m,v,y,b,d[p+4],6,4149444226),b=c(b,m,v,y,d[p+11],10,3174756917),y=c(y,b,m,v,d[p+2],15,718787259),v=c(v,y,b,m,d[p+9],21,3951481745),m=r(m,h),v=r(v,g),y=r(y,A),b=r(b,_);return(f(m)+f(v)+f(y)+f(b)).toLowerCase()}
    return a(tooken+'&'+time+'&'+appKey+'&'+d);
}