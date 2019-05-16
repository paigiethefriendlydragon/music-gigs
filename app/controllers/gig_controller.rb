class GigController < ApplicationController

  def index
    @users = User.all
    @user_sample = @users.sample(1)
    @instrument_list = {brass:
                          ["Trumpet",
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
                          "Bugle"
                        ],


                          keyboard:
                            ["Accordion",
                            "Celesta",
                            "Clavichord",
                            "Dulcitone",
                            "Electronic keyboard",
                            "harpsichord",
                            "Organ",
                            "Piano",
                            "Synthesizer"
                          ],

                          strings:
                            ["violin",
                            "viola",
                            "cello",
                            "string bass",
                            "harp"
                          ],

                          guitar:
                            ["acoustic guitar",
                            "banjo",
                            "bass guitar",
                            "electric guitar",
                            "mandolin",
                            "ukulele"
                          ],

                          woodwinds:
                            ["alto flute",
                            "oboe",
                            "bass oboe",
                            "bassoon",
                            "clarinet",
                            "contrabass oboe",
                            "flute",
                            "piccolo",
                            "recorder",
                            "saxophone"
                          ],

                          percussion: [
                            "ashiko",
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
                            "glockenspiel"
                          ]
                        }


        # @genres = [ {rock:
        #               "alternative",
        #               "metal",
        #               "indie rock",
        #               "punk",
        #               "hard rock"},
        #              ]


        end
      end
