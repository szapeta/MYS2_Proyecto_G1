using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using SimioAPI;
using SimioAPI.Extensions;
using SimioAPI.Graphics;
using Simio;
using Simio.SimioEnums;
using System.Security.Permissions;

namespace _MYS2_F1
{
    class Region
    {

        private ISimioProject proyectoApi;
        private string rutabase = "[MYS2]F1.spfx";
        private string rutafinal = "[MYS2]F1_G1.spfx";
        private string[] warnings;
        private IModel model;
        private IIntelligentObjects intelligentObjects;
        public int contador_path = 1;

        public Region() {
            proyectoApi = SimioProjectFactory.LoadProject(rutabase, out warnings);
            model = proyectoApi.Models[1];
            intelligentObjects = model.Facility.IntelligentObjects;
        }

        public void CrearModelo() {
       
             SimioProjectFactory.SaveProject(proyectoApi, rutafinal, out warnings);
        }

        

     
        

        public void createTransferNode(int x, int y)
        {
            this.createObject("TransferNode", x, y);
        }

        public void createServer(double x, double y)
        {
            this.createObject("Server", x, y);
        }

        public void createSource(int x, int y)
        {
            this.createObject("Source", x, y);
        }
             

        //---------------------------------- Crear objetos y enlaces ----------------------------------//
        public void createObject(String type, double x, double y)
        {
            intelligentObjects.CreateObject(type, new FacilityLocation(x, 0, y));
        }

        public void createLink(String type, INodeObject nodo1, INodeObject nodo2)
        {
            intelligentObjects.CreateLink(type, nodo1, nodo2, null);
        }

        //------------------------------------- Modificar propiedades --------------------------------//
        public void updateProperty(String name, String property, String value)
        {
            model.Facility.IntelligentObjects[name].Properties[property].Value = value;
        }

        public void updateProperty2(String name, String property, Boolean value)
        {
           
        }


        //--------------------------------------- Modificar nombre  -----------------------------------//
        public void updateName(String oldName, String newName)
        {
            model.Facility.IntelligentObjects[oldName].ObjectName = newName;

        }

        //--------------------------------------- Crear Enlace  -----------------------------------//
        public void createPath(INodeObject nodo1, INodeObject nodo2)
        {
            this.createLink("Path", nodo1, nodo2);
        }
        public INodeObject getNodo(String name, int nodo)
        {
            return ((IFixedObject)model.Facility.IntelligentObjects[name]).Nodes[nodo];
        }
    }
}
