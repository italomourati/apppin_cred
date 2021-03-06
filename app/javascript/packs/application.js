// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")
require("jquery-mask-plugin")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "bootstrap";
import 'jquery-mask-plugin';
import "@fortawesome/fontawesome-free/js/all";
import '../src/custom';
import '../src/style';
import '../src/mask';
import '../src/infos';
import 'sweetalert2';
//import 'sweetalert';
//import "../stylesheets/application";  // <- Add this line
//import 'font_awesome5';

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
  })

$(function () {
 $('#open-modal').trigger('click');
});  

$(document).ready(function(){
  $('#money').mask('000.000.000.000,00', {reverse: true}); 
});

//$(document).ready(function(){
//  $('#cpf').mask('000.000.000-00', {reverse: true}); 
//});
//$(document).ready(function(){
//  $('#phone').mask('00.0.0000-0000', {reverse: true}); 
//});

