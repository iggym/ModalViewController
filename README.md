
Modal View Controller App
=====================
A Modal View Controller example.
 
Overview
--------
- version: 0.1.0
 
 
Description
-----------
A Modal View Controller example with comments. 
There is a presenting view controller and a presented view controller. 
Best practice suggests is for the presenting view controller to dismiss the presented view controller which means setting up delegate protocol.
The PresentedViewController class defines a protocol that all users of the class must adopt. It has a single mandatory method that will be called when the presented view controller needs to be dismissed. 

You can also pass data back to the presenting view controller. To do this you could add an argument to this method. The public interface definition of the class includes a weak reference to the delegate.

The done button in the presented view controller is then wired to call the following action method when it is touched:
    - (IBAction)didSelectDone:(UIButton *)sender
{
    [self.delegate dismissPresentedViewController];
}


###The Presenting View Controller

![alt presenter](https://raw.github.com/iggym/ModalViewController/master/Docs/PresentingViewController.png)
 

###The Presented View Controller

 ![alt presented](https://raw.github.com/iggym/ModalViewController/master/Docs/PresentedViewController.png)
 
Requirements
------------
- Xcode 5
 
Compatibility
-------------
- Xcode 5
 
Installation Instructions
-------------------------
Download, unzip, open in Xcode
 
Uninstallation
--------------
delete the directory
 
Support
-------
No Support.
 
Contribution
------------
Any contribution is highly appreciated. The best way to contribute code is to open a [pull request on GitHub](https://help.github.com/articles/using-pull-requests).
 
Developer
---------
@iggym
 
License
-------
[OSL - Open Software Licence 3.0](http://opensource.org/licenses/osl-3.0.php)
 
Copyright
---------
(c) 2013 iggym