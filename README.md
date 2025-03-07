```markdown
# UserFetcherApp (UIKit)

UserFetcherApp is an iOS application built with UIKit that fetches and displays a list of users from an API. It follows the MVVM architecture for better code separation and maintainability.

## Features

- Fetches user data from a web API.
- Displays a list of users in a `UITableView`.
- Implements a detailed view for each user.
- Utilizes MVVM pattern for cleaner code architecture.

## Technologies Used

- **UIKit**: Used for building the user interface with UIKit components.
- **MVVM Architecture**: Ensures clean separation of concerns, improving maintainability.
- **URLSession**: Handles making API calls and fetching data.
- **Codable**: Decodes JSON responses into Swift models.

## Project Structure

1. **Model**
   - Created a `User` model to represent user data and conform to `Codable` for easy decoding from JSON.

2. **ViewModel**
   - Wrote the `UserViewModel` to handle the business logic and interact with the API.
   - Implemented a function to fetch user data and provide it to the view layer.

3. **ViewController**
   - Integrated the `UserViewModel` into a `UIViewController` and used a `UITableView` to display the list of users.
   - Managed table view cells and user data presentation.
  
4. **DetailViewController**
   - Created a detailed view controller to display more information about each selected user.
```
## VideoDemo



https://github.com/user-attachments/assets/3cd4e6c5-0647-405f-b119-5b15fd9aec96


## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/alperenakaraca23/UserFetcherApp(UIKit).git


2. Open the project in Xcode.

3. Run the project on a simulator or a physical device.
