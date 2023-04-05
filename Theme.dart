1.We would want to have unison of theme all accross our apps and for that we will have to use theme in our app
Example:
  theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Montserrat',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: TextStyle(
                    color: Colors.black,
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
              toolbarTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      titleLarge: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                  .bodyMedium,
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      titleLarge: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                  .titleLarge))
                  
   2.Bottom Modal Sheet
    
    if we want to fire up modal sheet from bottom we can make use of Bottom Modal sheet
      
      showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: userForm(_addTransaction),
            // behavior: HitTestBehavior.opaque,
          );
        });
3.To get out of the front screen 
  
     Navigator.of(context).pop();


