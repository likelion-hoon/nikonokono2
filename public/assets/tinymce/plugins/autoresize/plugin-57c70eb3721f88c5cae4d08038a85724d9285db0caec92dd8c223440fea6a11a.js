!function(){"use strict";var t=function(e){var n=e,i=function(){return n};return{get:i,set:function(t){n=t},clone:function(){return t(i())}}},e=tinymce.util.Tools.resolve("tinymce.PluginManager"),n=tinymce.util.Tools.resolve("tinymce.Env"),i=tinymce.util.Tools.resolve("tinymce.util.Delay"),o=function(t){return parseInt(t.getParam("autoresize_min_height",t.getElement().offsetHeight),10)},r=function(t){return parseInt(t.getParam("autoresize_max_height",0),10)},a=function(t){return t.getParam("autoresize_overflow_padding",1)},u=function(t){return t.getParam("autoresize_bottom_margin",50)},s=function(t){return t.getParam("autoresize_on_init",!0)},l=function(t,e,n,o,r){i.setEditorTimeout(t,function(){c(t,e),n--?l(t,e,n,o,r):r&&r()},o)},g=function(t,e){var n=t.getBody();n&&(n.style.overflowY=e?"":"hidden",e||(n.scrollTop=0))},c=function(t,e){var i,a,u,s,l,f,d,m,p,y,h,v=t.dom;if(a=t.getDoc())if((S=t).plugins.fullscreen&&S.plugins.fullscreen.isFullscreen())g(t,!0);else{var S;u=a.body,s=o(t),f=v.getStyle(u,"margin-top",!0),d=v.getStyle(u,"margin-bottom",!0),m=v.getStyle(u,"padding-top",!0),p=v.getStyle(u,"padding-bottom",!0),y=v.getStyle(u,"border-top-width",!0),h=v.getStyle(u,"border-bottom-width",!0),l=u.offsetHeight+parseInt(f,10)+parseInt(d,10)+parseInt(m,10)+parseInt(p,10)+parseInt(y,10)+parseInt(h,10),(isNaN(l)||l<=0)&&(l=n.ie?u.scrollHeight:n.webkit&&0===u.clientHeight?0:u.offsetHeight),l>o(t)&&(s=l);var _=r(t);_&&l>_?(s=_,g(t,!0)):g(t,!1),s!==e.get()&&(i=s-e.get(),v.setStyle(t.iframeElement,"height",s+"px"),e.set(s),n.webkit&&i<0&&c(t,e))}},f={setup:function(t,e){t.on("init",function(){var e,n,i=t.dom;e=a(t),n=u(t),!1!==e&&i.setStyles(t.getBody(),{paddingLeft:e,paddingRight:e}),!1!==n&&i.setStyles(t.getBody(),{paddingBottom:n})}),t.on("nodechange setcontent keyup FullscreenStateChanged",function(n){c(t,e)}),s(t)&&t.on("init",function(){l(t,e,20,100,function(){l(t,e,5,1e3)})})},resize:c},d=function(t,e){t.addCommand("mceAutoResize",function(){f.resize(t,e)})};e.add("autoresize",function(e){if(!e.inline){var n=t(0);d(e,n),f.setup(e,n)}})}();
