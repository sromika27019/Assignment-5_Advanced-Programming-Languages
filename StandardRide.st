Ride subclass: StandardRide [
    fare [
        ^distance * 1.5. "Standard fare"
    ]
]

Ride subclass: PremiumRide [
    fare [
        ^distance * 2.5. "Premium fare"
    ]
]
