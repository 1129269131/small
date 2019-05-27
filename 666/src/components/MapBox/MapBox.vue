<template>
  <div style="height:100%;width:100%;text-align:left;">
    <div
      ref="basicMapbox"
      :style="mapSize"
    ></div>
  </div>
</template>
<script>
import mapboxgl from 'mapbox-gl'
import MapboxLanguage from '@mapbox/mapbox-gl-language'

export default {
  name: 'MapBox',
  props: {
    mapWidth: {
      type: String
    },
    mapHeight: {
      type: String
    },
    center: {
      type: Array,
      default () {
        return [118.141621, 24.490754]
      }
    },
    zoom: {
      type: Number,
      default: 15.5
    }
  },
  data () {
    return {
    }
  },
  methods: {
    // 初始化
    init () {
      mapboxgl.accessToken = 'pk.eyJ1IjoidWJpbGFicyIsImEiOiJjaXc3dGQzb2wwMDEwMnlwNXlsejAyOXF6In0.2C7DfhUhiVWgE_ek5N5GzQ'
      // mapboxgl.accessToken = 'pk.eyJ1IjoiZ2FsbG9uY2UiLCJhIjoiY2pwa2pudmFxMDQzeTQycWx3eHRlZTdrdSJ9.KfT8-MCg2lLjBRJ7V2gUQQ'
      var map = new mapboxgl.Map({
        style: 'mapbox://styles/mapbox/light-v9',
        center: this.center,
        zoom: this.zoom,
        pitch: 45,
        bearing: -17.6,
        container: this.$refs.basicMapbox
      })
      // map.setLayoutProperty('country-label-lg', 'text-field', ['get', 'name_' + language])
      mapboxgl.setRTLTextPlugin('https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-rtl-text/v0.2.1/mapbox-gl-rtl-text.js')
      map.addControl(new MapboxLanguage({ defaultLanguage: this.language }))

      // var speedFactor = 30 // number of frames per longitude degree
      // var animation // to store and cancel the animation
      // var startTime = 0
      // var progress = 0 // progress = timestamp - startTime
      // var resetTime = false // indicator of whether time reset is needed for the animation

      // The 'building' layer in the mapbox-streets vector source contains building-height
      // data from OpenStreetMap.
      map.on('load', function () {
        // Insert the layer beneath any symbol layer.
        var layers = map.getStyle().layers
        var layers1 = ['country-label-lg', 'country-label-md', 'country-label-sm']

        layers1.forEach(function (layer) {
          map.setLayoutProperty(layer, 'text-field', ['format',
            ['get', 'name_en'], { 'font-scale': 1.2 },
            '\n', {},
            ['get', 'name'], {
              'font-scale': 0.8,
              'text-font': ['literal', ['DIN Offc Pro Italic', 'Arial Unicode MS Regular']]
            }
          ])
        })

        var labelLayerId
        for (var i = 0; i < layers.length; i++) {
          if (layers[i].type === 'symbol' && layers[i].layout['text-field']) {
            labelLayerId = layers[i].id
            break
          }
        }

        map.addLayer({
          'id': '3d-buildings',
          'source': 'composite',
          'source-layer': 'building',
          'filter': ['==', 'extrude', 'true'],
          'type': 'fill-extrusion',
          'minzoom': 15,
          'paint': {
            'fill-extrusion-color': '#aaa',
            // use an 'interpolate' expression to add a smooth transition effect to the
            // buildings as the user zooms in
            'fill-extrusion-height': [
              'interpolate', ['linear'], ['zoom'],
              15, 0,
              15.05, ['get', 'height']
            ],
            // 'fill-extrusion-base': [
            //   'interpolate', ['linear'], ['zoom'],
            //   15, 0,
            //   15.05, ['get', 'min_height']
            // ],
            'fill-extrusion-base': ['interpolate', ['linear'], ['zoom'], 100, ['get', 'min_height']],
            'fill-extrusion-opacity': 0.6
          }
        }, labelLayerId)

        map.addLayer({
          'id': 'route',
          'type': 'line',
          'source': {
            'type': 'geojson',
            'data': {
              'type': 'Feature',
              'properties': {},
              'geometry': {
                'type': 'LineString',
                'coordinates': [
                  [118.151008, 24.546581],
                  [118.151008, 24.556581]
                ]
              }
            }
          },
          'layout': {
            'line-join': 'round',
            'line-cap': 'round'
          },
          'paint': {
            'line-color': '#f00',
            'line-width': 8
          }
        })

        //   var geojson = {
        //     'type': 'FeatureCollection',
        //     'features': [{
        //       'type': 'Feature',
        //       'geometry': {
        //         'type': 'LineString',
        //         'coordinates': [
        //           [118.141621, 24.490754],
        //           [118.151008, 24.546581],
        //           [118.151008, 24.556581]
        //         ]
        //       }
        //     }]
        //   }

        //   map.addLayer({
        //     'id': 'line-animation',
        //     'type': 'line',
        //     'source': {
        //       'type': 'geojson',
        //       'data': geojson
        //     },
        //     'layout': {
        //       'line-cap': 'round',
        //       'line-join': 'round'
        //     },
        //     'paint': {
        //       'line-color': '#ed6498',
        //       'line-width': 5,
        //       'line-opacity': 0.8
        //     }
        //   })

        //   startTime = performance.now()

        //   animateLine()

        //   // animated in a circle as a sine wave along the map.
        //   function animateLine (timestamp) {
        //     if (resetTime) {
        //       // resume previous progress
        //       startTime = performance.now() - progress
        //       resetTime = false
        //     } else {
        //       progress = timestamp - startTime
        //     }

      //     // restart if it finishes a loop
      //     if (progress > speedFactor * 360) {
      //       startTime = timestamp
      //       geojson.features[0].geometry.coordinates = []
      //     } else {
      //       var x = progress / speedFactor
      //       // draw a sine wave with some math.
      //       var y = Math.sin(x * Math.PI / 90) * 40
      //       // append new coordinates to the lineString
      //       geojson.features[0].geometry.coordinates.push([x, y])
      //       // then update the map
      //       map.getSource('line-animation').setData(geojson)
      //     }
      //     // Request the next frame of the animation.
      //     animation = requestAnimationFrame(animateLine)
      //   }
      })

      /* eslint-disable no-console */
      console.log('MapBox初始化成功...')
    }
  },
  computed: {
    mapSize () {
      let styleObj = {
        width: this.mapWidth,
        height: this.mapHeight
      }
      return styleObj
    },
    language () {
      return this.$store.state.systemSetting.lang
    }
  },
  mounted () {
    this.init()
  }
}
</script>

<style scoped>
/* @import url("https://api.tiles.mapbox.com/mapbox-gl-js/v0.44.2/mapbox-gl.css"); */
</style>
