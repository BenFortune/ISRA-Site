var ExtractTextPlugin = require('extract-text-webpack-plugin');

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
                test: /\.css$/,
                loader: ExtractTextPlugin.extract({
                    use: 'css-loader?importLoaders=1',
                }),
            },
            {
                test: /\.scss$/,
                loader: ExtractTextPlugin.extract({
                    use: ['css-loader', 'sass-loader']
                })
            }
        ]
    },
    plugins: [
        new ExtractTextPlugin({
            filename: 'dist/styles.bundle.css',
            allChunks: true,
        }),
    ],
};
