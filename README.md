# QA-Project

# User Notes app by Nahid Ismat

# Contents

• Brief

• Architecture

• Tracking

• Risk assessment

• Testing

• Design


# Brief

This app is for the DFE/QA cloud specialism final project. 
The objective of this project is to achieve the following:

    • To create a multi-tier web application that demonstrates CRUD functionality.
    • To utilise containers to host and deploy the application.
    • To create a continuous integration (CI)/continuous deployment (CD) pipeline that will automatically test, build and deploy the application.

The application must consist of two services:

    • A frontend service that uses templating to host and serve the web pages with information from the database. This information is retrieved from the backend API service.

    • A backend API (Application Programming Interface) that interacts with the database via requests to a RESTful API (i.e. receives GET, POST, PUT and DELETE HTTP requests) to create, read, update and delete data.

To achieve these requirements I have built an app that allows the user to sign up/login which will be added to the database, write notes that will be added to the database and delete these notes.This satisfies the CRUD Functionality.


Below is my ERD, showing a one-to-many relationship:



