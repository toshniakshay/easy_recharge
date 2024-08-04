### Easy Recharge

- Mono repo built for flutter app development
- Reasons behind choosing this architechture
    - Since code generate is used heavily in this project so single package application will bloat as we scale and as a result application will take huge amount of time in building the code generation
    - Due to this each package is an application with its own contex
    - So it can be run independantly and can be pluged to any part of the application

 - Folder structure
     - core
         - It contains models and usecases required for the business.
         - Since this app is very small so we have kept all the dependencies of usecases in in single package
         - In an ideal world feature specific use cases will do inside feature packages and common use cases which are shared across the features can be put in here
         - It also contains models package which are DTOs and also has the capability to parse JSON and create JSON request
     - easy_recharge
         - This is the orchestrator of the app
         - It has all the dependencies and works as a glue to make a running application from all components
         - App folder user Auto Route to navigate from feature to feature
         - Also it constructs the dependency graph for the entire application
     - feature
         - These can be independant journeys/products built as we go along
         - features are applications in their own right
         - These are built with the help of core and utility packages.
     - utility
         - prelude
             - Small package for the API foundation and other utilities
         - app_di
             - Lays out foundation for the application Dependency injection which makes application scalable and easy to inject objects across
         - design_system
             - Perhaps most important folder of the application it contains theme, colors, reusable components
        
