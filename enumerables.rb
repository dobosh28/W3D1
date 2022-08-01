# created file
# hello
# my example comment

class Array

    def my_each(&prc)
        
        i = 0

        while i <= self.length-1
           prc.call(self[i])
            i += 1
        end

       return self
    end

    def my_select(&prc)
        new_arr = []
        self.my_each do |ele| 
            if prc.call(ele)
                new_arr << ele
            end
        end
        return new_arr 
    end

end

# p return_value = [1, 2, 3].my_each { |num| puts num }.my_each { |num| puts num }
# p return_value = [1, 2, 3].my_each { |num| puts num }
a = [1, 2, 3]

p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []