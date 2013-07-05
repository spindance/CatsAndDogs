object @dog
attributes :name
child({:toys => :toys}, :object_root => false) do
  attributes :id, :name
end
