import { Line } from 'progressbar.js';

// Assuming we have an empty <div id="container"></div> in
// HTML
var bar = new Line('#fuel_progbar', {easing: 'easeInOut'});
bar.animate(1);  // Value from 0.0 to 1.0