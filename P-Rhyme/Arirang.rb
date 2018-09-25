# ------------------------------------------------------------#
# FILE: arirang.rb
# DATE: September 25, 2018
# AUTH: Dave Perkins
# DESC: The semachi rhythm from South Korea, with "Arirang" as
#       the melody on top of the rhythm. Thanks to Jiin Jeong
#       for the inspiration!
# ------------------------------------------------------------#

use_bpm 115

ari_notes = (ring :r,
             :D4, :E4, :D4, :E4, :G4, :A4, :G4, :A4,
             :B4, :A4, :B4, :A4, :G4, :E4, :D4, :E4, :D4, :E4,
             :G4, :A4, :G4, :A4, :B4, :A4, :G4, :E4, :D4, :E4,
             :G4, :A4, :G4, :G4,
             :D5, :D5, :D5, :B4, :A4,
             :B4, :A4, :B4, :A4, :G4, :E4, :D4, :E4, :D4, :E4,
             :G4, :A4, :G4, :A4, :B4, :A4, :G4, :E4, :D4, :E4,
             :G4, :A4, :G4, :G4
             )
ari_sleep = (ring 18.0,
             2.5, 0.5, 0.5, 1.0, 2.5, 0.5, 0.5, 1.0,
             1.5, 0.8, 0.3, 0.4, 0.5, 1.0, 2.5, 0.5, 0.5, 1.0,
             2.5, 0.5, 0.5, 1.1, 0.9, 0.6, 0.7, 0.7, 0.8, 0.8,
             2.8, 1.0, 0.7, 4.5,
             3.0, 1.5, 1.5, 1.5, 1.5,
             1.5, 0.8, 0.3, 0.4, 0.5, 1.0, 2.5, 0.5, 0.5, 1.0,
             2.5, 0.5, 0.5, 1.1, 0.9, 0.6, 0.7, 0.7, 0.8, 0.8,
             2.8, 1.0, 0.7, 4.5
             )

ghe = :tabla_ghe3
nao = :tabla_na_o

perc_sleeps = (ring 1.5, 1, 0.5, 0.5, 1)
perc_amps = (ring 2, 1, 1.5, 0.25, 1.5)

in_thread do
  loop do
    tick
    sample nao, amp: perc_amps.look + rrand(-0.10, 0.10)
    sample ghe, amp: rrand(4, 4.5) if perc_amps.look == 2
    sleep perc_sleeps.look
  end
end

loop do
  tick
  with_fx :hpf, cutoff: 102, mix: 0.9 do
    with_fx :reverb, room: 0.9, damp: 0.8, pre_mix: 0.9, pre_amp: 0.6 do
      use_synth :blade
      use_synth_defaults attack: 0.2, amp: 6
      play ari_notes.look
      sleep ari_sleep.look
    end
  end
end
