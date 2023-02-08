// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"
//= require semantic-ui
//= require_self
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree



// scroll_bottom = function() {
// 	if ($('#messages').length > 0){
// 		$('#messages').scrollTop($('#messages')[0].scrollHeight);
// 	}
// }

//  $(document).on('turbolinks:load', function(){
// 	$(".ui.dropdown").dropdown();
//    scroll_bottom();
//    })



// This is for dropdown in menubar
$(".ui.dropdown").dropdown();

// This is used to close flash messages

	 $('.message .close')
	 .on('click', function() {
		 $(this)
		   .closest('.message')
		   .transition('fade');
		  });









