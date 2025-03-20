Object subclass: Driver [
    | driverID name rating assignedRides |

    Driver class >> newWithID: anID name: aName rating: aRating [
        ^self new
            driverID: anID;
            name: aName;
            rating: aRating;
            assignedRides: OrderedCollection new;
            yourself.
    ]

    driverID: anID [ driverID := anID ]
    name: aName [ name := aName ]
    rating: aRating [ rating := aRating ]
    assignedRides: aCollection [ assignedRides := aCollection ]

    addRide: aRide [
        assignedRides add: aRide.
    ]

    getDriverInfo [
        ^'Driver ID: ', driverID, ' | Name: ', name, ' | Rating: ', rating asString, ' | Rides Completed: ', assignedRides size asString.
    ]
]
