string = "The quick 12 brown foxes jumped over  10 lazy dogs"
# check letter 
p string =~ /o/
p string =~ /foxes/
p string =~ /quick/

p string =~ /z/ ? "valid" : "invalid" 
# expression is case sensitve. meaning /Z/ will be invalid
# use /z/i to make it insesitive
# the above line is a simpler version of:
if string =~ /z/
    p "Valid"
else
    p "Invalid"
end

# anything between // is a regular expression

# return all the integer values from the string value
p string.to_enum(:scan, /\d+/).map {Regexp.last_match}

# Regex code example 
# Validating email
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i 
# the expression above accepts something@domain.extension

# verifier method
def is_valid_email? email 
    email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("symo@kevo.com") ? "valid": "Invalid"
p is_valid_email?("symokevo.com") ? "valid": "Invalid"
p is_valid_email?("symo.r@kevo.com") ? "valid": "Invalid"
p is_valid_email?("symo@kevo") ? "valid": "Invalid"

# validating IP addresses using regular expressions

IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/
# The above expression takes ips ranging from 172.16.0.0 to 172.31.255.255

# validator method
def is_valid_ip_address? ip 
    ip =~ IP_ADDRESS_REGEX
end

# do your checks here
p is_valid_ip_address? ("111.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.31.255.255") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.31.255.256") ? "Valid" : "Invalid"

if "999.16.0.0" =~ IP_ADDRESS_REGEX
    p "Valid"
else
    p "Invalid"
end

# try rubular.com
