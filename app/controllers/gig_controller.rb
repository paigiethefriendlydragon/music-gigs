class GigController < ApplicationController

  def index
    @users = User.all
    @user_sample = @users.sample(1)

    @brass_menu = ["Trumpet",
                      "Cornet",
                      "Piccolo Trumpet",
                      "Flugelhorn",
                      "French horn",
                      "Baritone horn",
                      "Euphonium",
                      "Alto horn",
                      "Tenor horn",
                      "Trombone",
                      "Tuba",
                      "Bugle"]


      @keyboard_menu = ["Accordion",
                        "Celesta",
                        "Clavichord",
                        "Dulcitone",
                        "Electronic keyboard",
                        "harpsichord",
                        "Organ",
                        "Piano",
                        "Synthesizer"]

      @orchestral_strings_menu = ["violin",
                                  "viola",
                                  "cello",
                                  "string bass",
                                  "harp"]

      @guitar_family_menu = ["acoustic guitar",
                              "banjo",
                              "bass guitar",
                              "electric guitar",
                              "mandolin",
                              "ukulele"]

      @woodwinds_menu = ["alto flute",
                          "oboe",
                          "bass oboe",
                          "bassoon",
                          "clarinet",
                          "contrabass oboe",
                          "flute",
                          "piccolo",
                          "recorder",
                          "saxophone"
                          ]

      @percussion_menu = ["ashiko",
                          "bass drum",
                          "bongo drum",
                          "castanet",
                          "conga",
                          "cymbal",
                          "djembe",
                          "drums",
                          "gong",
                          "maracas",
                          "marimba",
                          "snare drum",
                          "tambourine",
                          "timpani",
                          "glockenspiel"]
        end
      end
