use_bpm 100

choir = :ambi_choir
piano = :ambi_piano

live_loop :something do
  beat = (ring choir, choir, piano, choir, piano, piano)
  amps = (ring 2, 3, 3, 2, 3, 2)
  sleeps = (ring 1, 1.5, 0.5, 1.5, 1, 1)
  tick
  sample beat.look, amp: amps.look
  sleep sleeps.look
end
