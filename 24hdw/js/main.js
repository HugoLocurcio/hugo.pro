$(document).ready(function(){

    var description = $('.product-info-left');
    $('.overlay').each(function(){
        $(this).click(function(){
            $(this).toggleClass('test');
            if($(this).hasClass('test')){
                $(this).parent('.product').find('.product-info-left').show();
            }
            else{
                $(this).parent('.product').find('.product-info-left').hide()
            }
        })
    });

    $('#slider').carouFredSel({
        width: '100%',
        items: {
            visible: 1
        },
        scroll: {
            items: 1,
            duration: 3000,
            timeoutDuration: 1500,
            fx: 'crossfade'
        }
    });

    // execute
    (function() {
        // map options
        var options = {
            zoom: 6,
            center: new google.maps.LatLng(47.078038,2.3983034), // centered US
            mapTypeId: google.maps.MapTypeId.TERRAIN,
            mapTypeControl: false
        };

        // init map
        var map = new google.maps.Map(document.getElementById('map-canvas'), options);

        // NY and CA sample Lat / Lng
        var southWest = new google.maps.LatLng(43.4843995,0.4610646);
        var northEast = new google.maps.LatLng(49.104853,6.196406);
        var lngSpan = northEast.lng() - southWest.lng();
        var latSpan = northEast.lat() - southWest.lat();

        for (var i = 0; i < 40; i++) {
            // init markers
            var image = 'media/pin_mini.png';
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(southWest.lat() + latSpan * Math.random(), southWest.lng() + lngSpan * Math.random()),
                map: map,
                icon : image,
                title: 'Click Me ' + i
            });

            (function(marker, i) {
                // add click event
                google.maps.event.addListener(marker, 'click', function() {
                    infowindow = new google.maps.InfoWindow({
                        content: 'Genki Coffee'
                    });
                    infowindow.open(map, marker);
                });
            })(marker, i);
        }
    })();
});
