this.wp=this.wp||{},this.wp.viewport=function(t){var e={};function n(r){if(e[r])return e[r].exports;var i=e[r]={i:r,l:!1,exports:{}};return t[r].call(i.exports,i,i.exports,n),i.l=!0,i.exports}return n.m=t,n.c=e,n.d=function(t,e,r){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:r})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var i in t)n.d(r,i,function(e){return t[e]}.bind(null,i));return r},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=357)}({2:function(t,e){!function(){t.exports=this.lodash}()},357:function(t,e,n){"use strict";n.r(e);var r={};n.r(r),n.d(r,"setIsMatching",(function(){return a}));var i={};n.r(i),n.d(i,"isViewportMatch",(function(){return f}));var o=n(2),c=n(4);var u=function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1?arguments[1]:void 0;switch(e.type){case"SET_IS_MATCHING":return e.values}return t};function a(t){return{type:"SET_IS_MATCHING",values:t}}function f(t,e){return-1===e.indexOf(" ")&&(e=">= "+e),!!t[e]}Object(c.registerStore)("core/viewport",{reducer:u,actions:r,selectors:i});var s=n(8),p=function(t){return Object(s.createHigherOrderComponent)(Object(c.withSelect)((function(e){return Object(o.mapValues)(t,(function(t){return e("core/viewport").isViewportMatch(t)}))})),"withViewportMatch")},d=function(t){return Object(s.createHigherOrderComponent)(Object(s.compose)([p({isViewportMatch:t}),Object(s.ifCondition)((function(t){return t.isViewportMatch}))]),"ifViewportMatches")};n.d(e,"ifViewportMatches",(function(){return d})),n.d(e,"withViewportMatch",(function(){return p}));var l={"<":"max-width",">=":"min-width"},h=Object(o.debounce)((function(){var t=Object(o.mapValues)(w,(function(t){return t.matches}));Object(c.dispatch)("core/viewport").setIsMatching(t)}),{leading:!0}),w=Object(o.reduce)({huge:1440,wide:1280,large:960,medium:782,small:600,mobile:480},(function(t,e,n){return Object(o.forEach)(l,(function(r,i){var o=window.matchMedia("(".concat(r,": ").concat(e,"px)"));o.addListener(h);var c=[i,n].join(" ");t[c]=o})),t}),{});window.addEventListener("orientationchange",h),h(),h.flush()},4:function(t,e){!function(){t.exports=this.wp.data}()},8:function(t,e){!function(){t.exports=this.wp.compose}()}});