class GigController < ApplicationController

  def index
    @users = User.all
    @user_sample = @users.sample(1)
    @instruments = Instrument.all
    @instrument_join = InstrumentJoin.all
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
          end
          def show
            @users = Users.all
            @user = User.find(params[:id])
        end
      end
