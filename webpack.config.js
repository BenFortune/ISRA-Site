var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
    entry: './src/scss/site.scss',
    output: {
        filename: 'dist/bundle.js'
    },
    module: {
        rules: [
            /*
            Javascript stuff goes here
            */
            {
                test: /\.scss$/,
                use: ExtractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: ['css-loader', 'sass-loader'],
                })
            },
            {
                test: /\.(png|jp(e*)g|svg)$/,
                use: [{
                    loader: 'url-loader',
                    options: {
                        limit: 8000,
                        name: 'img/[hash]-[name].[ext]'
                    }
                }]
            }
        ]
    },
    plugins: [
        new ExtractTextPlugin({
            filename: 'dist/styles.bundle.css',
            allChunks: true,
        }),
        new CopyWebpackPlugin([{
            from: 'img',
            to: 'dist/img'
        }]),
    ],
};