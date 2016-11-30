using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReviewExercise1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblShippingFeeAmount.Text = String.Format("{0:c}", Convert.ToDecimal(ddlShippingType.SelectedValue))+"/unit";
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        const decimal SHIPPING_COST = 0.35m;
        int quantity;
        int distance;
        decimal shippingCost;
        decimal shippingFee;

        try
        {
            quantity = Convert.ToInt32(txtQuantity.Text);
            distance = Convert.ToInt32(txtDistance.Text);
            shippingFee = Convert.ToDecimal(ddlShippingType.SelectedValue);
            shippingFee *= quantity;
            shippingCost = (quantity * distance * SHIPPING_COST) + shippingFee;

            lblShippingCost.ForeColor = System.Drawing.Color.Black;
            lblShippingCost.Text = String.Format("{0:c}", shippingCost);
        }catch (FormatException fe)
        {
            lblShippingCost.ForeColor = System.Drawing.Color.Red;
            lblShippingCost.Text = "ERROR";
        }
    }

    protected void ddlShippingType_SelectedIndexChanged(object sender, EventArgs e)
    {
        String shippingFee = String.Format("{0:c}", Convert.ToDecimal(ddlShippingType.SelectedValue));
        lblShippingFeeAmount.Text = shippingFee + "/unit";
    }
}