# frozen_string_literal: true

#
# Top-level module of distrb gem.
#
module Distrb
  require_relative './distrb/version'
  require_relative './distrb/distribution'
  require_relative './distrb/uniform'
  require_relative './distrb/normal'
  require_relative './distrb/gamma'
  require_relative './distrb/beta'
end
