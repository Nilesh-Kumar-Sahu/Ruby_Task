class Hash
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

class HWIA < Hash

  def initialize
    super
  end
end

new_hash = HWIA.new
new_hash = {a: 1,b: 2}
# new_hash = {'a'=> 1,'b'=> 2}

p new_hash[:a]
p new_hash['a']
