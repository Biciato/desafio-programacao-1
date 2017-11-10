class Item < ActiveRecord::Base
    mount_uploader :picture, TabelaUploader
    def total
        a = []
        File.open("public/example_input.tab", "r") do |f|
	        f.readlines.each do |l|
	        l.encode!('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')     
		    ls = l.match(/(\d+[,.]\d+)/).to_s
		    li = ls.to_i
		    a << li
	        end
            f.close
        end

        total = a.inject(:+)
        return total
    end
end
