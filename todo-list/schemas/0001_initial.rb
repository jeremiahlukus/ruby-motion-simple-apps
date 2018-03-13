schema "0001 initial" do

  entity "Task" do 
    string :name, optional: false
    datetime :created_at
    datetime :updated_at
  end 

end
