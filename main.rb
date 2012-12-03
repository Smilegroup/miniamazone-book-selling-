require 'book'
require 'category'
#creating book and its details
science=Book.new({:isbn=>"s1",:title=>"science",:author=>"Susan",:price=>"9"})
math=Book.new({:isbn=>"s2",:title=>"math",:author=>"Barun",:price=>"337"})
english=Book.new({:isbn=>"s3",:title=>"english",:author=>"Rojace",:price=>"5"})
nepali=Book.new({:isbn=>"s4",:title=>"nepali",:author=>"Pradeep",:price=>"8"})
# creating new category
engineering=Category.new("engineering")
arts=Category.new("arts")
commerce=Category.new("commerce")


