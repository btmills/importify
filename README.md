# Here Be Footguns

Why just `require` a module when you can `importify` its contents into the global scope??

This is normally a Bad Idea. Like putting `with (require('<module>')) {...}` around your entire file. Only do it if you're really sure.

## Usage

`npm install https://github.com/btmills/importify/tarball/master`

IncrediblyUsefulModule.js:

```JavaScript
module.exports = {
    MAGICNUMBER: 42,
    EVILNUMBER: 13
};
```

YourAwesomeProgram.js:

```JavaScript
var importify = require('importify');
importify(require('./IncrediblyUsefulModule'));


console.log(MAGICNUMBER); // 42
console.log(EVILNUMBER); // 13
```

## License

Released under the BSD 3-Clause license, the full text of which can be read in [LICENSE](LICENSE).
