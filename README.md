# comidas_app

This project contains a main page that shows the main dish and the total dishes, and a page that shows the description at the same time allows you to add to cart, additionally allows you to see what you have ordered and pay for it.

# About this Proyect

It is designed under the clean architecture, divided in 4 layers:

1. The domain layer is the one that shows all the models created for the project.
2. The infrastructure layer we have the extraction of data coming from our server as well as the repositories with their events.
3. The logic layer we have the state managers used in the application, in this case we have bloc and cubit.
 4. The presentation layer is where the pages, routes and widgets used in the application are located.

## Getting Started

Version flutter 2.10.1

1. flutter pub get
2. flutter packages pub run build_runner build --delete-conflicting-outputs
3. Flutter run
