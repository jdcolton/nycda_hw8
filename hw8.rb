def word_freq(text)

	myHash={}
	array= text.split(" ")
	array.each do |word|
		if(myHash.has_key?(word))
			myHash[word] = myHash[word] + 1
		else
			myHash[word] = 1
		end	
	end
	/return myHash/
	return hash_max(myHash)
end

def hash_max(hash)
	freq_array = hash.values
	max_freq = max(freq_array)

	return_hash = hash
	return_hash.keep_if {| key, value | value==max_freq} 
	return return_hash
end

def max(arr)
	maxval=arr[0]
	arr.each do |item|
		if(item>maxval)
			maxval=item
		end
	end
	return maxval
end