We would like to subdivide a herculean task to small manageable tasks.
The stucture of the modules directory is as follows

|- modules
     |- README.txt
     |- folder_name_in_snake_case 
     |- another_folder_name_in_snake_case
          |- dart_file_one.dart       
          |- dart_file_two.dart
          |- optional_text_file.txt
     |- another_folder_name_in_snake_case

Each module sub-folder groups Dart files which contribute to or accomplish
certain functionality. Use singular nouns for module names
ie use 'notification' instead of 'notifications'

Below is a self explanatory folder structure 

|- modules
     |- README.txt
     |- user_roles
     |- user_auth
          |- user_login.dart       
          |- user_registration.dart
     |- attendance
     |- notification
