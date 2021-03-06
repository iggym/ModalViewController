
Modal View Controller App
=====================
A Modal View Controller example.
 
Overview
--------
- version: 0.1.0
 
 
Description
-----------
A Modal View Controller example. There is a presenting view controller and a presented view controller. 
The best practice is for the presenting view controller to dismiss the presented view controller. This requires delegation. The Presented view controller defines a protocol method and a delegate property. The Presenting view controller adopts the `PresentedViewControllerDelegate` protocol. 
You can also pass data back to the presenting view controller. To do this you could add an argument to this method. 

####The Presenting View Controller

![alt presenter](https://raw.github.com/iggym/ModalViewController/master/Docs/PresentingViewController.png)

 ####The Presented View Controller

 ![alt presented](https://raw.github.com/iggym/ModalViewController/master/Docs/PresentedViewController.png)
 
###Interesting Code Snippets

#####Presented View Controller declares the PresentedViewControllerDelegate protocol
```objectivec
@protocol PresentedViewControllerDelegate <NSObject>
- (void)dismissPresentedViewController;
@end
```

#####Presenting View Controller adopts the PresentedViewControllerDelegate protocol
```objectivec
@interface PresentingViewController : UIViewController <PresentedViewControllerDelegate>
@end
```

#####Presenting View Controller implements dismissPresentedViewController
```objectivec
- (void)dismissPresentedViewController
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
```

#####Presented View Controller has a weak reference to the delegate.
```objectivec
@property (nonatomic, weak) id <PresentedViewControllerDelegate> delegate;
```

#####Presented View Controller uses the reference to the delegate.
```objectivec
- (IBAction)didSelectDone:(UIButton *)sender
{
    [self.delegate dismissPresentedViewController];
}
```

#####Prepare for Segue
```objectivec
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PresentedViewController *viewController = segue.destinationViewController;
    viewController.delegate = self;
    
}
```

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