# hello-world
my hello world repository

Hello I hope you like my Hello World repository

ARKit Developer Tutorial: How To Build a Measuring App with Apple’s Augmented Reality SDK

https://gorillalogic.com/blog/arkit-developer-tutorial-how-to-build-a-shoe-measuring-app/

The white fields: Farmers who get salt on to your plate

https://www.hindustantimes.com/photos/india-news/in-pictures-salt-farmers-of-thoothukudi/photo-q6Hdod0DcZYV6xX2jZ7QcO.html

Logo used for apps <br />
https://freedesignfile.com/370721-rocket-icon-vector/


App URL
==========

https://apps.apple.com/gb/app/hsbc-uk-business-banking/id1436847080#?platform=iphone

<h2> Mail App by Apple </h2>

https://apps.apple.com/us/app/mail/id1108187098

Video URLs

https://sample-videos.com/video123/mp4/720/
https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4


<h3>In App</h3>

https://github.com/appcoda/In-app-Purchase-Game-Demo


<h3>CERT</h3>
https://www.vskills.in/certification/certified-digital-marketing-professional

<h3>January Leaves</h3>

January

Sick Leave - 10th Jan

Lev_187995093

23rd Jan 2025 - Flexi Holiday

Lev_187995071


<h3>Feb Leaves</h3>

24th Feb to 4th March

Lev_187436410

func shareAccountDetailsActionSheet(message: String, completion: (() -> Void)?) {
    let activityViewController = UIActivityViewController(activityItems: [message], applicationActivities: nil)

    // iPads require a sourceView and sourceRect for popovers
    if let popoverController = activityViewController.popoverPresentationController {
        popoverController.sourceView = self.view
        popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        popoverController.permittedArrowDirections = [] // No arrow needed for centered popover
    }

    activityViewController.completionWithItemsHandler = { [weak self] _, _, _, _ in
        guard let self = self else { return }
        self.view.isAccessibilityElement = true
        UIAccessibility.post(notification: .layoutChanged, argument: self.shareDetailsButton)
        completion?() // Call completion handler after sharing/canceling
    }

    present(activityViewController, animated: true) {
        UIAccessibility.post(notification: .screenChanged, argument: activityViewController.view)
    }
}

func shareAccountDetailsActionSheet(message: String, completion: (() -> Void)?) {
    let activityViewController = UIActivityViewController(activityItems: [message], applicationActivities: nil)

    // ✅ iPad popover support
    if let popoverController = activityViewController.popoverPresentationController {
        popoverController.sourceView = self.view
        popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        popoverController.permittedArrowDirections = [] // No arrow for a centered popover
        popoverController.delegate = self // ✅ Allows tap outside to dismiss
    }

    activityViewController.completionWithItemsHandler = { [weak self] _, _, _, _ in
        guard let self = self else { return }
        self.view.isAccessibilityElement = true
        UIAccessibility.post(notification: .layoutChanged, argument: self.shareDetailsButton)
        completion?() // ✅ Ensures proper dismissal after sharing
    }

    present(activityViewController, animated: true) {
        UIAccessibility.post(notification: .screenChanged, argument: activityViewController.view)
    }
}

// ✅ Conform to `UIPopoverPresentationControllerDelegate` to allow outside tap to dismiss
extension YourViewController: UIPopoverPresentationControllerDelegate {
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        return true // ✅ Allows dismissal when tapping outside
    }
}

