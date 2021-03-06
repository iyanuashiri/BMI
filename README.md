# How to Build a BMI App Using Flutter

## Introduction

This tutorial is targeted towards beginners that wnat to learn how to build mobile apps with the Flutter framework.

Before we delve fully into this tutorial, what is Flutter?

Flutter is a framework developed by Google for building crossplatform mobile applications. This basically means that the same codebase will build an app for both Android OS and IOS.

There is more. Flutter can even be used to build desktop applications, web applications etc. 

In this tutorial, you will learn how to build a BMI app from scratch

## Development Environment

You need to setup a development environment and install the required packages that are needed for us to follow along this tutorial.

### What Tools are we using

Flutter - The Google developed framework

Android Studio - This tool make it possible for flutter to complie your codebase into an Android app. You will need an equivalent of this for IOS calld XCode. It is only available ON Macbooks.

Visual Studio Code - A lightweight text editor

### Installation

If you havent, you need to install Flutter on your system.

**For Windows users,** visit the link below to setup flutter, Android studio, and vscode on your system

[Windows](https://flutter.dev/docs/get-started/install/windows)

**For Mac users,** visit the link below to setup flutter, Android studio, and vscode on your system

[Mac](https://flutter.dev/docs/get-started/install/macos)

**For Linux users,** visit the link below to setup flutter, vscode, Android studio, and vscode on your system.

[Linux](https://flutter.dev/docs/get-started/install/linux)

For this specific tutorial, you can use another tool provided by Google called [DartPad](https://dartpad.dev). This provides a flutter development environment on the web. Currently, it can't be used to build big apps, but it is useful for your BMI app.

If you are having difficulty setting up your development environment, you can follow along this tutorial using [DartPad](https://dartpad.dev).

## Creating your BMI APP

### Step 1 - Create a Starter Flutter App

In this step, you will create a flutter starter app. This is a boilerplate code provided by the flutter framework.

In VS Code, click on **View** in the menu bar. You will see a dropdown menu, click on **Command Palette**. Type "flutter" into the search bar and click on **Flutter: New Project**. Type the name of your project, in this case, "check_bmi" and press **Enter**. You will be expected to select a folder or create a new folder. Choose to create a new folder and call it "flutter_projects". After this, flutter will help bootstrap a flutter project for you with the name "check_bmi" that you have specified.

When your "check_bmi" project is ready, you will see some folders and files on the left hand side of VS Code. What you need to concern yourself with is the `lib` folder, which contains the `main.dart` file. 

**NB**: If you are using [DartPad](https://dartpad.dev), you don't need to concern yourself with steps above. Open DartPad in your browser, click on **New Pad**


Click on **OK**


Click on **Flutter**




For both users of VS Code or DartPad, you will find a boilerplate code in the `main.dart` file. That code is the starter code for a flutter app. In the next step, you will have to delete the boilerplate code in `main.dart`, because you will not be needing it. **Delete the code in `main.dart`**

*** Understanding Flutter Widgets

Everything in Flutter is a widget. 

### Step 2 - Create a Stateless Widget


### Step 3 - Create a Stateful Widget


### Step 4 - Manage Forms and Accept User Inputs

### Step 5 - Add State Management