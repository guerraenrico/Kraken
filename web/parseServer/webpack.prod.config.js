const path = require('path');
const webpack = require('webpack');

module.exports = {
  mode: 'development',
  target: 'node',
  entry: ['./src/index.js'],
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'cloud'),
  },
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

// module.exports = {
//   mode: 'production',
//   context: path.resolve('src'),
//   target: 'node',
//   entry: {
//     main: './index.js',
//   },
//   output: {
//     filename: '[name].js',
//     path: path.resolve(__dirname, 'cloud'),
//   },
//   resolve: {
//     extensions: ['.js'],
//   },
//   module: {
//     rules: [
//       {
//         test: /\.(js|jsx)$/,
//         loaders: ['babel-loader'],
//         exclude: /node_modules/,
//       },
//     ],
//   },
//   plugins: [
//     new webpack.DefinePlugin({
//       'process.env.NODE_ENV': JSON.stringify('production'),
//     }),
//     new webpack.IgnorePlugin(/\.svg$/),
//   ],
// };
