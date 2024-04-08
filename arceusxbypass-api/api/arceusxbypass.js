// index.js

const express = require('express');
const app = express();

app.get('/arceusxbypass', (req, res) => {
    const HWID = req.query.hwid;

    // Your JavaScript code here
    if (document.title == 'Just a moment...') { 
        return;
    }  

    var currentURL = req.url;
    var newerURL = currentURL.replace('https://spdmteam.com/key-system-1?hwid=', 'https://spdmteam.com/api/keysystem?hwid=').replace('&zone=Europe/Rome', '&zone=Europe/Rome&advertiser=lootlabs&OS=ios');
    var pageTitle = req.headers['user-agent'];
    var API = "https://spdmteam.com/api/keysystem?step=";

    if (currentURL.includes("https://spdmteam.com/key-system-1?hwid=")) { 
        res.redirect(307, newerURL);
    } else if (pageTitle.includes("NEO") && pageTitle.includes("1")) { 
        res.redirect(307, API + "1&advertiser=linkvertise&OS=ios");
    } else if (currentURL.includes("https://spdmteam.com/key-system-2?hwid=")) { 
        res.redirect(307, "https://loot-link.com/s?mYit");
    } else if (pageTitle.includes("NEO") && pageTitle.includes("2")) { 
        res.redirect(307, "https://spdmteam.com/api/keysystem?step=2&advertiser=linkvertise&OS=ios");
    } else if (currentURL.includes("https://spdmteam.com/key-system-3?hwid=")) { 
        res.redirect(307, "https://loot-link.com/s?qlbU");
    } else if (pageTitle.includes("NEO") && pageTitle.includes("3")) { 
        res.redirect(307, "https://spdmteam.com/api/keysystem?step=3&advertiser=linkvertise&OS=ios");
    } else {
        res.status(400).send("Invalid request");
    }
});

module.exports = app;
