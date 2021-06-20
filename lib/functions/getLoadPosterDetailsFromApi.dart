import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_config/flutter_config.dart';
import 'package:liveasy/models/loadPosterModel.dart';

getLoadPosterDetailsFromApi({required String loadPosterId}) async {
  var loadPosterDetails;
  var jsonData;
  final String transporterApiUrl =
      FlutterConfig.get('transporterApiUrl').toString();
  final String shipperApiUrl = FlutterConfig.get('shipperApiUrl').toString();
  loadPosterId = loadPosterId.toString();
  try {
    if (loadPosterId.contains("transporter")) {
      http.Response response =
          await http.get(Uri.parse(transporterApiUrl + "/$loadPosterId"));
      jsonData = json.decode(response.body);

      LoadPosterModel loadPosterModel = LoadPosterModel();
      loadPosterModel.loadPosterId = jsonData["id"].toString();
      loadPosterModel.loadPosterPhoneNo = jsonData["phoneNo"].toString();
      loadPosterModel.loadPosterLocation =
          jsonData["transporterLocation"].toString();
      loadPosterModel.loadPosterName = jsonData["name"].toString();
      loadPosterModel.loadPosterCompanyName =
          jsonData["companyName"].toString();
      loadPosterModel.loadPosterKyc = jsonData["kyc"].toString();
      loadPosterModel.loadPosterCompanyApproved =
          jsonData["companyApproved"].toString();
      loadPosterModel.loadPosterApproved =
          jsonData["transporterApproved"].toString();
      return loadPosterModel;
    }
    if (loadPosterId.contains("shipper")) {
      http.Response response =
          await http.get(Uri.parse(shipperApiUrl + "/$loadPosterId"));
      jsonData = json.decode(response.body);

      LoadPosterModel loadPosterModel = LoadPosterModel();
      loadPosterModel.loadPosterId = jsonData["id"].toString();
      loadPosterModel.loadPosterName = jsonData["name"].toString();
      loadPosterModel.loadPosterCompanyName =
          jsonData["companyName"].toString();
      loadPosterModel.loadPosterPhoneNo = jsonData["phoneNo"];
      loadPosterModel.loadPosterKyc = jsonData["kyc"].toString();
      loadPosterModel.loadPosterLocation = jsonData["phoneNo"];
      loadPosterModel.loadPosterCompanyApproved =
          jsonData["approved"].toString();
      loadPosterModel.loadPosterAccountVerificationInProgress =
          jsonData["accountVerificationInProgress"].toString();

      loadPosterDetails.add(loadPosterModel);
      return loadPosterModel;
    }
  } catch (e) {
    print(e);
  }
}