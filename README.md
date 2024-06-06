# quotes_app_daliy_task


# # What is Factory Constructor ?

->
A factory constructor in Flutter is a special type of constructor that doesn't always create a new instance of its class.

->Instead, it may return an existing instance or even an instance of a different class.

->The factory keyword in Dart is used to define a factory constructor.

* Syntex:
```javascript
    class ClassName {

    //default factory constructor

    factory ClassName() {

    // TODO: return ClassName instance
    }

    //named factory constuctor

    factory ClassName.namedConstructor() {

    // TODO: return ClassName instance
    }
}
```
* Example:
```javascript
import 'dart:io';

import 'factroy.dart';

// import '../factory/sudent.dart';


class Student{
  late String name,course;
  late int roll_number;

  Student({required this.name,required this.roll_number,required this.course});


 
}
List Studentlist1=[
    { 'name':'aarti', 'roll_number':1, 'course':'Flutter'},
    {'name': 'pooja','roll_number':2, 'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    { 'name':'aarti','roll_number':1,'course':'Flutter'},
    {'name':'pooja','roll_number':2,'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    { 'name':'aarti','roll_number':1,'course':'Flutter'},
    {'name':'pooja','roll_number':2,'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    { 'name':'aarti','roll_number':1,'course':'Flutter'},
    {'name':'pooja','roll_number':2,'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    { 'name':'aarti','roll_number':1,'course':'Flutter'},
    {'name':'pooja','roll_number':2,'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    { 'name':'aarti','roll_number':1,'course':'Flutter'},
    {'name':'pooja','roll_number':2,'course':'Full Steck'},
    {'name':'sheha','roll_number':3,'course':'UI - UX degain'},
    {'name':'krupa','roll_number':4,'course':'Flutter'},
    {'name':'jinal','roll_number':5,'course':'Full Steck'},
    
];
List<StudentModel>Studentlist2=[];
void main()
{
  int i,j;
  for(i=0;i<Studentlist1.length;i++)
  {
    StudentModel s1=StudentModel.fromStudent(Student: Studentlist1[i]);
    Studentlist2.add(s1);
 
  }
  for(int i=0;i<Studentlist2.length;i++)
  {
    print('name=${Studentlist2[i].name}'+'roll_number=${Studentlist2[i].roll_number}'+'course=${Studentlist2[i].course}');
  }
}
```
# What is Model Class?

->

The modal class is the class with the highest frequency. 

->We know that the mode is the number or observation that most often appears.

-> So, the modal class is the class in a grouped data that contains the mode.

->That means, the class that has the highest frequency is the modal class of the grouped data.

* Example:
```javascript
    import 'dart:io';

    class StudentModel{

      String? name,course;
      
      int ?roll_number;

    StudentModel({required this.name,required this.roll_number,required this.course});

    factory StudentModel.fromStudent(
      {required Map Student})
    {

      
    return StudentModel(name: Student['name'],roll_number: Student['roll_number'],course: Student['course']);
    }
    
 }
```
# Quotes_App
<p>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/5b8f2746-46bc-4d9a-b9bf-a88ec82590ca"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/830835fe-1590-449e-bffe-237e0bd1e168"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/b21507db-12cb-4909-964d-9304034e60f6"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/4127455c-d295-4fe7-8a0c-593d9046e1ab"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/da3a5fa1-d1ad-473c-97b5-7274947e55e2"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/f712cd1f-7292-4f4f-a07d-dbd3bcfd57fd"width=28% height=35%>
</p>

video


https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/69094fc4-ca5d-4bb4-ac33-0dc798677860

# Toggal_View_Bhagvat_Gita_Summry
<p>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/c0c06d18-3c50-4f4a-816a-1c1e8b0711ea"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/54544533-fa0f-4955-961b-0de7b06a19ba"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/99cb7217-1a3c-4b98-a35c-22441739b6ce"width=28% height=35%>
   <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/d0227020-3a61-44e2-b3eb-31d82f96ddc0"width=28% height=35%>
 <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/eb937898-2d24-49e5-af37-4b88a9f24a5d"width=28% height=35%>
  <img src="https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/a4d86c27-7135-4d8f-8c18-2b7fcb6088d9"width=28% height=35%>
 
  
</p>

https://github.com/Krupaparmar30/quotes_app_daliy_task/assets/149374671/b68a4f39-49f7-4469-9218-c1fd09bc4d75



