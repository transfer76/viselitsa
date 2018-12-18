class WordReader
  def read_from_args
    return ARGV[0]
  end

  def read_from_file(file_name)
    if !File.exist?(file_name)
      return nil
    end

    begin
      file = File.new(file_name, "r:UTF-8")
      lines = file.readlines
      file.close
    rescue SystemCallError
      abort 'Файл со словами не найден!'
    end  

    return lines.sample.chomp
  end
end
