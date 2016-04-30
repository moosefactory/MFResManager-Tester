
![MacDown logo](https://www.moosefactory.eu/resources/MooseFactoryRoundLogo.png)

MooseFactory Software  
<https://www.moosefactory.eu>

# MFResManager Tester
**Test Application for the MFResManager for iOS**

1 - Download the MFResManager framework : 

2 - Add it to the project !


## Introduction
---------------
**MFResManager** is a compact iOS Utility Library providing an alternate way to access ressources in an application.

This application demonstrates some feature.
It's a tabbed app with three screens :

###MFResGetter Tester View

This screen demonstrate the usage of the basic MFResGetter class.

It simply tries to load some images in the bundle and display them.
Change the settings to see the various behaviors.

![ScreenShot1](https://www.moosefactory.eu/resources/MFResGetterTester_Screenshots/MFResGetter.png)


###MFKeyResGetter Tester View

This screen demonstrate the usage of the MFKeyResGetter class.

- It loads some images and localized texts by accessing the table of content file ( toc.plist )
- It loads localized interface texts via a dedicated instance of MFKeyResGetter

*Note that images can be localized as well, the same way texts are. This is not demonstrated in this sample*

Change the settings to see the various behaviors.

![ScreenShot1](https://www.moosefactory.eu/resources/MFResGetterTester_Screenshots/MFKeyResGetter.png)

###Access the logs

Launch iTunes, select your device and go down the apps section.

In the AppSharing section, select 'MFResGetter Tester'. The log files are here

![ScreenShot1](https://www.moosefactory.eu/resources/MFResGetterTester_Screenshots/iTunesSharing.png)

MFResGetter.log     : Misc errors, NULL urls, file not founds…
Missing Keys.log    : Query with missing keys in the table of content
MissingImages.log   : Missing images

This let you run an app session, and collect all media access issues much faster.

*Note that this framework will still evolve - For example, a missing image should be only logged once.. Look forward to upcoming versions.*

##Developers
---------------

###Contribution
---------------

If you wish to contribute, check the CONTRIBUTE<CONTRIBUTE.md> file for more information.

The point of this library is to keep a tight scope, be as fast and as reliable as possible. So if you plan to add many features, please do your way with your own branche.

If you think a feature is a must-have, propose it!

***

###License

MFResManager Tester is available under the MIT license. See the LICENSE file for more info.

***

##Author

Tristan Leblanc <tristan@moosefactory.eu>

Twitter     :	<https://www.twitter.com/tristanleblanc>  
Google+     :	<https://plus.google.com/+TristanLeblanc>  

GitHub      :   <https://github.com/moosefactory>

***

