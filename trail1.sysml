package AdventOfSysMLv2_Day4 {
    private import ScalarValues::*;
    part def SantaSleighSketch {
        part dashboard { doc /* Naughty-Nice dashboard. */ }
        abstract ref part reindeer : Reindeer [40];
    }

    part def SantaSleighDesign specializes SantaSleighSketch {
        part nnDashboard redefines dashboard defined by NaughtyNiceDashboard;
        ref part rudolph subsets reindeer {
            attribute :>> noseColor = Color::green;
        }
    }

    part def NaughtyNiceDashboard;

    part def Reindeer {
        attribute noseColor : Color;
    }

    enum def Color{
          red;
    green;
    blue;
    black;
    white;

    }
    }
    