using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IndiaDeals2Day.SharedComponents
{
    public static class ExtensionMethods
    {
        public static string SplitToNewLine(this string inputText)
        {
            int length = inputText.Length;
            string output = inputText;
            if (length > 100 && length <= 200)
            {
                output = inputText.Insert(100, "<br />");
            }
            if (length > 200 && length <= 300)
            {
                output = inputText.Insert(100, "<br />");
                output = output.Insert(200, "<br />");
            }
            if (length > 300 && length <= 400)
            {
                output = inputText.Insert(100, "<br />");
                output = output.Insert(200, "<br />");
                output = output.Insert(300, "<br />");
            }
            if (length > 400 && length <= 500)
            {
                output = inputText.Insert(100, "<br />");
                output = output.Insert(200, "<br />");
                output = output.Insert(300, "<br />");
                output = output.Insert(400, "<br />");
            }
            return output;
        }
    }
}
