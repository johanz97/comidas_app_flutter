# comidas_app

This project contains a main page that shows the main dish and the total foods, and a page that shows the description at the same time allows you to add to cart, additionally allows you to see what you have ordered and pay for it.

# About this Proyect

It is designed under the clean architecture, divided in 4 layers:

1. The domain layer is the one that shows all the models created for the project.
2. The infrastructure layer we have the extraction of data coming from our server as well as the repositories with their events.
3. The logic layer we have the state managers used in the application, in this case we have bloc and cubit.
4. The presentation layer is where the pages, routes and widgets used in the application are located.

## IOS

<p align="center">
<img src="https://user-images.githubusercontent.com/25967495/167316713-5e20d478-1188-427f-9aad-60ab78c95841.png" width="250" height="500">
<img src="https://user-images.githubusercontent.com/25967495/167316721-97ee3bca-8f0d-45ed-ae16-71901a81e53e.png" width="250" height="500">
<img src="https://user-images.githubusercontent.com/25967495/167316736-5d8ad9e8-f353-4fda-99d1-a17b8de1472a.png" width="250" height="500">
</p>

## Android

<p align="center">
<img src="https://user-images.githubusercontent.com/25967495/167316795-30aa7e39-32c1-43d1-81d8-71b3347131dc.png" width="250" height="500">
<img src="https://user-images.githubusercontent.com/25967495/167316817-122fba1a-b478-41f4-bfd8-1e7cab93f914.png" width="250" height="500">
<img src="https://user-images.githubusercontent.com/25967495/167316832-24efcf2c-6145-4700-95ba-7f980f7406b0.png" width="250" height="500">
</p>

## Getting Started

Version flutter 2.10.1
```console
# flutter pub get
```
```console
# flutter packages pub run build_runner build --delete-conflicting-outputs
```
```console
# Flutter run
```
