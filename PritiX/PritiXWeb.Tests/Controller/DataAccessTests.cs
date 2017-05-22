using Microsoft.VisualStudio.TestTools.UnitTesting;
using PritiXWeb.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PritiXWeb.Controller.Tests
{
    [TestClass()]
    public class DataAccessTests
    {
        [TestMethod()]
        public void LoginUserTest()
        {
            double testresult, expectedresult;
            expectedresult = 1;
            DataAccess da = new DataAccess();
            testresult= System.Convert.ToDouble(da.LoginUser("admin@pritix.com", "admin"));
            Assert.AreEqual(expectedresult, testresult, 0.1);
        }
    }
}