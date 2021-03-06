var path = require("path");
var webpack = require("webpack");
module.exports = {
  context: __dirname,
  entry: {
    fronted_index: './js/entry/fronted_index.js',
    comment_form: './js/entry/comment_form.js',
    bug_show:'./js/entry/bug_show.js'
    
  },
  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts', 'bundle'),
    filename: '[name]_bundle.js',
    publicPath: '/js/'
  },
  plugins: [
    new webpack.ResolverPlugin(
      new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin("bower.json", ["main"])
    )
  ]
};
