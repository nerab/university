# -*- encoding: utf-8 -*-
require 'yaml'

# Define this in Ruby and write to YAML once we are done with
#   ruby test/fixtures/course_catalog.rb > test/fixtures/course_catalog.yaml

puts [
  {
    :title => 'Datenbanksysteme',
    :lectures => [{
        :begin    => '10.10.2012 10:00',
        :end      => '10.10.2012 11:30',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Erstellung von Anwendungssystemen'
      }, {
        :begin    => '17.10.2012 10:00',
        :end      => '17.10.2012 11:30',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Datenbanken entwerfen'
      }, {
        :begin    => '21.10.2012 10:00',
        :end      => '21.10.2012 11:30',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Datenbanken abfragen'
      }, {
        :begin    => '30.01.2013 10:00',
        :end      => '30.01.2013 11:30',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Theoretische Grundlagen der relationalen Datenbanken'
      }
    ],
    :tutorials => [{
        :begin    => '10.10.2012 11:45',
        :end      => '10.10.2012 13:15',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Tutorium Erstellung von Anwendungssystemen'
      }, {
        :begin    => '17.10.2012 11:45',
        :end      => '17.10.2012 13:15',
        :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
        :title    => 'Tutorium Datenbankentwurf'
      }
    ],
    :exam => {
      :tasks => [{
          :title       => 'Bibliothek',
          :description => 'Büchern einer Bibliothek',
          :model       => 'Titel, Autor, ISBN',
          :data        => 'Co-Autoren und Übersetzungen'
        }
      ],
      :slots => [
        {
          :begin    => '30.01.2013 14:00',
          :end      => '30.01.2013 14:15',
          :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
          :task     => 'Schema einer Maschinenschraube', # TODO Make this a YAML reference
          :members  => [
            # TODO Make these YAML references, too
            'Schikuta', 'Schüttengruber', 'Beran'
          ]
        },
        {
          :begin    => '30.01.2013 14:15',
          :end      => '30.01.2013 14:30',
          :location => 'PC-Unterrichtsraum 6, Währinger Straße 29 2.OG',
          :task     => 'Relationen im Urlaub',
          :members  => [
            'Sonneck', 'Pllana', 'Köhler'
          ]
        },
      ]
    }
  },
  {
    :title => 'Technische Grundlagen und Systemsoftware',
    :lectures => [
      {
        :begin    => '22.10.2012 09:45',
        :end      => '22.10.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Zahlensysteme und -darstellungen'
      },
      {
        :begin    => '29.10.2012 09:45',
        :end      => '29.10.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Boolsche Algebra'
      },
      {
        :begin    => '05.11.2012 09:45',
        :end      => '05.11.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Digitale Logik'
      },
      {
        :begin    => '12.11.2012 09:45',
        :end      => '12.11.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Prozesse'
      },
      {
        :begin    => '19.11.2012 09:45',
        :end      => '19.11.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Shell Scripts'
      },
      {
        :begin    => '26.11.2012 09:45',
        :end      => '26.11.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Unix Basics'
      },
      {
        :begin    => '03.12.2012 09:45',
        :end      => '03.12.2012 10:30',
        :location => 'PC-Unterrichtsraum 5, Währinger Straße 29 2.OG',
        :title    => 'Prozess- und Diskscheduling'
      }
    ]
  }
].to_yaml
