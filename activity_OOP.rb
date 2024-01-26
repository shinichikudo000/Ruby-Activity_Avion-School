module AdminPermission
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  end
  
  module PasswordChange
    def change_passsword=(new_password)
       @password = new_password
       puts "#{self.class) password changed to: #{@password}"
    end
  end
  
  class User
    @attr_accessor :username, :password, :ip_address
    def initialize(username, password, ip_address)
      @username
      @password
      @ip_addresss
    end
  
    protected
  
    def login
      puts "User logged in. IP address: #@{ip_address}"
    end
  end
  
  
  class Admin < User
    include AdminPermission
  
    def admin_login
      login
    end
  end
  
  
  class Buyer < User
    include BuyerPermission
  
    def buyer_login
      login
    end
  end
  
  
  
  ## execute
  
  my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
  my_admin.admin_login
  my_admin.edit_users_profile
  
  my_admin.change_password = 'new_password'
  
  buyer = Buyer.new('juan', 'password', '127.0.0.1')
  buyer.buyer_login
  buyer.buy
  
  buyer.change_password = 'new_password'