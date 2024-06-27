using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Huellitas1
{
    public class ValorGLobalOlvidoContra
    {
        private static string  _ValorGlobal= string .Empty;
        public static string valorglobal
        {
            get { return _ValorGlobal; }
            set { _ValorGlobal = value; }
        }
    
    }
}