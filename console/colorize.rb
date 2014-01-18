# encoding: utf-8

module Console
  module Colorize
    RESET = "\e[0m" # No Color
    COLORS = {
      :white        => "\e[37m",
      :black        => "\e[30m",
      :blue         => "\e[34m",
      :light_blue   => "\e[34m",
      :green        => "\e[32m",
      :light_green  => "\e[32m",
      :cyan         => "\e[36m",
      :light_cyan   => "\e[36m",
      :red          => "\e[31m",
      :light_red    => "\e[31m",
      :purple       => "\e[35m",
      :light_purple => "\e[35m",
      :brown        => "\e[33m",
      :yellow       => "\e[33m",
      :gray         => "\e[30m",
      :light_gray   => "\e[37m"
    }


    def colorize(color_sym, &blk)
      content = blk.call.to_s
      if COLORS[color_sym]
        "#{COLORS[color_sym]}#{content}#{RESET}"
      else
        content
      end
    end

    COLORS.keys.each do |color_sym|
      define_method color_sym do |&blk|
        colorize(color_sym, &blk)
      end
    end

  end
end

