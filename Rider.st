Object subclass: Rider [
    | riderID name requestedRides |

    Rider class >> newWithID: anID name: aName [
        ^self new
            riderID: anID;
            name: aName;
            requestedRides: OrderedCollection new;
            yourself.
    ]

    riderID: anID [ riderID := anID ]
    name: aName [ name := aName ]
    requestedRides: aCollection [ requestedRides := aCollection ]

    requestRide: aRide [
        requestedRides add: aRide.
    ]

    viewRides [
        requestedRides do: [ :ride | Transcript show: ride rideDetails; cr ].
    ]
]
