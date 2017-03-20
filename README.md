# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Luis Rocha

Time spent: 4 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
* It seems that the pre-work instructions is using an older version of Xcode.
** `NSUserDefaults` is now `UserDefaults`
** I used ` UserDefaults.standard` instead of `NSUserDefaults.standardUserDefaults()`
** I used ` defaults.integer(forKey: "some_key")` instead of `defaults.integerForKey("some_key")`
** `UIViewController` override methods are `override func viewWillAppear(_ animated: Bool)` instead of `override func viewWillAppear(animated: Bool)`


## License

    Copyright 2017 Luis Rocha

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
