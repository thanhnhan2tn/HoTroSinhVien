package com.thanhnhan;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class ListSanPham
 */
public class ListSanPham extends MVCPortlet {

	public void SearchSP(ActionRequest request, ActionResponse response) {
		// Get keyword
		String SPName = ParamUtil.getString(request, "spname");
		request.setAttribute("SPName", SPName);

	}
}
