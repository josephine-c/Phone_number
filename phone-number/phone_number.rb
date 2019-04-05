# Get rid of white space and punctuation
# Get rid of country code 1 and restrict area code to starts with a number ranging from 2-9
# Restrict length of number to 10 digits and restrict the exchange code with number from 2-9

class PhoneNumber
    def self.clean(phone) 
        phone_num = phone.scan(/\d/).join

        while phone_num[0] < "2" do
            phone_num.gsub!(/^\d/, '')
        end
        
        p phone_num.length != 10 || phone_num[3] == "1" || phone_num[3] == "0"? nil : phone_num
    end
end