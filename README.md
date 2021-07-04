# 👷🔧🔩 Flutter Starter Architecture (MVVM without Firebase and Hive)

My custom starter project for Flutter apps.

I was looking for a simple way to build Flutter app in a [*scalable and clear way*](https://www.businessofapps.com/insights/why-app-scalability-is-important-and-why-you-should-be-prepared-for-it-from-start/#:~:text=Scalability%20is%20the%20function%20of,features%20will%20cause%20a%20gridlock.)   way to operate. So I've spent a little to search for how to implement an MVVM architecture in a proper and efficient way for scalable apps. This is the first result of my research. I use it for two projects now.
This one provide an MVVM architecture powered by [get_it](https://pub.dev/packages/get_it) and [provider](https://pub.dev/packages/provider).
This work was mainly inspired by the work of [Filledstacks](https://github.com/FilledStacks/flutter-tutorials).

> ## 👀 Overview

I have made:

- a [_helpers_](lib/helpers) folder where I have put all the utilities of the project such as constant values, dart enumerate, extensions, theming, and other general utilities.
- a [_models_](lib/models) folder where I have put all the data's classes representation.
- a [_services_](lib/services) folder where I have put all folders relative to data's storing and fetching base on local storage, firebase, or API.
- a [_viewmodels_](lib/viewmodels) folder where I put all the viewmodels related files. In the easiest way, I call viewmodel a bridge between the models, services, and views. Their job is to handle the business logic of the view they are related to in order to make the views part safe from anything non-relevant to UI.
- a [_views_](lib/views) folder where are stored the UI part of the application. Each view/page/screen of the application is put here in differents folders. Those folders contain the base file of the view and a widgets folder where are stored the widgets which are used **only** on this view. The **global** widgets are located in the [widgets](lib/views/widgets) folder.

I have also added a base class for viewmodels [here](lib/viewmodels/base_viewmodel.dart). All the next viewmodels you'll write should inherit from the BaseViewModel class. There is also a BaseView widget [here](lib/views/base_view.dart) to mix the access easily to the base viewmodel proper to each class.

At the root of the app, you will see the [locator.dart](lib/locator.dart) file where I registered an instance of each service and viewmodel in order to use them efficiently in the whole app. You will also find the [routes.dart](lib/routes.dart) where the named routes of the app are stored in the AppRouter class.

> ### 💥 Future

I will create new branches to add more base project with various kind of scalable architecture.

> ## :electric_plug:  Plugins inside

The repository contains based packages for provider, and get_it

> ## :sunglasses:  Author(s)

**Junior Medehou** [![Twitter Follow](https://img.shields.io/twitter/follow/juniormedehou_?label=Follow&style=social)](https://twitter.com/juniormedehou_)

> ### Getting Started with Flutter

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
