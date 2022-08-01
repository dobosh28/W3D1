# created file
# hello
# my example comment

class Array

    def my_each(&prc)
        
        i = 0

        while i < self.length
            print prc.call(self[i])
            i += 1
        end

        return self
    end

end

# p return_value = [1, 2, 3].my_each { |num| puts num }.my_each { |num| puts num }
