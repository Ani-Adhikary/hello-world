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

<h2>OTP</h2>

When testing an OTP (One-Time Password) text field for accessibility in iOS, there are several key considerations to ensure a smooth user experience, especially for those with disabilities. Here’s a breakdown of what to check:

### 1. **VoiceOver Compatibility**
   - **Labeling**: Ensure that the text field has an appropriate `accessibilityLabel`, such as "OTP field" or "Enter OTP". This will inform VoiceOver users what the field is for.
   - **Value Announcement**: Check that VoiceOver reads out the current input correctly as the user types each digit of the OTP.
   - **Hints**: Add `accessibilityHint` if necessary, such as "This is a one-time password input field."
   - **Auto Focus**: Ensure that when the screen with the OTP field appears, VoiceOver properly focuses on it.
   
### 2. **Keyboard Appearance**
   - **Numeric Keyboard**: If the OTP is purely numeric, ensure the keyboard is set to display numeric input (`UIKeyboardType.numberPad`), which makes it easier for users to input digits.
   
### 3. **Dynamic Type Support**
   - Ensure the text field supports dynamic type. This means the OTP field should scale text appropriately when the user adjusts the text size in their device’s accessibility settings.
   
### 4. **Contrast and Visibility**
   - Check the contrast between the OTP text field’s background and text, ensuring it meets WCAG 2.1 contrast ratio guidelines (minimum of 4.5:1 for text).
   - The text should be clearly visible for users with low vision or color blindness.

### 5. **Text Field Focus and Navigation**
   - Make sure the OTP field is easy to navigate to using assistive technologies. For example, test tabbing between fields (if multiple fields are used) and ensure that auto-advance works correctly (the cursor should move to the next field after entering a character, if that is the design).
   
### 6. **Error Handling**
   - Ensure that when an error occurs (e.g., incorrect OTP), an appropriate accessibility notification is given. Use `UIAccessibilityPostNotification` to notify users of the error message. This is important so users who rely on VoiceOver or other assistive technologies are aware of mistakes or required actions.
   
### 7. **AutoFill Support**
   - iOS provides OTP AutoFill from SMS messages. Ensure that your OTP field has the `textContentType = .oneTimeCode` attribute set so that the system can automatically detect OTPs from messages and suggest them to users.

### 8. **Button Accessibility**
   - If there are accompanying buttons (like "Resend OTP" or "Verify"), ensure these are accessible and have clear labels.
   
### 9. **Focus Management**
   - Ensure that after the OTP is entered, the focus moves correctly to the next logical control (e.g., a submit button) and that it is announced for VoiceOver users.
   
### 10. **Input Assistance**
   - Provide auditory or haptic feedback when users enter a digit to enhance the experience for users with visual impairments.

By covering these accessibility aspects, you can ensure that the OTP text field in iOS is usable by a wider audience, including those with disabilities.
