// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import '../stylesheets/application';
import "@fortawesome/fontawesome-free/js/all";

require("packs/custom/Chart.min");
require("packs/custom/jquery.vmap.min");
require("packs/custom/jquery.vmap.usa");
require("packs/custom/sparkline");
require("packs/custom/daterangepicker");
require("packs/dashboard");
require("packs/dashboard2");
require("packs/custom/usa_states.min");
require("packs/custom/jquery.mousewheel");
require("packs/custom/raphael.min");
require("packs/custom/jquery.mapael.min");


require("packs/dashboard3");

require("packs/custom/moment.min");
require("packs/custom/main");
require('admin-lte');

import {FullCalendar} from "packs/custom/main";
window.FullCalendar = FullCalendar;
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
  });
