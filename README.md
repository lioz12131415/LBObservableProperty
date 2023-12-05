# LBObservableProperty
This library provides a custom option to Observe variables changes. Provides a simple API to manage object variables changes.

## Example ##

```swift 

class Product {
    
    @LBObservableProperty var price: Double = .zero
    
}

class ViewController: UIViewController {
    
    fileprivate var product: Product = Product()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        product.$price.onChange(self) { newValue in
            print("price = \(newValue)")
        }
        
        product.price = ${ NEW VALUE }
    }
}

```

<br>

## Methods -
### The Observable Property Methods.

```swift 

    /*
     * Remove Observer
     * */
    func removeObserver(_ target: NSObject)

    /*
     * Add Target Observer And Listen To Variable Changes
     * */
    onChange(_ target: NSObject, _ block: @escaping (Value) -> Void)
    
```

<br>

# Install #
The recommended approach for installing LBObservableProperty is the CocoaPods package manager.

Install CocoaPods if not already available:
```
$ sudo gem install cocoapods
```

Edit your Podfile and add LBObservableProperty:
```
platform :ios, '14.0'
use_frameworks!

target 'MyApp' do
  pod 'LBObservableProperty'
end
```

Install into your project:
```
$ pod install
```

# Requirements #
LBObservableProperty requires at least iOS 14 or above.
