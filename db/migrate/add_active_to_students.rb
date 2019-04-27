 class AddActiveToStudents < ActiveRecord::Migrations[5.0]
   def add_column
     add_column :student, :active, :boolean, default: false
   end
 end 
