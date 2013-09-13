
case node[:platform]
when "ubuntu"
  include_recipe "mapnik::ubuntu"
else
  include_recipe "mapnik::source"
end
