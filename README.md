# Testla Motors

![testla logo](docs/testla_logo.png "Testla Logo")

## Ruby Terminal App

by Tyler Hall

Link to the repository - [https://github.com/Impicklerick12/virtual_car_dealership](https://github.com/Impicklerick12/virtual_car_dealership "Tyler's Github Repository")

* [Development Log](https://github.com/Impicklerick12/virtual_car_dealership/blob/master/docs/development_log.md "Development Log Link")

## About the App

### Description

The Testla Motors app is a representation of an virtual car dealership. It is a MVP that allows the user to shop through different Testla models, customise them, and confirm their purchase.

![testla main menu](docs/testla_main_menu.png "Testla Main Menu")

The app was created in a time of uncertainty, where a large portion of the population are confined mostly to their homes with minimal access to physical shops and industries. Online interaction with customers is critical, and a solutions needs to be developed which allow any potential customers to shop from home with clarity and confidence. The Testla Motors app provides a platform where interested car enthustiasts are able to browse the Testla models, view the different features, create and customize an order, and view any existing orders. All from the comfort of their living room!

![testla order confirmation](docs/testla_order_confirmation.png "Testla Order Confirmation")

### Functionality

Once the app has been opened on the users system, it will prompt the user for their name. This is to provide a personalised service to all potential customers. Once the user has entered their name, they will be directed to a menu screen which will provide them with several options. These options include:

* Placing a new order
* View an existing order
* Information on Testla Motors and vehicles
* Help/instructions screen
* Quit the app

When the user chooses to place a new order, they are presented with the different models of Testla vehicles, and prompted to choose one to continue with the purchase. Following their Testla model of choice, they are provided with the model specifications, and are then prompted to choose a colour. Their order is then created.

If the user has placed an order, they are able to view it from the main menu via the ‘View an existing order’ option. Otherwise they will be notified that there is no order confirmation yet, and that they will need to return to the menu to place a new order. 

We want to provide the user with as much information as possible about Testla Vehicles and the company. The help and information page advises the user on how to navigate through the app, and provide the specifications on each model.

Once the user has finished using the app, they may quit at any time, where a personalised message will be displayed to them.

The Testla Motors app was designed to create a platform where user input and error is minimised. It was our mission to create a step-by-step process where the user is able to follow along easily simply using the enter and arrow keys. The use of the TTY-Prompt gem allowed us to simplify menu and option screens, minimizing user text input, and showing a visual representation of all options. 

### Installation Instructions

1. Firstly, you will need to ensure that ruby is installed on your computer. [Download ruby here](https://www.ruby-lang.org/en/).

2. Download the zip file or clone this repository to your local computer.

3. The Bundler Gem is also required to run the application. If you do not already have it installed, you can install it using the following command:

    `> gem install bundler`

4. Navigate to the location of the `/src` folder in  this repostitory on your computer. To install the gems used in this project, type the following command:

    `> bundle install`

5. Now the app is ready to run! To run the app, enter the following command to run the main file:

    `> ruby main.rb`

6. Alternatively, you may run the app with the insertion of your first name as a user. Eg.

    `> ruby main.rb varsha`

## Planning Process and Design Implementation

The planning process started with a brainstorming session to provide some possible applications that would satisfy the requirements of the rubric, yet also provide a challenge for myself. Initially I was focused on a virtual garden application, which would require the user to maintain a garden and provide plants with care. Another alternative was a quiz application, where users would need to complete several topics in order to complete the game. 

Eventually I settled on the virtual car dealership application as it required multiple classes and inheritance, and a variety of conditional control structures. The first step was to determine what the purpose of the application was, then move on to what the framework would look like, and finally how the user would navigate through the menus. 

Firstly I created my parent class, Vehicle, and provided its initilaized attributes which incluuded model, price and feature. Next was the creation of the sub classes, which individually included information for each attribute initialized in Vehicle. I then set out to create a Stock and Order class, which separately would house a hash containing the available stock, and then the selected menu items as the order. In each class, I needed to create methods to add vehicles, print menus, and eventually print the order confirmation. 

Once I was able to test each feature and then run through the whole order process in one loop, I began to add the main menu and other visual features. The main menu was created using the TTY-Prompt gem, which would produce a value that I interpreted using a case statement. The choice of model menu was also created using the same gem, yet the value selected from the menu was compared to a hash I created, which when the key was selected, the value would be added to the order hash (the model class object e.g. Speedster.new).

It took a little time and effort to add the colour attribute to each model selection. Again I used the TTY-Prompt gem to create the list of colour options, then attached the resulting selection to the model object using a method created in the parent class. This allows the user to loop through the order process several times, each time selecting a new model and different colour.

The troubles I came across when implementing my application design revolved around refactoring/adjusting the code to suit the gems and understanding the input and output of each. In hindsight, I could have created each menu with the gem from the beginning, rather than hard coding the menu options and then later altering to suit the gem requirements. 

### Flow Chart

![first draft flowchart](docs/first_draft_flowchart.JPG "First Flowchart Draft")

![second flowchart](docs/flowchart_1.jpeg "Second Flowchart Draft")

Adjusted flowchart that removes the optional extras options, and adds in the return_to_menu method that requires the user to press enter to proceed.

NOT WORKING
![third flowchart](docs/updated_flowchart.jpeg "Final Flowchart")

### Implementation Plan (Trello)

I used Trello as a project manager application, which included adding 'cards' for all the features that needed implementation as well as optional features and documentation items. Cards were labelled according to their nature (coding or documentation) and also by their importance (P1, P2, P3). Additional items were added close to the submission date, for possible future implementation.

![trello day 1](docs/trello_board_day_1.png "Trello Board Day 1")

![trello day 2](docs/trello_board_day_2.png "Trello Board Day 2")

![trello day 3](docs/trello_board_day_3.png "Trello Board Day 3")

![trello day 4](docs/trello_board_day_4.png "Trello Board Day 4")

![trello day 5](docs/trello_board_day_5.png "Trello Board Day 5")

![trello day 6](docs/trello_board_day_4.png "Trello Board Day 6")

### Testing

Testing was done at every stage in the application construction process. Initially it was quite simple to manually test that features/classes/methods were producing the expected output. As the project went along and the code was refactored, I found it more difficult to determine *what* needed testing and what user errors were simply illiminated by the use of the TTY-Prompt gem. 

![testla testing](docs/testla_testing.png "Testa Testing Spreadsheet")

### Code Structure

    `> main.rb`

The main file that controls the application flow and user_name entry

    `> classes/vehicle.rb`

Holds the data for each vehicle model. Each model is initiated, inheriting the variables from the parent vehicle class.


    `> classes/dealership.rb`

The dealership class, which when initiated provides the contact information for the help menu.

    `> classes/order.rb`

The file that processes the order information and display.

    `> classes/stock.rb`

The stock class that includes the information on each model that has been initiated.

    `> classes/user.rb`

File that contains the user information. It is initiated from the main screen, provided a name attribute, and contains the number of orders.

    `> methods/helper_methods.rb`

A handy file that allows access to various methods that are called throughout the application.

    `> methods/banners.rb`

Contains methods that create the visual banners that are displayed.

### Gems

* TTY-Prompt: Enabled the creation of clean listed options and menus. This was especially handy in minimising user input error, as only listed options are able to be selected.

![testla main menu](docs/testla_main_menu.png "Testla Main Menu")

* Colorize: Allowed strings to be coloured, providing an extra visual element to the displays.

* Progress-Bar: Another visual element to display the creation of an order. Adds authenticity to the order confirmation process.

![progress bar](docs/testla_loading_bar.png "Testla Loading Bar")

* Faker: Was used extensively to provide information that did not require hard coding. The dealership contact information is generated using Faker variables, and the user name will be generated at random if the user fails to provide a name at application startup.

![fake contact information](docs/testla_contact_info.png "Fake Contact Information")

### Future Planning and Implementation

Currently, the Testla Motors app can generate an order from user input, allowing for a choice of model and vehicle colour. This input it tightly restricted to simple arrow key navigation and the enter/return key. It was designed with minimal error generation in mind. Orders are then saved and are accessable from the main menu. Multiple ruby gems allowed customization of menus and options, and to provide a nice visual presentation of the application.

In the future I would like to add the ability to customize each order extensively. Following a step-by-step order process that will provide alternative upgrades and features, that will be added to the total order. I belive this implementation would require adjustments to the vehicle class, creating a new hash of optional extras. It would also be nice for a user to go back one step, or to the beginning of the order process, if they have made a mistake. One implementation I would have liked to add would be the ability to either remove an exisiting order, or adjust it cumpletely. This would require an extension loop following from the exisiting order menu option.