use_bpm 77

m = (ring 0, 1, 1, 0, 1)

live_loop :something do
  tick(:mb)
  
  if m.look(:mb) == 0
    b = (ring chord(:C3, :major), chord(:F3, :major), chord(:G3, :major))
  end
  if m.look(:mb) == 1
    b = (ring chord(:A3, :minor), chord(:C3, :minor), chord(:C3, :major))
  end
  sleep 1
 
end
