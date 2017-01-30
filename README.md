# Qiscus SDK iOS Sample

## Install Qiscus SDK

You need to use `pod` to install Qiscus SDK. 

Podfile file : 

```
target 'SampleSDK' do
# Comment this line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

# Pods for SampleSDK
pod "Qiscus"

end
```


## Initiate Qiscus SDK in your project 

To initiate Qiscus SDK, you need to import Qiscus and then add this in your code everywhere you want

```
Qiscus.setup(withAppId: YOUR_APP_ID, 
userEmail: CURRENT_USER_EMAIL, 
userKey: CURRENT_USER_PASSWORD, 
username: CURRENT_USER_USERNAME, 
avatarURL: CURRENT_USER_AVATAR_URL, 
delegate: self
)
```
You can put above code in (`AppDelegate`, `didFinishLaunchingWithOptions`), your `loginView`, or `Main-View`

For example : 
```
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
// Override point for customization after application launch.

let viewController = ViewController()
let navigationController = UINavigationController(rootViewController: viewController)

Qiscus.setup(withAppId: "QISME" 
userEmail: "081111111111@qiscuswa.com", 
userKey: "passKey", 
username: "Sample User",
avatarURL: "https://qiscuss3.s3.amazonaws.com/uploads/36976206a8b1fd2778938dbcd72b6624/qiscus-dp.png",
delegate: self)

self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
window?.rootViewController = navigationController
window?.makeKeyAndVisible()

return true
}
```
Note: Don't forget to add usage description for camera, photo library and microphone to your info.plist
![alt tag](https://res.cloudinary.com/qiscus/raw/upload/v1485738688/1485738687/Screen%20Shot%202017-01-30%20at%208.10.46%20AM.png)


## Start Chat
### Chat with target email
Start chat with target is very easy, all you need is just call `Qiscus.chat(withUsers: ["TARGET_EMAIL"], target: self)` in your code

For example in your ViewController : 
```
import UIKit
import Qiscus

class ViewController: UIViewController {

.....

func goToChat(){
print("go to chat")
Qiscus.chat(withUsers: ["e2@qiscus.com"], target: self)
}

.....
}

```
### Chat with room id
When you already know your chat room id, you can easily go to that room. Just call `Qiscus.chat(withRoomId roomId:[ROOM_ID], target:self, optionalDataCompletion: {_ in})` in your code

For example in your ViewController : 
```
import UIKit
import Qiscus

class ViewController: UIViewController {

.....

func goToChat(){
print("go to chat")
Qiscus.chat(withRoomId: roomId, target: self, 
optionalDataCompletion: {_ in 

}
)
}

.....
}

```
### Create group chat
Qiscus also support group chat. To create new group chat, all you need is just call  `Qiscus.createChat(withUsers users:["TARGET_EMAIL_1, TARGET_EMAIL_2"], target:self)` in your code

For example in your ViewController : 
```
import UIKit
import Qiscus

class ViewController: UIViewController {

.....

func goToChat(){
let chatTargets = ["081111111111@qiscuswa.com, 081234567890@qiscuswa.com"]
Qiscus.createChat(withUsers:chatTargets, target:self)
}

.....
}

```
for accesing room that created by this call, you need to call it with its roomId. This methode is always creating new chat room.

##Custom Style of Chat Interface 

you can explore customisation of chat interface by calling method style

For Example : 

```
Qiscus.style.color.leftBaloonColor = UIColor.blueColor()
Qiscus.style.color.rightBaloonColor = UIColor.greenColor()
```


### Screen Shots

![alt tag](https://res.cloudinary.com/qiscus/raw/upload/v1485736947/1485736946/Screen%20Shot%202017-01-30%20at%207.26.07%20AM.png)

![alt tag](https://res.cloudinary.com/qiscus/raw/upload/v1485736958/1485736957/Screen%20Shot%202017-01-30%20at%207.26.59%20AM.png)

![alt tag](https://res.cloudinary.com/qiscus/raw/upload/v1485736969/1485736967/Screen%20Shot%202017-01-30%20at%207.41.09%20AM.png)


