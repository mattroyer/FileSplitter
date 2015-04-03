require 'fileutils'

class SplitCodeSection

  def initialize(filepath)
    @filepath = File.read(filepath).split(/\s*?\n\n\n\s*/)

    get_names
  end

  def get_names

    @filepath.each do |sections|

      filename = sections.split(/\n/)[1][2..-1].split.map(&:downcase).join('-')

      directory = FileUtils.mkdir_p("#{File.dirname(__FILE__)}/example/split_files")

      File.open("#{directory[0]}/#{filename}.rb", "w") do |f|

        sections.split(/\n/)[4..-1].each do |line|
          if line[0] == "#"
            f.puts line[2..-1]
          else
            f.puts line
          end
        end

      end

    end

  end

end

SplitCodeSection.new "#{File.dirname(__FILE__)}/example/test.rb"
