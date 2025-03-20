#include <vector>

class Driver {
private:
    string driverID;
    string name;
    double rating;
    vector<Ride*> assignedRides;

public:
    Driver(string id, string n, double r)
        : driverID(id), name(n), rating(r) {}

    void addRide(Ride* ride) {
        assignedRides.push_back(ride);
    }

    void getDriverInfo() {
        cout << "Driver ID: " << driverID << " | Name: " << name
             << " | Rating: " << rating << " | Rides Completed: "
             << assignedRides.size() << endl;
    }
};
