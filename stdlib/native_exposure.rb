class Module
  def native_alias(jsid, mid)
    `#{self}._proto[jsid] = #{self}._proto['$' + mid]`
  end

  def native_module!
    `Opal.global[#{self.name}] = #{self}`
  end

  alias native_class! native_module!
end

