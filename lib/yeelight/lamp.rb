module Yeelight
  class Lamp
    VALUES = '"rgb", "ct", "color_mode", "hue", "sat"'

    attr_reader :client

    def initialize(client)
      @client = client
    end

    def toggle_color(color, duration = 1)
      rgb, ct, color_mode, hue, sat = JSON.parse(client.get_prop(VALUES))['data']['result']

      client.set_rgb(color, 'smooth', 500)
      sleep duration

      case color_mode.to_i
      when 1
        client.set_rgb(rgb, 'smooth', 500)
      when 2
        client.set_ct_abx(ct, 'smooth', 500)
      when 3
        client.set_hsv(hue, sat, 'smooth', 500)
      end
    end
  end
end

