class Student < ActiveRecord::Base


	def self.encrypt(newpassword)
		privateKey = "@aplication_wcode(encrypt)@"
		key = Digest::MD5.hexdigest(privateKey) 
		val = key+newpassword
		code = Digest::MD5.hexdigest(val)
		p = Digest::SHA256.hexdigest(code)
		return p
	end
end
