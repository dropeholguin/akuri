jQuery(document).ready(function($) {

    var placeSearch, autocomplete;

    function initAutocomplete() {
        //input = document.getElementById('autocomplete')
        var elm = document.getElementsByClassName('autocomplete');
        var options = {
              types: ['cities'],
              componentRestrictions: {country: 'us'}
            };
        $('.autocomplete').each(function(i, input) {
          var autocomplete = new google.maps.places.Autocomplete((input));
                // before it was: 'geocode'
                // possible addition: , {types: ['establishment']}

            // When the user selects an address from the dropdown, populate the address
            // fields in the form.
            //autocomplete.addListener('place_changed', fillInAddress);
            autocomplete.addListener('place_changed', function() {
                fillInAddress($(input), this);
            });
        });

    }


    // [START region_fillform]
    //function fillInAddress() {
    function fillInAddress(input, autocomplete) {
        window.adit = autocomplete;
        // Get the place details from the autocomplete object.
        var componentForm = {
            street_number: 'short_name',
            route: 'long_name',
            locality: 'long_name',
            administrative_area_level_1: 'long_name',
            postal_code: 'short_name',
            country: 'long_name'
        };

        //console.log(input)
        var place = autocomplete.getPlace();
        var geocode = place.geometry.location;
        var name = place.name;

        var $parent = input.closest('fieldset');
        $parent.find('#title').val(place.name);
        $parent.find('#longitude').val(geocode.lng());
        $parent.find('#latitude').val(geocode.lat());
        $parent.find('#place_id').val(place.place_id);

        for (var component in componentForm) {
            $parent.find('#'+component).val('');
            $parent.find('#'+component).attr('disabled', false);
        }

        $parent.find('#location_confirmation div').replaceWith("<div class='alert alert-success green-300'><button type='button' class='close' data-dismiss='alert'>×</button><p><strong>Just to Confirm:</strong><br>"
            + place.name + "<br/>"
            + place.formatted_address
            + "</p></div>" );

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.

        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
                var val = place.address_components[i][componentForm[addressType]];
                $parent.find('#'+addressType).val(val);
            }
        }
    }
    // [END region_fillform]

    // [START region_geolocation]
    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.


    function geolocate() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
            var geolocation = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            var circle = new google.maps.Circle({
                center: geolocation,
                radius: position.coords.accuracy
            });
            autocomplete.setBounds(circle.getBounds());
            });
        }
    }

    // [END region_geolocation]

    initAutocomplete();
    $(document).on('click', 'form .add_fields', initAutocomplete);

});
