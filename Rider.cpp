class Rider {
private:
    string riderID;
    string name;
    vector<Ride*> requestedRides;

public:
    Rider(string id, string n)
        : riderID(id), name(n) {}

    void requestRide(Ride* ride) {
        requestedRides.push_back(ride);
    }

    void viewRides() {
        for (auto ride : requestedRides) {
            ride->rideDetails();
        }
    }
};
