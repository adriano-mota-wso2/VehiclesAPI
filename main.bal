import ballerina/http;

service /vehicles on new http:Listener(8080) {

    resource function get list(string vehicleType) returns json|http:BadRequest {

        if vehicleType is "" {
            return <http:BadRequest>{
                body: {
                    "error": "Type parameter is required"
                }
            };
        }

        if vehicleType == "cars" {
            json[] carsList = [
                {
                    "id": 1,
                    "make": "Toyota",
                    "model": "Camry",
                    "year": 2023,
                    "color": "Silver",
                    "price": 28000
                },
                {
                    "id": 2,
                    "make": "Honda",
                    "model": "Civic",
                    "year": 2023,
                    "color": "Blue",
                    "price": 25000
                },
                {
                    "id": 3,
                    "make": "Ford",
                    "model": "Mustang",
                    "year": 2023,
                    "color": "Red",
                    "price": 35000
                },
                {
                    "id": 4,
                    "make": "BMW",
                    "model": "X5",
                    "year": 2023,
                    "color": "Black",
                    "price": 65000
                },
                {
                    "id": 5,
                    "make": "Mercedes",
                    "model": "C-Class",
                    "year": 2023,
                    "color": "White",
                    "price": 45000
                },
                {
                    "id": 6,
                    "make": "Audi",
                    "model": "A4",
                    "year": 2023,
                    "color": "Gray",
                    "price": 42000
                },
                {
                    "id": 7,
                    "make": "Volkswagen",
                    "model": "Jetta",
                    "year": 2023,
                    "color": "Green",
                    "price": 23000
                },
                {
                    "id": 8,
                    "make": "Nissan",
                    "model": "Altima",
                    "year": 2023,
                    "color": "Orange",
                    "price": 26000
                },
                {
                    "id": 9,
                    "make": "Hyundai",
                    "model": "Elantra",
                    "year": 2023,
                    "color": "Purple",
                    "price": 22000
                },
                {
                    "id": 10,
                    "make": "Kia",
                    "model": "Optima",
                    "year": 2023,
                    "color": "Yellow",
                    "price": 24000
                }
            ];

            return {
                "vehicles": carsList,
                "type": "cars",
                "count": carsList.length()
            };
        }

        if vehicleType == "motorcycle" {
            json[] motorcyclesList = [
                {
                    "id": 1,
                    "make": "Harley-Davidson",
                    "model": "Street 750",
                    "year": 2023,
                    "color": "Black",
                    "price": 7500
                },
                {
                    "id": 2,
                    "make": "Yamaha",
                    "model": "YZF-R3",
                    "year": 2023,
                    "color": "Blue",
                    "price": 5300
                },
                {
                    "id": 3,
                    "make": "Honda",
                    "model": "CBR600RR",
                    "year": 2023,
                    "color": "Red",
                    "price": 12000
                },
                {
                    "id": 4,
                    "make": "Kawasaki",
                    "model": "Ninja 400",
                    "year": 2023,
                    "color": "Green",
                    "price": 5000
                },
                {
                    "id": 5,
                    "make": "Ducati",
                    "model": "Panigale V2",
                    "year": 2023,
                    "color": "Red",
                    "price": 17000
                },
                {
                    "id": 6,
                    "make": "BMW",
                    "model": "S1000RR",
                    "year": 2023,
                    "color": "White",
                    "price": 16000
                }
            ];

            return {
                "vehicles": motorcyclesList,
                "type": "motorcycle",
                "count": motorcyclesList.length()
            };
        }

        return <http:BadRequest>{
            body: {
                "error": "Invalid type parameter. Use 'cars' or 'motorcycle'"
            }
        };
    }
}
