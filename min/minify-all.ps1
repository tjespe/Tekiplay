#powershell script for minifying all js (for windows contributors) requires uglify

cd $PSScriptRoot
cd ../src/js

uglifyjs app.js controllers/masterCtrl.js controllers/categoryCtrl.js controllers/gameCtrl.js controllers/viewCtrl.js directives/para-back.js -o ../../min/initial-js.min.js

uglifyjs directives/scroll.js controllers/lazyStuff.js controllers/cookieCtrl.js controllers/submitCtrl.js controllers/homeCtrl.js services/local-storage.js filters/mouth-wash.js filters/chat-time.js directives/embedSrc.js controllers/404Ctrl.js -o ../../min/lazy-js.min.js

cd ..
uglifyjs css/main.css -o ../min/main.min.css
