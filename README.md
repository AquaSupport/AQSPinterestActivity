AQSPinterestActivity
=================

[iOS] UIActivity class for Pinterest

![](http://img.shields.io/cocoapods/v/AQSPinterestActivity.svg?style=flat) [![Build Status](https://travis-ci.org/AquaSupport/AQSPinterestActivity.svg?branch=master)](https://travis-ci.org/AquaSupport/AQSPinterestActivity)

![](https://raw.githubusercontent.com/AquaSupport/AQSPinterestActivity/master/Screencast.gif)

Usage
---

```objc
UIActivity *pinActivity = [[AQSPinterestActivity alloc] init];

UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:pinActivity];

[self presentViewController:activityViewController animated:YES completion:NULL];
```

Accepted `activityItems` Types
---

- `NSURL` (Accepts single for `Image URL`)
- `NSString` (Accepts single for `description`)

Can perform activity when
---

- When Pinterest iOS App is installed.
- At least one `NSURL` is provided.

Setup
---

`AQSPinterestActivity` requires 3-min setup.

1. Register and obtain a Pinterest client ID here.  https://developers.pinterest.com/manage/
2. Setup an URL scheme like `pin83737` where `83737` is your Pinterest client ID. For Pinterest client ID `48090`, you should setup an URL scheme `pin48090`
3. Initialze `AQSPinterestActivity` with `- initWithClientID:` and done!

For further information, see https://developers.pinterest.com/ios/

Combining them, `AppDelegate` will be like as follow.

Installation
---

```
pod "AQSPinterestActivity"
```

Link to Documents
---

https://dl.dropboxusercontent.com/u/7817937/___doc___AQSPinterestActivity/html/index.html

Related Projects
---

- [AQSShareService](https://github.com/AquaSupport/AQSShareService) - UX-improved sharing feature in few line. 

References
---

- Pinterest : https://developers.pinterest.com/ios/
- Pinterest : https://developers.pinterest.com/manage/
