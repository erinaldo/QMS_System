﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QMS_System.Data.Model
{
   public class VideoPlaylist
    {
        public int Index { get; set; }
        public TimeSpan Duration { get; set; }
        public double _Duration { get; set; }
        public string Path { get; set; }
    }
}
