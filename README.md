ProgressImageView
=================
A simple UIImageView subclass that adds functionality to handle progress.

<img src="https://raw.githubusercontent.com/sqor/ProgressImageView/master/example.gif">

Setup
-----
Drag the **ProgressImageView.swift** file into your project.

Usage
-----
Just drag a simple UIImageView into your Storyboard/XIB file and under the Identity Inspector replace its class by **ProgressImageView**.
Once done that, you can set its custom properties through the Attributes Inspector, since ProgressImageView is [IBInspectable/IBDesignable](http://nshipster.com/ibinspectable-ibdesignable/).

The key property to use is *progress*, which is a CGFloat value that goes from 0 to 1. 

A typical case of use is, for example, modifying that value inside a progress callback closure of an image upload.