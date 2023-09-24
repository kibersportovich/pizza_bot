module StringValidator
  def validates_string(_str)
    return if _str.match?(/\A[0-9]+x[0-9]+\s(\([0-9]+,\s*[0-9]+\)\s*)+\z/)

    raise ArgumentError, 'ты передал неправильные аргументы'
  end
end
