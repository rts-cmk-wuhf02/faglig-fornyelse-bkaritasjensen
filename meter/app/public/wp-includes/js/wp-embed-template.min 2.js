!function(u,c){"use strict";var r,t,e,i=c.querySelector&&u.addEventListener,b=!1;function f(e,t){u.parent.postMessage({message:e,value:t,secret:r},"*")}function n(){if(!b){b=!0;var e,t=c.querySelector(".wp-embed-share-dialog"),r=c.querySelector(".wp-embed-share-dialog-open"),i=c.querySelector(".wp-embed-share-dialog-close"),n=c.querySelectorAll(".wp-embed-share-input"),a=c.querySelectorAll(".wp-embed-share-tab-button button"),o=c.querySelector(".wp-embed-featured-image img");if(n)for(e=0;e<n.length;e++)n[e].addEventListener("click",function(e){e.target.select()});if(r&&r.addEventListener("click",function(){t.className=t.className.replace("hidden",""),c.querySelector('.wp-embed-share-tab-button [aria-selected="true"]').focus()}),i&&i.addEventListener("click",function(){l()}),a)for(e=0;e<a.length;e++)a[e].addEventListener("click",s),a[e].addEventListener("keydown",d);c.addEventListener("keydown",function(e){27===e.keyCode&&-1===t.className.indexOf("hidden")?l():9===e.keyCode&&function(e){var t=c.querySelector('.wp-embed-share-tab-button [aria-selected="true"]');i!==e.target||e.shiftKey?t===e.target&&e.shiftKey&&(i.focus(),e.preventDefault()):(t.focus(),e.preventDefault())}(e)},!1),u.self!==u.top&&(f("height",Math.ceil(c.body.getBoundingClientRect().height)),o&&o.addEventListener("load",function(){f("height",Math.ceil(c.body.getBoundingClientRect().height))}),c.addEventListener("click",function(e){var t,r=e.target;(t=r.hasAttribute("href")?r.getAttribute("href"):r.parentElement.getAttribute("href"))&&(f("link",t),e.preventDefault())}))}function l(){t.className+=" hidden",c.querySelector(".wp-embed-share-dialog-open").focus()}function s(e){var t=c.querySelector('.wp-embed-share-tab-button [aria-selected="true"]');t.setAttribute("aria-selected","false"),c.querySelector("#"+t.getAttribute("aria-controls")).setAttribute("aria-hidden","true"),e.target.setAttribute("aria-selected","true"),c.querySelector("#"+e.target.getAttribute("aria-controls")).setAttribute("aria-hidden","false")}function d(e){var t,r,i=e.target,n=i.parentElement.previousElementSibling,a=i.parentElement.nextElementSibling;if(37===e.keyCode)t=n;else{if(39!==e.keyCode)return!1;t=a}"rtl"===c.documentElement.getAttribute("dir")&&(t=t===n?a:n),t&&(r=t.firstElementChild,i.setAttribute("tabindex","-1"),i.setAttribute("aria-selected",!1),c.querySelector("#"+i.getAttribute("aria-controls")).setAttribute("aria-hidden","true"),r.setAttribute("tabindex","0"),r.setAttribute("aria-selected","true"),r.focus(),c.querySelector("#"+r.getAttribute("aria-controls")).setAttribute("aria-hidden","false"))}}i&&(!function e(){u.self===u.top||r||(r=u.location.hash.replace(/.*secret=([\d\w]{10}).*/,"$1"),clearTimeout(t),t=setTimeout(function(){e()},100))}(),c.documentElement.className=c.documentElement.className.replace(/\bno-js\b/,"")+" js",c.addEventListener("DOMContentLoaded",n,!1),u.addEventListener("load",n,!1),u.addEventListener("resize",function(){u.self!==u.top&&(clearTimeout(e),e=setTimeout(function(){f("height",Math.ceil(c.body.getBoundingClientRect().height))},100))},!1))}(window,document);