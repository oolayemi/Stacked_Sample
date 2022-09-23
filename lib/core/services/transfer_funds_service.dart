//
// import 'package:stacked/stacked.dart';
//
// import '../models/epin_response.dart';
//
// class TransferFundsService with ReactiveServiceMixin {
//   List<Banks>? _banks = [];
//   List<Banks>? get banks => _banks;
//
//   List<AirTimeDataModel> _airtimePlan = [];
//   List<AirTimeDataModel> get airtimePlan => _airtimePlan;
//
//   List<CableBillers>? _cableBillers = [];
//   List<CableBillers>? get cableBillers => _cableBillers;
//
//   List<ElectricityBillers>? _electricityBillers = [];
//   List<ElectricityBillers>? get electricityBillers => _electricityBillers;
//
//   List<DataBillers> _dataBillers = [];
//   List<DataBillers> get dataBillers => _dataBillers;
//
//
//   List<SMEDataBillers>? _smeBillers = [];
//   List<SMEDataBillers>? get smeBillers => _smeBillers;
//
//   List<CorporateBillers>? _corporateBillers = [];
//   List<CorporateBillers>? get corporateBillers => _corporateBillers;
//
//   List<JambBillers>? _jambBillers = [];
//   List<JambBillers>? get jambBillers => _jambBillers;
//
//   List<WaecBillers>? _waecBillers = [];
//   List<WaecBillers>? get waecBillers => _waecBillers;
//
//   Map<String?, List<CableTvPackage>?> _packages = {};
//   Map<String?, List<CableTvPackage>?> get packages => _packages;
//
//   List<BettingData> _bettingList = [];
//   List<BettingData> get bettingList => _bettingList;
//
//   List<EPinData> _ePinBillers = [];
//   List<EPinData> get ePinBillers => _ePinBillers;
//
//   List<PlanData>? _planBillers = [];
//   List<PlanData>? get planBillers => _planBillers;
//
//   List<Banks>? _bankData = [];
//   List<Banks>? get bankData => _bankData;
//
//
//   String? url;
//
//   TransferFundsService() {
//     listenToReactiveValues([_banks, _airtimePlan, _cableBillers,
//       _electricityBillers, url, _dataBillers, _packages, _bettingList, _planBillers]);
//   }
//
//   void setBanks(List<Banks>? data) {
//     _banks = data;
//   }
//
//   void clearAirtimePlan() {
//     _airtimePlan = [];
//   }
//
//   void setAirtimePlan(AirTimeDataModel data) {
//     _airtimePlan.add(data);
//   }
//
//   void clearDataBillers() {
//     _dataBillers = [];
//   }
//
//   void setDataBillers(DataBillers data) {
//     _dataBillers.add(data);
//   }
//
//   void clearSMEBillers() {
//     _smeBillers = [];
//   }
//
//   void setSMEBillers(List<SMEDataBillers>? data) {
//     _smeBillers = data;
//   }
//
//   void setCorporateBillers(List<CorporateBillers>? data) {
//     _corporateBillers = data;
//   }
//
//   void setJambBillers(List<JambBillers>? data) {
//     _jambBillers = data;
//   }
//
//   void setWaecBillers(List<WaecBillers>? data) {
//     _waecBillers = data;
//   }
//
//   void setCableBillers(List<CableBillers>? data) {
//     _cableBillers = data;
//   }
//
//   void setElectricitybiller(List<ElectricityBillers>? data) {
//     _electricityBillers = data;
//   }
//
//   void setPlanList(List<PlanData>? data) {
//     _planBillers = data;
//   }
//
//   void setBankList(List<Banks>? data) {
//     _bankData = data;
//   }
//
//   void setBettingList(List<BettingData> data) {
//     // _bettingList.add(data);
//     _bettingList = data;
//   }
//
//   void setEPinbiller(List<EPinData> data) {
//     _ePinBillers = data;
//     // _ePinBillers.add(data);
//   }
//
//   void setUrl(String val) {
//     url = val;
//   }
//
//   void addPackage(String? biller, List<CableTvPackage>? packages) {
//     _packages.putIfAbsent(biller, () => packages);
//   }
// }