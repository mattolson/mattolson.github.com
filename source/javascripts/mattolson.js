var APP = {};

APP.onclick_external = function(e) {
  window.open($(this)[0].href);
  e.preventDefault();
}

APP.on_over_sharing = function() {
  var share_links = $(this).parent().find(".share_links_wrapper");
  var read_later = $(this).parent().find(".read-later_wrapper");
  if ($(this).find(".read-later_wrapper").length > 0) {
    share_links.hide();
    read_later.show();
  }
  
  if ($(this).find(".share_links_wrapper").length > 0) {
    read_later.hide();
    share_links.show();
  }
}

APP.on_out_sharing = function() {
  $(this).find(".share_links_wrapper").hide();
  $(this).find(".read-later_wrapper").hide();
}


