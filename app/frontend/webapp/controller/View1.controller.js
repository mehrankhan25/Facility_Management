sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("FacilityManagementSystem.com.frontend.controller.View1", {
            onInit: function () {
                jQuery.ajax({
                    url: "/catalog/MANAGEMENT_Users",
                    method: "GET",
                    success: function(data) {
                      // Handle the successful response
                      console.log("Data:", data.value);
                      var oModel = new sap.ui.model.json.JSONModel();
                      oModel.setData({ Users: data.value });
                      console.log("oModel", oModel.getData());
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                      // Handle the error
                      console.error("Error:", textStatus, errorThrown);
                    }
                  });


                 
            }
        });
    });
