# web-ui
Ember JS Project for frontend of App

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM)
* [Bower](http://bower.io/)
* [Ember CLI](http://ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)

## Installation

* `git clone <repository-url>` this repository
* `cd web-ui`
* `npm install`
* `bower install`

## Running / Development

* `ember serve`
* Visit your app at [http://localhost:4200](http://localhost:4200).

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

## Further Reading / Useful Links

* [ember.js](http://emberjs.com/)
* [ember-cli](http://ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

# Building the cordova app on Travis

This process was extremely painful, so I thought it would be good to document here for future use.
First, get cordova: `sudo npm install -g cordova`

1) Use the .travis.yml file in this directory
2) `ember install ember-cli-cordova`
3) `ember generate cordova-init <name-of-project>`
4) `rm -rf cordova/platforms` (this will remove the automatic ios platorm from the cordova directory)
5) add `cordova/platforms/*` to your .gitignore
6) add `cordova/node_modules/*` to your .gitignore
7) add `cordova/plugins/*` to your .gitignore
8) `rm -rf cordova/res` (if you don't want 10 MB of pictures in your project that don't seem to serve a purpose)
