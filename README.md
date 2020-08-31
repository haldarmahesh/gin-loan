# contra_loan_app

## How to run?

Follow the flutter documentation, to setup sdk, and dev environment to launch the app.

# App details

This app is architedted using the clean architecture pattern. The structure is as follows:

## 1) core

This contains all the core capabilities for the application, e.g http client, env config, platform specific stuffs like network checker, etc.

These core capabilities will be used by data layer and presentation layer e.g http client by remote data source, network info by repository layer, and config by presentation and data layer.

## 2) domain

This is innermost layer and will contain the core business logic i.e. usecases and business object i.e entities, the use case depends on the contract of repository (not implementation).

## 3) data

The data layers contains the repository implementation and this layer is closest to actual data sources and is responsible for communication with data sources.

The data layer returns the models and not entities and the model also contains the fromJson and toJson mapper.

Note: We don’t have an extra mapper class, we are just going to leverage the named constructor by dart to map our data set from one form to our models. toJson and fromJson.

## 4) presentation

This layer contains all the information about the UI and everything to show to the end user customer. The presentation layer also contains the bloc which is the state management and often termed as brain of UI.

The presentation layer interact via domain layer, i.e entities and use cases.

## Bloc Pattern

The bloc is the state management for our flutter app.

This is responsible for reacting to user’s event and fetch or set data to our data layer, via usecases.

## Things to do, that are pending

- Dependency injector setup
- Handle negative scenraios for data massaging and http client
- Add global loader
- Add global exception handler
- Add unit test cases
- The integration of location plugin to generate map
