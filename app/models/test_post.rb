class TestPost < ApplicationRecord
  validates:title, presence:true, length: { minimum:5},uniqueness:true
  validates:desc, presence:true
end
