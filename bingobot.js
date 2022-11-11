// ==UserScript==
// @name         Bing Bot
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Bot for Bing!
// @author       Oksana Samorodova
// @match      https://www.bing.com/*
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==
let links=document.links;
let searchIconTooltip =document.getElementsByClassName('search icon tooltip')[0];
let keywords = ["10 самых популярных шрифтов от Google", "Отключение редакций и ревизий в WordPress", "Вывод произвольных типов записей и полей в WordPress"];
let keyword = keywords[getRandom(0,keywords.length)];



if (searchIconTooltip !== undefined){
    document.getElementsByName("q")[0].value=keyword;
    searchIconTooltip.click();
}
    else {
for (let i = 0; i < links.length; i++) {
		if (links[i].href.includes("napli.ru")==true) {
            let link = links[i];
			console.log("Нашел строку"+links[i]);
        link.click();
break;
        }
     }
}

function getRandom(min,max) {
 return Math.floor(Math.random()*(max-min)+min);
}
