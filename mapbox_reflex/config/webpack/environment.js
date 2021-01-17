const { environment } = require('@rails/webpacker')

// Fix '_typeof is not defined' on load map
// https://github.com/mapbox/mapbox-gl-js/issues/3422#issuecomment-577293154
environment.loaders.delete('nodeModules')

module.exports = environment
