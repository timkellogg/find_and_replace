require('rspec')
require('find_and_replace') # you don't need to have complete relative path because rspec automatically checks a list of folders (loadpath) including the lib folder 


describe('String#find_and_replace') do
    
    it("should replace word called on with the word passed throug") do 
        expect(("I am walking my dog to the cathedral").find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral"))
    end
    
end 
