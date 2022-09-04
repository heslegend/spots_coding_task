# spots_coding_task

A simple flutter app that allows you to browse campsites for camper vans.

![](app_preview.gif)

As mobile devices are the primary target of this app, UI and UX are optimized for smaller screens.
For the best experience it is therefore recommended to test on a mobile device (android or iOS).

However, if you just want to take a quick look at the app, you can check out its web version [here](https://heslegend.github.io/spots_coding_task/).
The latest master is automatically deployed on github pages.

## Current features
The app currently consists of two pages: The Campsites Page and the Campsite Detail Page.
The Campsites Page allows to browse through the offered campsites, which are ordered by alphabet.
In the future it will be also possible to filter campsites based on different parameters, like e.g. host language, price or location.

When clicking on a campsite on the Campsite Page, the Campsite Detail Page is opened. 
This page provides further information about the campsite.

## Data Source
The campsites data is provided by a mock JSON api.
A simple postman collection for the mock api can be found at the root of the project.

Because the mock api currently only serves cat pictures, the provided image urls are slightly adapted.

## State Management
Riverpod is used for State Management. All state objects are immutable and are generated with freezed.

## How to install
For the best experience, make sure to install the app in the release mode. (```flutter run --release```)

More information on how to run a flutter app can be found [here](https://docs.flutter.dev/get-started/test-drive).
More information on the difference between release and debug mode can be found [here](https://docs.flutter.dev/testing/build-modes).

If you want to build the web version by yourself, make sure to use the html web renderer.
Otherwise the images in the app will fail to load.
You can do so by using this command: ```flutter run -d chrome --web-renderer html```
For further information please check https://docs.flutter.dev/development/platform-integration/web/web-images
