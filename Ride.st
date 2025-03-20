Object subclass: Ride [
    | rideID pickupLocation dropoffLocation distance fare |

    Ride class >> newWithID: anID pickup: aPickup dropoff: aDropoff distance: aDistance [
        ^self new
            rideID: anID;
            pickupLocation: aPickup;
            dropoffLocation: aDropoff;
            distance: aDistance;
            yourself.
    ]

    rideID: anID [ rideID := anID ]
    pickupLocation: aPickup [ pickupLocation := aPickup ]
    dropoffLocation: aDropoff [ dropoffLocation := aDropoff ]
    distance: aDistance [ distance := aDistance ]

    fare [
        ^distance * 1.5. "Base fare calculation"
    ]

    rideDetails [
        ^'Ride ID: ', rideID, ' | Pickup: ', pickupLocation, ' | Dropoff: ', dropoffLocation, ' | Distance: ', distance asString, ' | Fare: ', self fare asString.
    ]
]
