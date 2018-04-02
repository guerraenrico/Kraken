const path = require('path');
const webpack = require('webpack');

module.exports = {
  mode: 'development',
  target: 'node',
  watch: true,
  entry: ['./src/index.js'],
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'cloud'),
  },
  devtool: 'inline-source-map',
  resolve: {
    extensions: ['.js'],
  },
  module: {
    rules: [
      {
        test: /\.(js)$/,
        loaders: ['babel-loader'],
        exclude: /node_modules/,
      },
    ],
  },
  plugins: [
    new webpack.NamedModulesPlugin(),
    new webpack.NoEmitOnErrorsPlugin(),
    new webpack.IgnorePlugin(/\.svg$/),
  ],
};
