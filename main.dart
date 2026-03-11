import 'dart:io';
main(){
  Map<String,String> contacts={};
  while(true){
    print("\n====Contact Manager=====");
    print("1.Add Contact");
    print("2.Search Contact");
    print("3.Show All Contacts");
    print("4.Delete Contact");
    print("Exit");
    stdout.write("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);
    if(choice==1){
      stdout.write("Enter your name:");
      String name=stdin.readLineSync()!;

      stdout.write("Enter Phone Number:");
      String phone=stdin.readLineSync()!;
      contacts[name]=phone;
      print("Contact added successfully.");

    }
    else if(choice==2){
      stdout.write("Enter name to search:");
      String name=stdin.readLineSync()!;
      if(contacts.containsKey(name)){
        print("Phone:${contacts[name]}");
      }
      else{
        print("Contact is not found.");
      }

    }
    else if(choice==3){
      print("\nContact List:");
      contacts.forEach((name,phone){
          print("$name : $phone");

      });
    }
    else if(choice==4){
      stdout.write("Enter name to delete:");
      String name=stdin.readLineSync()!;
      if(contacts.containsKey(name)){
        contacts.remove(name);
        print("Contact Delete.");
      }
      else{
        print("Contact not found");
      }
    }
    else if(choice==5){
      print("Exiting.......");
      break;
    }
    else{
      print("Invalid Choice...");
    }
  
  }
}