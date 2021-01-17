module Users
  def Users.main_user
    @main_user ||= User.new('Markuss','Rolands', 'markuss@email.com','2831694323','Vējdzirnavu iela 12', '12/12/1999')
    @main_user
  end

  def Users.form_user
    @form_user ||= User.new('Otto', 'Motto', 'otto@motto.com', '1234567891', 'Maza iela 2', '15/2/1999')
    @form_user
  end

  def Users.book_user
    @book_user ||= BookUser.new('Marko1', 'M!arko123')
    @book_user
  end

  class User
    attr_reader :firstname, :lastname, :email, :mobile, :address, :birth
    def initialize(firstname, lastname, email, mobile, address, birth)
      @firstname = firstname
      @lastname = lastname
      @mobile = mobile
      @email = email
      @address = address
      @birth = birth
    end
  end

  class BookUser
    attr_reader :username, :password
    def initialize(username, password)
      @username = username
      @password = password
    end
  end
end
