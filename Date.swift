
//All About Dates : - https://nsdateformatter.com

NOTE: - Here Date Means Date Object

--> Converting date Object Into String
    
     //Given Date object: -
         let currDate = Date()
     
     //Create A Date Formatter Object To Specify The Date Fromat
     let dateFormatter = DateFormatter()
     dateFormatter.dateFormat = "dd:MM:yyyy"
     
     //Use This function to convert from date to string
     let stringDate =  dateFormatter.string(from: currDate)
    
--> Contverting String To Date Object

    let input = "12/10/2018"
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yyyy"
    let date = formatter.date(from: input)

--> Converting Date In ISO8601 Date String Into Date Object

    let input = "2018-12-10T17:29:50Z"
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = formatter.date(from: input)


--> Creating date Component

    var dateComponent = DateComponents()
    dateComponent.day = 2
    dateComponent.month = 2
    dateComponent.year = 1992

--> Converting Date Component Into Date Object

    var dateComponent = DateComponents()
    dateComponent.day = 2
    dateComponent.month = 2
    dateComponent.year = 1992
    let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
    let date = calendar.date(from: dateComponent)!


--> Addind Date By Days, Months or Year

    let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
    var components = DateComponents()
    components.day = 2
    components.month = 1
    components.year = 3
    let updatedDate = calendar.date(byAdding: components, to: currentDate)!

