class HIDA < Hash

  def [](key)
    value = (fetch key, nil) || (fetch key.to_s, nil) || (fetch key.to_sym, nil)
  end

  def []=(key,val)
      if (key.is_a? String) || (key.is_a? Symbol)
        self.delete key.to_sym
        self.delete key.to_s
      end
      merge!({key => val})
  end
end

hash1 = HIDA.new
hash1 = {a: 1,b: 2}

p hash1[:a]
p hash1['a']
