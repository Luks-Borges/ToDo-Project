module ApplicationHelper
    def date_brazilian_format(date_us)
        date_us.strftime("%d/%m/%Y")
    end

    def ambient_identification
        x = Time.now.hour
        (x >= 18 && x <= 24)? "Good night" : ((x >= 1 && x <= 6) || (x >= 6 && x <= 12))? "Good morning" :  "Good afternoon"
    end
end
