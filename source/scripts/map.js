
$( document ).ready(function() {
    var myMarkers = {"markers": [
        {"latitude": "51.4620", "longitude":"-0.012", "icon": "content/images/googlemap/1.png", "baloon_text": '<a href=""><strong>Volunteers for School Year 2013-14</strong></a>'},
        {"latitude": "50.214", "longitude":"19.273", "icon": "content/images/googlemap/2.png", "baloon_text": '<a href=""><strong>Save The Leftovers - Ocal Resztki</strong></a>'},
        {"latitude": "50.279", "longitude":"19.022", "icon": "content/images/googlemap/2.png", "baloon_text":'<a href=""><strong>Give a Joy - Summer Fun Camp for Terminally Ill Children</strong></a>'},
        {"latitude": "49.5403", "longitude":"18.8709", "icon": "content/images/googlemap/2.png", "baloon_text":'<a href=""><strong>Give a Joy - Summer Fun Camp for Terminally Ill Children</strong></a>'},
        {"latitude": "49.8", "longitude":"15.1", "icon": "content/images/googlemap/1.png", "baloon_text":'<a href=""><strong>Stories of the 20th Century </strong></a>'},
        {"latitude": "49.619", "longitude":"15.581", "icon": "content/images/googlemap/1.png", "baloon_text":'<a href=""><strong>Roma Children Summer Camp Chavorenge Choir</strong></a>'},
        {"latitude": "47.6045", "longitude":"0.4818", "icon": "content/images/googlemap/3.png", "baloon_text":'<a href=""><strong>Get the Refectory Back</strong></a>'},
        {"latitude": "-8.62", "longitude":"116.32", "icon": "content/images/googlemap/3.png", "baloon_text":'<a href=""><strong>The Cemara Yacht</strong></a>'}
    ]
    };

//set up map options
    $("#mapgoogle").css({"width":"100%", "height":"300", "margin-bottom":"8px"}).mapmarker({
        zoom : 1,
        center : 'Europe',
        markers : myMarkers
    });

});

