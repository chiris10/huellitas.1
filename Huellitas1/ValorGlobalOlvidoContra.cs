﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Huellitas1
{
    public class ValorGlobalOlvidoContra
    {
        private static string _valorGlobal = string.Empty;
        public static string valorGlobal
        {
            get { return _valorGlobal; }
            set { _valorGlobal = value; }
        }
    }
}