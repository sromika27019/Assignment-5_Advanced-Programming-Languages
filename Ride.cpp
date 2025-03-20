#include <iostream>
#include <string>
using namespace std;

class Ride {
protected:
    string rideID;
    string pickupLocation;
    string dropoffLocation;
    double distance;

public:
    Ride(string id, string pickup, string dropoff, double dist)
        : rideID(id), pickupLocation(pickup), dropoffLocation(dropoff), distance(dist) {}

    virtual double fare() {
        return distance * 1.5; // Base fare
    }

    void rideDetails() {
        cout << "Ride ID: " << rideID << " | Pickup: " << pickupLocation
             << " | Dropoff: " << dropoffLocation << " | Distance: " << distance
             << " | Fare: " << fare() << endl;
    }
};
