<%@ Page Title="Filter of Churches & Organizations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="church_organization.aspx.cs" Inherits="SimbahanApp.church_organization" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <%--   <script src="Scripts/helpers.js"></script>
    <script src="Scripts/list.js"></script>--%>
    <input type="hidden" id="Longitude" runat="server" />
    <input type="hidden" id="Latitude" runat="server" />
    <%--<asp:Button ID="triggerMe" runat="server" OnClick="triggerMe_Click" />--%>
    <div class="row">
        <div <%--style="margin-top:45px"--%>></div>
        <div class="col-sm-5">
            <div class="map">
                <div id="churchMap" class="height"></div>
            </div>
    
            <div class="map1">
                <div id="adorationMap" class="height"></div>
            </div>
            
            <div class="map2">
                <div id="organizationMap" class="height"></div>
            </div>
            </div>
        <div class="col-sm-7 bg-white">
            <input type="hidden" id="selectedCategory" runat="server" />
            <br />        
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                    <ul class="nav nav-tabs colorTabs blue">
                        <li><a href="#churches-pane" data-toggle="tab" class="no-margin c sss"><strong>CHURCHES</strong></a></li>
                        <li><a href="#adorations-pane" data-toggle="tab" class="no-margin ac ssss"><strong>ADORATION CHAPELS</strong></a></li>
                        <li><a href="#organizations-pane" data-toggle="tab" class="no-margin org sssss"><strong>ORGANIZATIONS</strong></a></li>
                    </ul>
                </div>
                <div class="panel-body-churches tab-bg">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="churches-pane">
                            <br />
                            <form class="form-inline" role="form">
                                <div class="row">
                                    <div class="col-md-7">
                                        <input class="form-control input-lg" id="churchKeyword" data-name="Keyword" runat="server" placeholder="Keyword" type="text" />
                                        <label id="errorChurchKeyword" class="text-danger" style="display: none;"></label>
                                    </div>
                                    <div class="col-md-5">
                                        <input class="form-control input-lg" id="churchLocation" data-name="Location" runat="server" placeholder="Location" type="text" />
                                        <label id="errorChurchLocation" class="text-danger" style="display: none;"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Mass Schedule</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <p style="font-weight: bold !important;">Schedule:</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectChurchSchedule">
                                            <option value="">- SELECT DAY -</option>
                                            <option value="8">Today</option>
                                            <option value="9">Any day</option>
                                            <option value="1">Sunday</option>
                                            <option value="2">Monday</option>
                                            <option value="3">Tuesday</option>
                                            <option value="4">Wednesday</option>
                                            <option value="5">Thursday</option>
                                            <option value="6">Friday</option>
                                            <option value="7">Saturday</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <label class="label-normal" style="font-weight: bold !important;">Time:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectChurchMassTime">
                                            <option value="">- SELECT TIME -</option>
                                            <option value="">Anytime</option>
                                            <option value="5">4:00 - 5:00 AM</option>
                                            <option value="6">5:00 - 6:00 AM</option>
                                            <option value="7">6:00 - 7:00 AM</option>
                                            <option value="8">7:00 - 8:00 AM</option>
                                            <option value="9">8:00 - 9:00 AM</option>
                                            <option value="10">9:00 - 10:00 AM</option>
                                            <option value="11">10:00 - 11:00 AM</option>
                                            <option value="12">11:00 - 12:00 PM</option>
                                            <option value="13">12:00 - 1:00 PM</option>
                                            <option value="14">1:00 - 2:00 PM</option>
                                            <option value="15">2:00 - 3:00 PM</option>
                                            <option value="16">3:00 - 4:00 PM</option>
                                            <option value="17">4:00 - 5:00 PM</option>
                                            <option value="18">5:00 - 6:00 PM</option>
                                            <option value="19">6:00 - 7:00 PM</option>
                                            <option value="20">7:00 - 8:00 PM</option>
                                            <option value="21">8:00 - 9:00 PM</option>
                                            <option value="22">9:00 - 10:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <p style="font-weight: bold !important;">Language:</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectChurchLanguage">
                                            <option value="">- SELECT LANGUAGE -</option>
                                            <option value="English">English</option>
                                            <option value="Tagalog">Tagalog</option>
                                            <option value="Cebuano">Cebuano</option>
                                            <option value="Kapampangan">Kapampangan</option>
                                            <option value="Chinese">Chinese</option>
                                            <option value="Ilocano">Ilocano</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Confession Schedule</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <p style="font-weight: bold !important;">With Confession:</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectChurchConfessionDay">
                                            <option value="">- SELECT DAY -</option>
                                            <option value="8">Today</option>
                                            <option value="">Any day</option>
                                            <option value="1">Sunday</option>
                                            <option value="2">Monday</option>
                                            <option value="3">Tuesday</option>
                                            <option value="4">Wednesday</option>
                                            <option value="5">Thursday</option>
                                            <option value="6">Friday</option>
                                            <option value="7">Saturday</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <label class="label-normal" style="font-weight: bold !important;">Time:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectChurchConfessionTime">
                                            <option value="">- SELECT TIME -</option>
                                            <option value="">Anytime</option>
                                            <option value="5">4:00 - 5:00 AM</option>
                                            <option value="6">5:00 - 6:00 AM</option>
                                            <option value="7">6:00 - 7:00 AM</option>
                                            <option value="8">7:00 - 8:00 AM</option>
                                            <option value="9">8:00 - 9:00 AM</option>
                                            <option value="10">9:00 - 10:00 AM</option>
                                            <option value="11">10:00 - 11:00 AM</option>
                                            <option value="12">11:00 - 12:00 PM</option>
                                            <option value="13">12:00 - 1:00 PM</option>
                                            <option value="14">1:00 - 2:00 PM</option>
                                            <option value="15">2:00 - 3:00 PM</option>
                                            <option value="16">3:00 - 4:00 PM</option>
                                            <option value="17">4:00 - 5:00 PM</option>
                                            <option value="18">5:00 - 6:00 PM</option>
                                            <option value="19">6:00 - 7:00 PM</option>
                                            <option value="20">7:00 - 8:00 PM</option>
                                            <option value="21">8:00 - 9:00 PM</option>
                                            <option value="22">9:00 - 10:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Church Ventilation</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3" style="padding-right: 0px; width:27%">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="churchHasAirConditioned">
                                                <label for="churchHasAirConditioned" style="font-weight: bold !important;">Air Conditioned</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3" style="width:27%;">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="churchHasCeilingFan">
                                                <label for="churchHasCeilingFan" style="font-weight: bold !important;">Ceiling Fan</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3" style="width:27%">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="churchHasOrdinaryFan">
                                                <label for="churchHasOrdinaryFan" style="font-weight: bold !important;">Ordinary Fan</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="btnGroupMoreFilter">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <button id="btnResetChurchFilter" class="btn btn-lg btn-primary btn-block shadow"><i class="fa fa-remove"></i> Clear Form</button>
                                        </div>
                                        <div class="col-md-4">
                                            <button id="btnSearchChurches" class="btn btn-lg btn-primary btn-block shadow"><i class="fa fa-search"></i> Search</button>
                                        </div>
                                        <div class="col-sm-4">
                                            <button id="btnShowMoreFilter" class="btn btn-lg btn-primary compress-horizontal shadow">More Filters</button>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 15px;">
                                        <div class="well result-status text-center shadow">
                                            <label class="label-normal" id="churchResultsCount"></label>
                                        </div>
                                    </div>
                                </div>
                                <div id="moreFiltersPane" style="display: none;">
                                    <div class="row">
                                        <h5 class="normalize-h5">Church Type</h5>
                                    </div>
                                    <div class="row">
                                        <input class="churchtype" type="radio" id="isEmptyChurchType" name="churchtype" value="" checked style="display: none;">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchtype" type="radio" id="isChapel" name="churchtype" value="5">
                                                    <label for="isChapel">Chapel</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchtype" type="radio" id="isShrine" name="churchtype" value="4">
                                                    <label for="isShrine">Shrine</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchtype" type="radio" id="isBasilica" name="churchtype" value="3">
                                                    <label for="isBasilica">Basilica</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchtype" type="radio" id="isCathedral"  name="churchtype" value="2">
                                                    <label for="isCathedral">Cathedral</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchtype" type="radio" id="isParish" name="churchtype" value="1">
                                                    <label for="isParish">Parish</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h5 class="normalize-h5">Church Site</h5>
                                    </div>
                                    <div class="row">
                                        <input class="churchlocation" type="radio" id="isEmptyChurchLocation" name="churchlocation" value="" checked style="display: none;">
                                        <div class="col-md-3" style="padding-right: 0px;">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchlocation" type="radio" id="isChurchSeparate" name="churchlocation" value="1">
                                                    <label for="isChurchSeparate">Standalone</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchlocation" type="radio" id="isChurchInMall" name="churchlocation" value="3">
                                                    <label for="isChurchInMall">Mall</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchlocation" type="radio" id="isChurchInHospital" name="churchlocation" value="5">
                                                    <label for="isChurchInHospital">Hospital</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="square-radio">
                                                    <input class="churchlocation" type="radio" id="isChurchInSchool" name="churchlocation" value="4">
                                                    <label for="isChurchInSchool">School</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h5 class="normalize-h5">Church Parking</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="churchHasStreetParking">
                                                    <label for="churchHasStreetParking">Street Parking</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="churchHasMallParking">
                                                    <label for="churchHasMallParking">Mall Parking</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4" style="padding-right: 0px;">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="churchHasPrivateParking">
                                                    <label for="churchHasPrivateParking">Private Church Parking</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="btnGroupApplyFilter" style="display: none;">
                                    <div class="row">
                                        <div class="col-md-2">

                                        </div>
                                        <div class="col-md-4">
                                            <button id="btnCancelChurchFilter" class="btn btn-lg btn-default compress-horizontal shadow">Cancel</button>
                                        </div>
                                        <div class="col-md-4">
                                            <button id="btnApplyChurchFilter" class="btn btn-lg btn-primary compress-horizontal shadow">Apply Filters</button>
                                        </div>
                                        <div class="col-md-2">

                                        </div>
                                    </div>
                                </div>
                                <hr />

                                <div id="churchResultContainer">
                                    <ul class="list"></ul>
                                    <ul class="pagination"></ul>
                                </div>

                                <hr />
                                <p class="text-muted" id="churchPaginationText"></p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="pagination" id="churchPagination">
                                            <%--<li class="disabled"><a href="#">&laquo;</a></li>
                                            <li class="active"><a>1 <span class="sr-only">(current)</span></a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li class="disabled"><a>...<span class="sr-only">(current)</span></a></li>
                                            <li><a href="#">17</a></li>
                                            <li><a href="#">&raquo;</a></li>--%>
                                        </ul>
                                    </div>
                                    <div class="col-md-3">

                                    </div>
                                    <div class="col-md-1 show-filter-label">
                                        <p>Show: </p>
                                    </div>
                                    <div class="col-sm-2 show-filter-field">
                                        <select class="form-control"  id="churchDisplayLimit">
                                            <option value="5">5</option>
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="30">30</option>
                                            <option value="50">50</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane" id="adorations-pane">
                            <br />
                            <form class="form-inline" role="form">
                                <div class="row">
                                    <div class="col-md-7">
                                        <input class="form-control input-lg" id="adorationKeyword" runat="server" data-name="Keyword" placeholder="Keyword" type="text" />
                                        <label id="errorAdorationKeyword" class="text-danger" style="display: none;"></label>
                                    </div>
                                    <div class="col-md-5">
                                        <input class="form-control input-lg" id="adorationLocation" runat="server" data-name="Location" placeholder="Location" type="text" />
                                        <label id="errorAdorationLocation" class="text-danger" style="display: none;"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Adoration Chapel Schedule</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 full-width">
                                        <div class="form-group">
                                            <p style="font-weight: bold !important;">Adoration Chapel: </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectAdorationDay">
                                            <option value="">- SELECT DAY -</option>
                                            <option value="8">Open Today</option>
                                            <option value="">Any day</option>
                                            <option value="1">Sunday</option>
                                            <option value="2">Monday</option>
                                            <option value="3">Tuesday</option>
                                            <option value="4">Wednesday</option>
                                            <option value="5">Thursday</option>
                                            <option value="6">Friday</option>
                                            <option value="7">Saturday</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <label class="label-normal" style="font-weight: bold !important;">Time:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectAdorationTime">
                                            <option value="">- SELECT TIME -</option>
                                            <option value="">Anytime</option>
                                            <option value="5">4:00 - 5:00 AM</option>
                                            <option value="6">5:00 - 6:00 AM</option>
                                            <option value="7">6:00 - 7:00 AM</option>
                                            <option value="8">7:00 - 8:00 AM</option>
                                            <option value="9">8:00 - 9:00 AM</option>
                                            <option value="10">9:00 - 10:00 AM</option>
                                            <option value="11">10:00 - 11:00 AM</option>
                                            <option value="12">11:00 - 12:00 PM</option>
                                            <option value="13">12:00 - 1:00 PM</option>
                                            <option value="14">1:00 - 2:00 PM</option>
                                            <option value="15">2:00 - 3:00 PM</option>
                                            <option value="16">3:00 - 4:00 PM</option>
                                            <option value="17">4:00 - 5:00 PM</option>
                                            <option value="18">5:00 - 6:00 PM</option>
                                            <option value="19">6:00 - 7:00 PM</option>
                                            <option value="20">7:00 - 8:00 PM</option>
                                            <option value="21">8:00 - 9:00 PM</option>
                                            <option value="22">9:00 - 10:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Chapel Site</h5>
                                </div>
                                <div class="row">
                                    <input class="adorationlocation" type="radio" id="isEmptyAdorationLocation" name="adorationlocation" value="" checked="" style="display: none;">
                                    <div class="col-md-3" style="padding-right: 0px;">
                                        <div class="form-group">
                                            <div class="square-radio">
                                                <input class="adorationlocation" name="adorationlocation" type="radio" id="isAdorationSeparate" value="1">
                                                <label for="isAdorationSeparate" style="font-weight: bold !important;">Standalone</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="square-radio">
                                                <input class="adorationlocation" name="adorationlocation" type="radio" id="isAdorationInMall" value="3">
                                                <label for="isAdorationInMall" style="font-weight: bold !important;">Mall</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="square-radio">
                                                <input class="adorationlocation" name="adorationlocation" type="radio" id="isAdorationInHospital" value="5">
                                                <label for="isAdorationInHospital" style="font-weight: bold !important;">Hospital</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="square-radio">
                                                <input class="adorationlocation" name="adorationlocation" type="radio" id="isAdorationInSchool" value="4">
                                                <label for="isAdorationInSchool" style="font-weight: bold !important;">School</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important;">Adoration Chapel Ventilation</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3" style="padding-right: 0px;">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="adorationHasAirCondition">
                                                <label for="adorationHasAirCondition" style="font-weight: bold !important;">Air-conditioned</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="adorationHasElectricFan">
                                                <label for="adorationHasElectricFan" style="font-weight: bold !important;">Electric Fan</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-4">
                                        <button id="btnResetAdorationFilter" class="btn btn-lg btn-primary btn-block shadow"><i class="fa fa-remove"></i> Clear Form</button>
                                    </div>
                                    <div class="col-md-4">
                                        <button id="btnSearchAdorations" class="btn btn-lg btn-primary btn-block shadow"><i class="fa fa-search"></i> Search</button>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="well result-status text-center shadow">
                                            <label class="label-normal" id="adorationResultsCount"></label>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div id="adorationResultContainer">
                                    
                                </div>
                                <hr />
                                <p class="text-muted" id="adorationPaginationText"></p>
                                <div class="row">
                                    <div class="col-md-6">
                                        
                                    </div>
                                    <div class="col-md-3">

                                    </div>
                                    <div class="col-md-1 show-filter-label">
                                        <p>Show: </p>
                                    </div>
                                    <div class="col-sm-2 show-filter-field">
                                        <select class="form-control" id="adorationDisplayLimit">
                                            <option value="5">5</option>
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="30">30</option>
                                            <option value="50">50</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane" id="organizations-pane">
                            <br />
                            <form class="form-inline" role="form">
                                <div class="row">
                                    <div class="col-md-7">
                                        <input class="form-control input-lg" id="organizationKeyword" runat="server" placeholder="Keyword" type="text" />
                                    </div>
                                    <div class="col-md-5">
                                        <input class="form-control input-lg" id="organizationLocation" runat="server" placeholder="Location" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-4">
                                        <h5 class="normalize-h5 vertical-align-center" style="font-weight: bold !important;">Organization Name:</h5>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control input-lg" id="selectOrganizationName" style="margin-left:-12%;">
                                            <option value="">ALL</option>
                                            <option value="">Light of Jesus Family</option>
                                        </select>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                
                                </div>
                                <div class="row">
                                    <div class="col-md-3 full-left-width">
                                        <h5 class="normalize-h5 vertical-align-center" style="font-weight: bold !important; margin-left:9%;">Schedule:</h5>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectOrganizationSchedule" style="margin-left:4%;">
                                            <option value="">- SELECT SCHEDULE -</option>
                                            <option value="1">Worship</option>
                                            <option value="1">Mass</option>
                                            <option value="3">Bible Study</option>
                                        </select>
                                    </div>
                                </div>
                                <br />
                                <div id="organizationSchedulePanel" style="display: none;">
                                <div class="row">
                                    <div class="col-md-3" style="padding-right: 0px;">
                                        <p style="font-weight: bold !important;">Schedule - Day:</p>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectOrganizationDay">
                                            <option value="">- SELECT DAY -</option>
                                            <option value="8">Open Today</option>
                                            <option value="">Any day</option>
                                            <option value="1">Sunday</option>
                                            <option value="2">Monday</option>
                                            <option value="3">Tuesday</option>
                                            <option value="4">Wednesday</option>
                                            <option value="5">Thursday</option>
                                            <option value="6">Friday</option>
                                            <option value="7">Saturday</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <p style="font-weight: bold !important;">Time:</p>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectOrganizationTime">
                                            <option value="">Anytime</option>
                                            <option value="5">4:00 - 5:00 AM</option>
                                            <option value="6">5:00 - 6:00 AM</option>
                                            <option value="7">6:00 - 7:00 AM</option>
                                            <option value="8">7:00 - 8:00 AM</option>
                                            <option value="9">8:00 - 9:00 AM</option>
                                            <option value="10">9:00 - 10:00 AM</option>
                                            <option value="11">10:00 - 11:00 AM</option>
                                            <option value="12">11:00 - 12:00 PM</option>
                                            <option value="13">12:00 - 1:00 PM</option>
                                            <option value="14">1:00 - 2:00 PM</option>
                                            <option value="15">2:00 - 3:00 PM</option>
                                            <option value="16">3:00 - 4:00 PM</option>
                                            <option value="17">4:00 - 5:00 PM</option>
                                            <option value="18">5:00 - 6:00 PM</option>
                                            <option value="19">6:00 - 7:00 PM</option>
                                            <option value="20">7:00 - 8:00 PM</option>
                                            <option value="21">8:00 - 9:00 PM</option>
                                            <option value="22">9:00 - 10:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <br />
                                <%--<div class="row">
                                    <div class="col-md-3">
                                        <p>Language:</p>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" id="selectOrganizationLanguage">
                                            <option value="">- SELECT LANGUAGE -</option>
                                            <option value="English">English</option>
                                            <option value="Tagalog">Tagalog</option>
                                            <option value="Cebuano">Cebuano</option>
                                            <option value="Kapampangan">Kapampangan</option>
                                            <option value="Chinese">Chinese</option>
                                            <option value="Ilocano">Ilocano</option>
                                        </select>
                                    </div>
                                </div>--%>
                                </div>
                                <div class="row">
                                    <h5 class="normalize-h5" style="font-weight: bold !important; margin-left:2%;">Activities:</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasWorship">
                                                <label for="hasWorship" style="font-weight: bold !important;">Worship</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasBibleStudy">
                                                <label for="hasBibleStudy" style="font-weight: bold !important;">Bible Study</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasMass">
                                                <label for="hasMass" style="font-weight: bold !important;">Mass</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasRetreats">
                                                <label for="hasRetreats" style="font-weight: bold !important;">Retreats</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasRecollection">
                                                <label for="hasRecollection" style="font-weight: bold !important;">Recollection</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4" style="padding-right: 0px;">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasVolunteerWorks">
                                                <label for="hasVolunteerWorks" style="font-weight: bold !important;">Volunteer Works</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasTalks">
                                                <label for="hasTalks" style="font-weight: bold !important;">Talks</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="ckbox">
                                                <input type="checkbox" id="hasCamps">
                                                <label for="hasCamps" style="font-weight: bold !important;">Camps</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div id="btnGroupMoreFilterOrg">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <button id="btnResetOrganizationFilter" class="btn btn-lg btn-primary compress-horizontal shadow"><i class="fa fa-remove"></i> Clear Form</button>
                                        </div>
                                        <div class="col-sm-4">
                                            <button @click.prevent="OnSearchButtonClicked" id="btnSearchOrganization" class="btn btn-lg btn-primary compress-horizontal shadow"><i class="fa fa-search"></i> Search</button>
                                        </div>
                                        <div class="col-sm-4">
                                            <button id="btnShowMoreFilterOrganization" class="btn btn-lg btn-primary compress-horizontal shadow">More Filters</button>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 15px;">
                                        <div class="well result-status text-center shadow">
                                            <label class="label-normal" id="organizationResultsCount"></label>
                                        </div>
                                    </div>
                                </div>
                                <div id="moreFiltersPaneOrg" style="display: none;">
                                    <div class="row">
                                        <h5 class="normalize-h5">ATTENDEES</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasMenAttendees">
                                                    <label for="hasMenAttendees">Men</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasWomenAttendees">
                                                    <label for="hasWomenAttendees">Women</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasSingleAttendees">
                                                    <label for="hasSingleAttendees">Singles</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasCoupleAttendees">
                                                    <label for="hasCoupleAttendees">Couples</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasProfessionalAttendees">
                                                    <label for="hasProfessionalAttendees">Professionals</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasStudentAttendees">
                                                    <label for="hasStudentAttendees">Students</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasMissionariesAttendees">
                                                    <label for="hasMissionariesAttendees">Missionaries</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                        
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h5 class="normalize-h5">ORG VENUE</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="isOrganizationInChurch">
                                                    <label for="isOrganizationInChurch">Church</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="isOrganizationInMall">
                                                    <label for="isOrganizationInMall">Mall</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="isOrganizationInSchool">
                                                    <label for="isOrganizationInSchool">Schools</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3" style="padding-right: 0px;">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="isOrganizationInPrivate">
                                                    <label for="isOrganizationInPrivate">Private Building</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="isOrganizationInPublic">
                                                    <label for="isOrganizationInPublic">Public Place</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h5 class="normalize-h5">ORG VENUE VENTILATION</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3" style="padding-right: 0px;">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasAirCondition">
                                                    <label for="organizationHasAirCondition">Air Conditioned</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasCeilingFan">
                                                    <label for="organizationHasCeilingFan">Ceiling Fan</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasWallFan">
                                                    <label for="organizationHasWallFan">Wall Fan</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasStandardFan">
                                                    <label for="organizationHasStandardFan">Standard Fan</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h5 class="normalize-h5">VEHICLE PARKING</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasStreetParking">
                                                    <label for="organizationHasStreetParking">Street Parking</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="organizationHasMallParking">
                                                    <label for="hasMallParking">Mall Parking</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <div class="ckbox">
                                                    <input type="checkbox" id="hasSeparateParking">
                                                    <label for="hasSeparateParking">Separate Parking Lot</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="btnGroupApplyFilterOrganization" style="display: none;">
                                    <br />
                                    <div class="row">
                                        <div class="col-md-2">

                                        </div>
                                        <div class="col-sm-4">
                                            <button id="btnCancelOrganizationFilter" class="btn btn-lg btn-default compress-horizontal shadow">Cancel</button>
                                        </div>
                                        <div class="col-sm-4">
                                            <button id="btnApplyOrganizationFilter" class="btn btn-lg btn-primary compress-horizontal shadow">Apply Filters</button>
                                        </div>
                                        <div class="col-md-2">

                                        </div>
                                    </div>
                                </div>


                                <hr />

                                <div id="organizationResultContainer">
                                    <%--<organization-item v-for="organization in organizations" :organization="organization" :key="organization.Id"></organization-item>--%>
                                </div>

                                <hr />
                                <p class="text-muted" id="organizationPaginationText"></p>

                                <div class="row">
                                    <div class="col-md-6">
                                       <%-- <paginate
                                            :page-count="pages"
                                            :margin-pages="2"
                                            :page-range="3"
                                            :initial-page="0"
                                            :container-class="'pagination'"
                                            :page-class="'page-item'"
                                            :page-link-class="'page-link-item'"
                                            :prev-class="'prev-item'"
                                            :prev-link-class="'prev-link-item'"
                                            :next-class="'next-item'"
                                            :next-link-class="'next-link-item'"
                                            :click-handler="OnPageClicked"></paginate>--%>
                                    </div>
                                    <div class="col-md-3">

                                    </div>
                                    <div class="col-md-1 show-filter-label">
                                        <p>Show: </p>
                                    </div>
                                    <div class="col-sm-2 show-filter-field">
                                        <select class="form-control" v-model="limit" @change="OnLimitChanged" id="organizationDisplayLimit">
                                            <option value="5">5</option>
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="30">30</option>
                                            <option value="50">50</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ScriptsPlaceHolder" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        Vue.component('paginate', VuejsPaginate)
        Vue.component('organization-item',
            {
                props: ['organization'],
                template: '<a href="#" target="_blank" id="churchItem" :data-id="organization.Id" :data-mask-data="{{ organization.OrgMasking }}" class="organizationItem">' +
                    '<div class="row church-result">' +
                    '<div class="col-md-4">' +
                    '<img class="img-responsive" :src="organization.Photos[0]">' +
                    '</div>' +
                    '<div class="col-md-8">' +
                    '<h4 class="church-name text-danger">{{ organization.Name }}</h4>' +
                    '<p class="church-location text-muted">{{ organization.Address }}</p>' +
                    '<div class="church-details">' +
                    '<p>Organization Name: <strong class="name">{{ organization.ParentOrganization }}</strong></p>' +
                    '<p>Worship Schedule Today: <strong class="mass">{{ (organization.TodayMass.length > 0) ? organization.TodayMass[0].Day + " " + organization.TodayMass.map(function (tMass, key) { return tMass.Time; }).join(", ") : "" }}</strong></p>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</a>'
                
            });

        var orgVM = new Vue({
            el: '#organizations-pane',
            data: {
                allOrganizations: [],
                organizations: [],
                limit: 5,
                pages: 1,
                page: 1
            },
            computed: {
            },
            methods: {
                OnSearchButtonClicked: function() {

                },
                OnLimitChanged: function () {
                    this.pages = Math.ceil(this.allOrganizations.length / this.limit);
                    this.organizations = _(this.allOrganizations).first(this.limit);
                },
                OnPageClicked: function (page) {
                    this.page = page;
                    var orgs = Object.assign([], this.allOrganizations);

                    this.organizations = orgs.splice(this.getFirstItem(page) - 1, this.limit);
                },
                getFirstItem: function (page) {
                    return (page - 1) * this.limit + 1;
                }
            },
            watch: {
                allOrganizations: function(value) {
                    this.pages = Math.ceil(value.length / this.limit);
                }
            }
        });
    </script>
    <script type="text/javascript">
        var clientLocation = User.CurrentPosition();


        var filterCache = new FilterCache();

        filterCache.registerControls("churchKeyword", new Textbox("<%=churchKeyword.ClientID%>"));
        filterCache.registerControls("churchLocation", new Textbox("<%=churchLocation.ClientID%>"));
        filterCache.registerControls("selectChurchSchedule", new Selectbox("selectChurchSchedule"));
        filterCache.registerControls("selectChurchMassTime", new Selectbox("selectChurchMassTime"));
        filterCache.registerControls("selectChurchLanguage", new Selectbox("selectChurchLanguage"));
        filterCache.registerControls("selectChurchConfessionDay", new Selectbox("selectChurchConfessionDay"));
        filterCache.registerControls("selectChurchConfessionTime", new Selectbox("selectChurchConfessionTime"));
        filterCache.registerControls("churchHasAirConditioned", new Checkbox("churchHasAirConditioned"));
        filterCache.registerControls("churchHasCeilingFan", new Checkbox("churchHasCeilingFan"));
        filterCache.registerControls("churchHasOrdinaryFan", new Checkbox("churchHasOrdinaryFan"));
        filterCache.registerControls("churchtype", new Radiobutton("churchtype"));
        filterCache.registerControls("churchlocation", new Radiobutton("churchlocation"));
        filterCache.registerControls("churchHasStreetParking", new Checkbox("churchHasStreetParking"));
        filterCache.registerControls("churchHasMallParking", new Checkbox("churchHasMallParking"));
        filterCache.registerControls("churchHasPrivateParking", new Checkbox("churchHasPrivateParking"));

        var orgFilterCache = new FilterCache();

        orgFilterCache.registerControls("organizationKeyword", new Textbox("<%= organizationKeyword.ClientID %>"));
        orgFilterCache.registerControls("organizationLocation", new Textbox("<%= organizationLocation.ClientID %>"));
        orgFilterCache.registerControls("selectOrganizationSchedule", new Selectbox("selectOrganizationSchedule"));
        orgFilterCache.registerControls("selectOrganizationDay", new Selectbox("selectOrganizationDay"));
        orgFilterCache.registerControls("selectOrganizationTime", new Selectbox("selectOrganizationTime"));
        orgFilterCache.registerControls("selectOrganizationLanguage", new Selectbox("selectOrganizationLanguage"));
        orgFilterCache.registerControls("hasWorship", new Checkbox("hasWorship"));
        orgFilterCache.registerControls("hasBibleStudy", new Checkbox("hasBibleStudy"));
        orgFilterCache.registerControls("hasMass", new Checkbox("hasMass"));
        orgFilterCache.registerControls("hasRetreats", new Checkbox("hasRetreats"));
        orgFilterCache.registerControls("hasRecollection", new Checkbox("hasRecollection"));
        orgFilterCache.registerControls("hasVolunteerWorks", new Checkbox("hasVolunteerWorks"));
        orgFilterCache.registerControls("hasTalks", new Checkbox("hasTalks"));
        orgFilterCache.registerControls("hasCamps", new Checkbox("hasCamps"));
        orgFilterCache.registerControls("hasMenAttendees", new Checkbox("hasMenAttendees"));
        orgFilterCache.registerControls("hasWomenAttendees", new Checkbox("hasWomenAttendees"));
        orgFilterCache.registerControls("hasSingleAttendees", new Checkbox("hasSingleAttendees"));
        orgFilterCache.registerControls("hasCoupleAttendees", new Checkbox("hasCoupleAttendees"));
        orgFilterCache.registerControls("hasProfessionalAttendees", new Checkbox("hasProfessionalAttendees"));
        orgFilterCache.registerControls("hasStudentAttendees", new Checkbox("hasStudentAttendees"));
        orgFilterCache.registerControls("hasMissionariesAttendees", new Checkbox("hasMissionariesAttendees"));
        orgFilterCache.registerControls("isOrganizationInChurch", new Checkbox("isOrganizationInChurch"));
        orgFilterCache.registerControls("isOrganizationInMall", new Checkbox("isOrganizationInMall"));
        orgFilterCache.registerControls("isOrganizationInSchool", new Checkbox("isOrganizationInSchool"));
        orgFilterCache.registerControls("isOrganizationInPrivate", new Textbox("isOrganizationInPrivate"));
        orgFilterCache.registerControls("isOrganizationInPublic", new Checkbox("isOrganizationInPublic"));
        orgFilterCache.registerControls("organizationHasAirCondition", new Checkbox("organizationHasAirCondition"));
        orgFilterCache.registerControls("organizationHasCeilingFan", new Checkbox("organizationHasCeilingFan"));
        orgFilterCache.registerControls("organizationHasWallFan", new Checkbox("organizationHasWallFan"));
        orgFilterCache.registerControls("organizationHasStandardFan", new Checkbox("organizationHasStandardFan"));
        orgFilterCache.registerControls("organizationHasStreetParking", new Checkbox("organizationHasStreetParking"));
        orgFilterCache.registerControls("hasMallParking", new Checkbox("hasMallParking"));
        orgFilterCache.registerControls("hasSeparateParking", new Checkbox("hasSeparateParking"));

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            var target = $(e.target).attr("href");
            
            switch (target) {
            case '#churches-pane':
                if (churchMap == null) {
                    setTimeout(function() {
                        churchMap = new GMap(document.getElementById("churchMap"), {
                            center: clientLocation == null ? new google.maps.LatLng(14.651129, 121.029536) : clientLocation,
                            zoom: 14,
                            scrollwheel: false,
                            mapTypeId: google.maps.MapTypeId.TERRAIN
                        });

                        churchMap.Create();

                        churchMap.AddMarker(0, {
                            position: clientLocation == null ? new google.maps.LatLng(28.39404819, -91.38743867) : clientLocation,
                            title: 'You\'re here!'
                        });
                    }, 500);
                }
                break;
            case '#adorations-pane':
                if (adorationMap == null) {
                    setTimeout(function() {
                        adorationMap = new GMap(document.getElementById("adorationMap"), {
                            center: clientLocation == null ? new google.maps.LatLng(14.651129, 121.029536) : clientLocation,
                            zoom: 14,
                            scrollwheel: false,
                            mapTypeId: google.maps.MapTypeId.TERRAIN
                        });

                        adorationMap.Create();

                        adorationMap.AddMarker(0, {
                            position: clientLocation == null ? new google.maps.LatLng(28.39404819, -91.38743867) : clientLocation,
                            title: 'You\'re here!'
                        });
                    }, 500);
                }
                break;
            case '#organizations-pane':
                if (organizationMap == null) {
                    setTimeout(function() {
                        organizationMap = new GMap(document.getElementById("organizationMap"), {
                            center: clientLocation == null ? new google.maps.LatLng(14.651129, 121.029536) : clientLocation,
                            zoom: 14,
                            scrollwheel: false,
                            mapTypeId: google.maps.MapTypeId.TERRAIN
                        });

                        organizationMap.Create();

                        organizationMap.AddMarker(0, {
                            position: clientLocation == null ? new google.maps.LatLng(28.39404819, -91.38743867) : clientLocation,
                            title: 'You\'re here!'
                        });
                    }, 500);
                }
                break;
            }
        });


        var churchMap = null;
        var adorationMap = null;
        var organizationMap = null;

        function initialize() {
            switch ($("#" + "<%=selectedCategory.ClientID%>").val()) {
            case "all":
                SelectTab('churches-pane');
                Control.show('churchMap');
                Control.hide('adorationMap');
                Control.hide('organizationMap');
                break;
            case "Church":
                SelectTab('churches-pane');
                Control.show('churchMap');
                Control.hide('adorationMap');
                Control.hide('organizationMap');
                break;
            case "Organizations":
                SelectTab('organizations-pane');
                Control.hide('churchMap');
                Control.show('adorationMap');
                Control.hide('organizationMap');
                break;
            case "Adoration":
                SelectTab('adorations-pane');
                Control.hide('churchMap');
                Control.hide('adorationMap');
                Control.show('organizationMap');
                break;
            default:
                SelectTab('churches-pane');
                Control.show('churchMap');
                Control.hide('adorationMap');
                Control.hide('organizationMap');
                break;
            }
        }
        var churchList;
        var adorationList;
        var organizationList;
        var churchItems = [];
        var adorationItems = [];
        var organizationItems = [];

        var GetOrganizations = (new http).post('church_organization.aspx/GetOrganizations').prepare(function() {
            $("#organizationResultContainer").empty();

            $("#organizationResultContainer").append('<center><img class="img-responsive" style="height: 75px;" src="Images/loading.gif" /></center>');
        }).then(function (data) {
            organizationItems = [];

            $("#organizationResultContainer").empty();
            $("#organizationResultContainer").append('<ul class="list"></ul>');
            $("#organizationResultContainer").append('<ul class="pagination"></ul>');

            organizationMap.ClearMarker();

            $.each(data, function(value, organizations) {
                $("#organizationResultsCount").text(organizations.length + " Results Found");
                if (organizations.length > 0) {
                    orgVM.organizations = _(organizations).first(orgVM.limit);
                    orgVM.allOrganizations = organizations;

                    $.each(organizations, function(key, organization) {

                        organizationItems.push({
                            'church-name': organization.Name,
                            'church-location': organization.Address,
                            'name': organization.ParentOrganization,
                            'mass': (organization.TodayMass.length > 0) ? organization.TodayMass[0].Day + " " + organization.TodayMass.map(function (tMass, key) { return tMass.Time; }).join(", ") : '',
                            'id': organization.Id,
                            'mask-data': organization.OrgMasking,
                            'img-responsive': organization.Photos[0]
                        });
                        
                        organizationMap.AddMarker(organization.Id.toString(), {
                            position: new google.maps.LatLng(organization.Latitude, organization.Longitude),
                            title: organization.Name
                        });
                    });

                    renderOrganizationItem();
                } else {
                    $("#organizationResultContainer").append('<p class="lead text-danger text-center">No Results found</p>');
                }
            });
        });

        var latLong = [];
        var long = 0;
        var lat = 0;

        var GetChurches = (new http).post('church_organization.aspx/GetChurches').prepare(function () {
            $("#churchResultContainer").empty();
            
            $("#churchResultContainer").append('<center><img class="img-responsive" style="height: 75px;" src="Images/loading.gif" /></center>');
        }).then(function (data) {
            churchItems = [];

            $("#churchResultContainer").empty();
            $("#churchResultContainer").append('<ul class="list"></ul>');
            $("#churchResultContainer").append('<ul class="pagination"></ul>');

            churchMap.ClearMarker();

            $.each(data, function (value, churches) {
                $("#churchResultsCount").text(churches.length + " Results Found");
                if (churches.length > 0) {
                    $.each(churches, function (value, church) {
                        var ventilations = [];

                        $.each(church.Ventilations, function (key, ventilation) {
                            if (ventilation["VentType"] == "")
                                return;

                            ventilations.push(ventilation["VentType"]);
                        });
                        
                        var comment = '';
                        if (church.ChurchReviews.length > 0) {
                            if (church.ChurchReviews[0]["Comment"].length > 80) {
                                comment = church.ChurchReviews[0]["Comment"].substr(0, 80) + '...';
                            } else {
                                comment = church.ChurchReviews[0]["Comment"];
                            }
                                
                        } else {
                            comment = 'No reviews found.';
                        }
                        var mass = '';
                        if (church.MassSchedules) {
                            if (church.MassSchedules.length > 0)
                                mass = church.MassSchedules[0].Days + " " + church.MassSchedules.map(function (value, key) { return value.Time; }).join(", ");
                        }

                        churchItems.push({
                            'church-name': church.Parish,
                            'church-location': church.CompleteAddress,
                            'mass': mass,

                            'ventilations': ventilations.join(", "),
                            'comments': comment,
                            'id': church.SimbahanID,
                            'mask-data': church.MaskData,
                            'img-responsive': church.ChurchThumbnails[0]["ChurchPhotos"]
                        });

                        churchMap.AddMarker(church.SimbahanID.toString(), {
                            position: new google.maps.LatLng(church.Latitude, church.Longitude),
                            title: church.Parish
                        });

                            //long = church.Longitude;
                            //lat = church.Latitude;

                        //console.log(long, lat);

                    });

                    renderChurchItem();
                } else
                    $("#churchResultContainer").append('<p class="lead text-danger text-center">No Results found</p>');
            });
        });

        

        var GetAdorations = (new http).post('church_organization.aspx/GetAdorations')
            .prepare(function () {
                $("#adorationResultContainer").empty();

                $("#adorationResultContainer").append('<center><img class="img-responsive" style="height: 75px;" src="Images/loading.gif" /></center>');
            }).then(function (data) {
                adorationItems = [];

                $("#adorationResultContainer").empty();
                $("#adorationResultContainer").append('<ul class="list"></ul>');
                $("#adorationResultContainer").append('<ul class="pagination"></ul>');
                                
                $.each(data, function (value, adorations) {
                    $("#adorationResultsCount").text(adorations.length + " Results Found");

                    if (adorations.length > 0) {
                        $.each(adorations, function (key, adoration) {
                            adorationItems.push({
                                'church-name': adoration.Church.Parish,
                                'church-location': adoration.Church.CompleteAddress,
                                'mass': adoration.DisplayText,
                                'ventilations': adoration.Ventilations.join(", "),
                                'comments': '...',
                                'id': adoration.SimbahanID,
                                'img-responsive': adoration.Images[0] == undefined ? 'Images\default.jpg' : adoration.Images[0]
                            });

                            adorationMap.AddMarker(adoration.SimbahanID.toString(), {
                                position: new google.maps.LatLng(adoration.Church.Latitude, adoration.Church.Longitude),
                                title: adoration.Church.Parish
                            });
                        });

                        renderAdorationItem();
                    } else {
                        $("#adorationResultContainer").append('<p class="lead text-danger text-center">No Results found</p>');
                    }
                });
            });

        function OnSourceCoordinateChanged(coordinate) {
            setTimeout(function () {
                if (getUrlParameter('redirect') == 'default' && (getUrlParameter('category') == 'All' || getUrlParameter('category') == 'Church')) {
                    GetChurches.run({
                        churchKeyword: $("#<%=churchKeyword.ClientID%>").val(),
                        churchLocation: $("#<%=churchLocation.ClientID%>").val(),
                        selectChurchSchedule: $("#selectChurchSchedule").val(),
                        selectChurchMassTime: $("#selectChurchMassTime").val(),
                        selectChurchLanguage: $("#selectChurchLanguage").val(),
                        selectChurchConfessionDay: $("#selectChurchConfessionDay").val(),
                        selectChurchConfessionTime: $("#selectChurchConfessionTime").val(),
                        churchHasAirConditioned: $("#churchHasAirConditioned").is(":checked"),
                        churchHasCeilingFan: $("#churchHasCeilingFan").is(":checked"),
                        churchHasOrdinaryFan: $("#churchHasOrdinaryFan").is(":checked"),
                        churchType: ($("input[type='radio'].churchtype:checked").val() == undefined) ? "" : $("input[type='radio'].churchtype:checked").val(),
                        churchLocationId: ($("input[type='radio'].churchlocation:checked").val() == undefined) ? "" : $("input[type='radio'].churchlocation:checked").val(),
                        churchHasStreetParking: $("#churchHasStreetParking").is(":checked"),
                        churchHasMallParking: $("#churchHasMallParking").is(":checked"),
                        churchHasPrivateParking: $("#churchHasPrivateParking").is(":checked"),
                        longitude: coordinate.Longitude,
                        latitude: coordinate.Latitude,
                        limit: $("#churchDisplayLimit").val(),
                        page: 1,
                        radius: 10
                    });
                }

                if (getUrlParameter('redirect') == 'default' && (getUrlParameter('category') == 'All' || getUrlParameter('category') == 'Adoration')) {
                    GetAdorations.run({
                        keyword: $("#<%=adorationKeyword.ClientID%>").val(),
                        location: $("#<%=adorationLocation.ClientID%>").val(),
                        day: $("#selectAdorationDay").val(),
                        time: $("#selectAdorationTime").val(),
                        adorationlocation: ($("input[type='radio'].adorationlocation:checked").val() == undefined)
                            ? ""
                            : $("input[type='radio'].adorationlocation:checked").val(),
                        hasAircondition: $("#adorationHasAirCondition").is(":checked"),
                        hasElectricFan: $("#adorationHasElectricFan").is(":checked"),
                        latitude: coordinate.Latitude,
                        longitude: coordinate.Longitude
                    });
                }

                if (getUrlParameter('redirect') == 'default' && (getUrlParameter('category') == 'All' || getUrlParameter('category') == 'Organizations')) {
                    GetOrganizations.run({
                        keyword: $("#<%= organizationKeyword.ClientID %>").val(),
                        location: $("#<%= organizationLocation.ClientID %>").val(),
                        parentOrganization: $("#selectOrganizationName").val(),
                        schedule: $("#selectOrganizationSchedule").val(),
                        day: $("#selectOrganizationDay").val(),
                        time: $("#selectOrganizationTime").val(),
                        language: "",
                        activityWorship: $("#hasWorship").is(":checked"),
                        activityBibleStudy: $("#hasBibleStudy").is(":checked"),
                        activityMass: $("#hasMass").is(":checked"),
                        activityRetreats: $("#hasRetreats").is(":checked"),
                        activityRecollection: $("#hasRecollection").is(":checked"),
                        activityVolunteerWorks: $("#hasVolunteerWorks").is(":checked"),
                        activityTalks: $("#hasTalks").is(":checked"),
                        activityCamp: $("#hasCamps").is(":checked"),
                        attendeeMen: $("#hasMenAttendees").is(":checked"),
                        attendeeWomen: $("#hasWomenAttendees").is(":checked"),
                        attendeeSingle: $("#hasSingleAttendees").is(":checked"),
                        attendeeCouple: $("#hasCoupleAttendees").is(":checked"),
                        attendeeProfessional: $("#hasProfessionalAttendees").is(":checked"),
                        attendeeStudent: $("#hasStudentAttendees").is(":checked"),
                        attendeeMissionary: $("#hasMissionariesAttendees").is(":checked"),
                        attendeeNonCatholic: false,
                        venueChurch: $("#isOrganizationInChurch").is(":checked"),
                        venueMall: $("#isOrganizationInMall").is(":checked"),
                        venueSchool: $("#isOrganizationInSchool").is(":checked"),
                        venuePrivate: $("#isOrganizationInPrivate").is(":checked"),
                        venuePublic: $("#isOrganizationInPublic").is(":checked"),
                        ventAircon: $("#organizationHasAirCondition").is(":checked"),
                        ventCeilingFan: $("#organizationHasCeilingFan").is(":checked"),
                        ventWallFan: $("#organizationHasWallFan").is(":checked"),
                        ventStandFan: $("#organizationHasStandardFan").is(":checked"),
                        parkingStreet: $("#organizationHasStreetParking").is(":checked"),
                        parkingMall: $("#organizationHasMallParking").is(":checked"),
                        parkingPrivate: $("#hasSeparateParking").is(":checked"),
                        latitude: coordinate == null ? 0 : coordinate.Latitude,
                        longitude: coordinate == null ? 0 : coordinate.Longitude
                    });
                }
            }, 3000);
        }

        $(document).ready(function () {
            setTimeout(initialize, 2500);

            if (getUrlParameter('type') == 'advance' && getUrlParameter('redirect') == 'default') {
                if (getUrlParameter('category') == 'All' || getUrlParameter('category') == 'Church')
                    $("#btnShowMoreFilter").trigger('click');

                if (getUrlParameter('category') == 'All' || getUrlParameter('category') == 'Organizations')
                    $("#btnShowMoreFilterOrganization").trigger('click');

            }
                

            GrabCoordinates($("#<%=churchLocation.ClientID%>").val(), OnSourceCoordinateChanged);
        });

        $(document).on('click', '#btnSearchOrganization', function(e) {
            e.preventDefault();

            GrabCoordinates($("#" + "<%= organizationLocation.ClientID%>").val(),
                function(coordinate) {
                    GetOrganizations.run({
                        keyword: $("#<%= organizationKeyword.ClientID %>").val(),
                        location: $("#<%= organizationLocation.ClientID %>").val(),
                        parentOrganization: $("#selectOrganizationName").val(),
                        schedule: $("#selectOrganizationSchedule").val(),
                        day: $("#selectOrganizationDay").val(),
                        time: $("#selectOrganizationTime").val(),
                        language: "",
                        activityWorship: $("#hasWorship").is(":checked"),
                        activityBibleStudy: $("#hasBibleStudy").is(":checked"),
                        activityMass: $("#hasMass").is(":checked"),
                        activityRetreats: $("#hasRetreats").is(":checked"),
                        activityRecollection: $("#hasRecollection").is(":checked"),
                        activityVolunteerWorks: $("#hasVolunteerWorks").is(":checked"),
                        activityTalks: $("#hasTalks").is(":checked"),
                        activityCamp: $("#hasCamps").is(":checked"),
                        attendeeMen: $("#hasMenAttendees").is(":checked"),
                        attendeeWomen: $("#hasWomenAttendees").is(":checked"),
                        attendeeSingle: $("#hasSingleAttendees").is(":checked"),
                        attendeeCouple: $("#hasCoupleAttendees").is(":checked"),
                        attendeeProfessional: $("#hasProfessionalAttendees").is(":checked"),
                        attendeeStudent: $("#hasStudentAttendees").is(":checked"),
                        attendeeMissionary: $("#hasMissionariesAttendees").is(":checked"),
                        attendeeNonCatholic: false,
                        venueChurch: $("#isOrganizationInChurch").is(":checked"),
                        venueMall: $("#isOrganizationInMall").is(":checked"),
                        venueSchool: $("#isOrganizationInSchool").is(":checked"),
                        venuePrivate: $("#isOrganizationInPrivate").is(":checked"),
                        venuePublic: $("#isOrganizationInPublic").is(":checked"),
                        ventAircon: $("#organizationHasAirCondition").is(":checked"),
                        ventCeilingFan: $("#organizationHasCeilingFan").is(":checked"),
                        ventWallFan: $("#organizationHasWallFan").is(":checked"),
                        ventStandFan: $("#organizationHasStandardFan").is(":checked"),
                        parkingStreet: $("#organizationHasStreetParking").is(":checked"),
                        parkingMall: $("#organizationHasMallParking").is(":checked"),
                        parkingPrivate: $("#hasSeparateParking").is(":checked"),
                        latitude: coordinate == null ? 0 : coordinate.Latitude,
                        longitude: coordinate == null ? 0 : coordinate.Longitude
                    });
                });
        });

        $(document).on('click', '#btnSearchAdorations', function(e) {
            e.preventDefault();

            GrabCoordinates($("#" + "<%= adorationLocation.ClientID%>").val(),
                function (coordinate) {
                    GetAdorations.run({
                        keyword: $("#" + "<%=adorationKeyword.ClientID%>").val(),
                        location: $("#" + "<%=adorationLocation.ClientID%>").val(),
                        day: $("#selectAdorationDay").val(),
                        time: $("#selectAdorationTime").val(),
                        adorationlocation: ($("input[type='radio'].adorationlocation:checked").val() == undefined)
                            ? ""
                            : $("input[type='radio'].adorationlocation:checked").val(),
                        hasAircondition: $("#adorationHasAirCondition").is(":checked"),
                        hasElectricFan: $("#adorationHasElectricFan").is(":checked"),
                        latitude: coordinate == null ? 0 : coordinate.Latitude,
                        longitude: coordinate == null ? 0 : coordinate.Longitude
                    });
                });
        });

        $(document).on('click', '#btnSearchChurches', function (e) {
            e.preventDefault();

            GrabCoordinates($("#" + "<%= churchLocation.ClientID%>").val(), function (coordinate) {
                GetChurches.run({
                    churchKeyword: $("#" + "<%=churchKeyword.ClientID%>").val(),
                    churchLocation: $("#" + "<%=churchLocation.ClientID%>").val(),
                    selectChurchSchedule: $("#selectChurchSchedule").val(),
                    selectChurchMassTime: $("#selectChurchMassTime").val(),
                    selectChurchLanguage: $("#selectChurchLanguage").val(),
                    selectChurchConfessionDay: $("#selectChurchConfessionDay").val(),
                    selectChurchConfessionTime: $("#selectChurchConfessionTime").val(),
                    churchHasAirConditioned: $("#churchHasAirConditioned").is(":checked"),
                    churchHasCeilingFan: $("#churchHasCeilingFan").is(":checked"),
                    churchHasOrdinaryFan: $("#churchHasOrdinaryFan").is(":checked"),
                    churchType: ($("input[type='radio'].churchtype:checked").val() == undefined) ? "" : $("input[type='radio'].churchtype:checked").val(),
                    churchLocationId: ($("input[type='radio'].churchlocation:checked").val() == undefined) ? "" : $("input[type='radio'].churchlocation:checked").val(),
                    churchHasStreetParking: $("#churchHasStreetParking").is(":checked"),
                    churchHasMallParking: $("#churchHasMallParking").is(":checked"),
                    churchHasPrivateParking: $("#churchHasPrivateParking").is(":checked"),
                    latitude: coordinate == null ? 0 : coordinate.Latitude,
                    longitude: coordinate == null ? 0 : coordinate.Longitude,
                    limit: $("#churchDisplayLimit").val(),
                    page: 1,
                    radius: 10
                });
            });

        });

        var watcher = new Watcher(function (e) {
            <%--var keywordValidationPassed = $("#" + "<%=churchKeyword.ClientId%>").validate(['required']).displayErrorOn('#errorChurchKeyword');
            var locationValidationPassed =  $("#" + "<%=churchLocation.ClientId%>").validate(['required']).displayErrorOn('#errorChurchLocation');--%>
            
            //if (keywordValidationPassed && locationValidationPassed) {
            GetChurches.run({
                churchKeyword: $("#" + "<%=churchKeyword.ClientID%>").val(),
                churchLocation: $("#" + "<%=churchLocation.ClientID%>").val(),
                selectChurchSchedule: $("#selectChurchSchedule").val(),
                selectChurchMassTime: $("#selectChurchMassTime").val(),
                selectChurchLanguage: $("#selectChurchLanguage").val(),
                selectChurchConfessionDay: $("#selectChurchConfessionDay").val(),
                selectChurchConfessionTime: $("#selectChurchConfessionTime").val(),
                churchHasAirConditioned: $("btnApplyChurchFilter#churchHasAirConditioned").is(":checked"),
                churchHasCeilingFan: $("#churchHasCeilingFan").is(":checked"),
                churchHasOrdinaryFan: $("#churchHasOrdinaryFan").is(":checked"),
                churchType: ($("input[type='radio'].churchtype:checked").val() == undefined) ? "" : $("input[type='radio'].churchtype:checked").val(),
                churchLocationId: ($("input[type='radio'].churchlocation:checked").val() == undefined) ? "" : $("input[type='radio'].churchlocation:checked").val(),
                churchHasStreetParking: $("#churchHasStreetParking").is(":checked"),
                churchHasMallParking: $("#churchHasMallParking").is(":checked"),
                churchHasPrivateParking: $("#churchHasPrivateParking").is(":checked"),
                limit: $("#churchDisplayLimit").val(),
                //latitude: coordinate == null ? 0 : coordinate.Latitude,
                //longitude: coordinate == null ? 0 : coordinate.Latitude,
                page: 1,
                radius: 10
            });
            //}
        }, true);
        
        watcher.addControls([
            '<%=churchKeyword.ClientID%>', '<%=churchLocation.ClientID%>',
            'selectChurchSchedule', 'selectChurchMassTime',
            'selectChurchLanguage', 'selectChurchConfessionDay',
            'selectChurchConfessionTime', 'churchHasAirConditioned', 'churchHasCeilingFan',
            'churchHasOrdinaryFan', 'isChapel', 'isShrine', 'isBasilica', 'isCathedral', 'isParish',
            'isChurchSeparate', 'isChurchInMall', 'isChurchInMall', 'isChurchInHospital',
            'isChurchInSchool', 'churchHasStreetParking', 'churchHasMallParking',
            'churchHasPrivateParking', 'churchDisplayLimit'
        ]);

        //watcher.watch();

        var adorationWatcher = new Watcher(function (e) {
            <%--var keywordValidationPassed = $("#" + "<%=adorationKeyword.ClientId%>").validate(['required']).displayErrorOn('#errorAdorationKeyword');
            var locationValidationPassed = $("#" + "<%=adorationLocation.ClientId%>").validate(['required']).displayErrorOn('#errorAdorationLocation');--%>

            //if (keywordValidationPassed && locationValidationPassed) {
            GrabCoordinates($("#" + "<%= adorationLocation.ClientID%>").val(),
                function (coordinate) {
                    console.log(coordinate);
                    GetAdorations.run({
                        keyword: $("#" + "<%=adorationKeyword.ClientID%>").val(),
                        location: $("#" + "<%=adorationLocation.ClientID%>").val(),
                        day: $("#selectAdorationDay").val(),
                        time: $("#selectAdorationTime").val(),
                        adorationlocation: ($("input[type='radio'].adorationlocation:checked").val() == undefined) ? "" : $("input[type='radio'].adorationlocation:checked").val(),
                        hasAircondition: $("#adorationHasAirCondition").is(":checked"),
                        hasElectricFan: $("#adorationHasElectricFan").is(":checked"),
                        latitude: coordinate.Latitude,
                        longitude: coordinate.Longitude
                    });
                });
            //}
        }, true);

        adorationWatcher.addControls([
            '<%=adorationKeyword.ClientID%>', '<%=adorationLocation.ClientID%>',
            'selectAdorationDay', 'selectAdorationTime', 'isAdorationSeparate',
            'isAdorationInMall', 'isAdorationInHospital', 'isAdorationInSchool',
            'adorationHasAirCondition', 'adorationHasElectricFan'
        ]);

        //adorationWatcher.watch();

        function renderChurchItem() {
            var options = {
                valueNames: [
                    'church-name',
                    'church-location',
                    'mass',
                    'ventilations',
                    'comments',
                    { data: ['id'] },
                    { data: ['mask-data'] },
                    { name: 'img-responsive', attr: 'src' }
                ],
                pagination: true,
                page: $("#churchDisplayLimit").val(),
                item:
                    '<a href="#" target="_blank" id="churchItem" data-id="" data-mask-data="" class="churchItem">' +
                        '<div class="row church-result">' +
                        '<div class="col-md-4">' +
                        '<img class="img-responsive" id="churchPhotohh" src="">' +
                        '</div>' +
                        '<div class="col-md-8" id="churchInfo">' +
                        '<h4 class="church-name text-danger"></h4>' +
                        '<p class="church-location text-muted"></p>' +
                        '<div class="church-details">' +
                        '<p>Mass Schedule: <strong class="mass"></strong></p>' +
                        '<p>Ventilation: <strong class="ventilations"></strong></p>' +
                        '</div>' +
                       // '<p class="text-comment">Comments: <em class="comments"></em></p>' +
                        '</div>' +
                        '</div>' +
                        '</a>'
            }

            churchList = new List('churchResultContainer', options, churchItems);

            $("#churchPaginationText").text($(".churchItem").length + ' of ' + churchItems.length + ' Churches');
        }

        function renderOrganizationItem() {
            var options = {
                valueNames: [
                    'church-name',
                    'church-location',
                    'name',
                    'mass',
                    { data: ['id'] },
                    {data: ['mask-data']},
                    { name: 'img-responsive', attr: 'src' }
                ],
                pagination: true,
                page: $("#organizationDisplayLimit").val(),
                item:
                    '<a href="#" target="_blank" id="organizationItem" data-id="" data-mask-data="" class="organizationItem">' +
                        '<div class="row church-result">' +
                        '<div class="col-md-4">' +
                        '<img class="img-responsive" src="">' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<h4 class="church-name text-danger"></h4>' +
                        '<p class="church-location text-muted"></p>' +
                        '<div class="church-details">' +
                        '<p>Organization Name: <strong class="name"></strong></p>' +
                        '<p>Worship Schedule Today: <strong class="mass"></strong></p>' +
                        '</div>' +
                        //'<p class="text-comment">Comments: <em class="comments"></em></p>' +
                        '</div>' +
                        '</div>' +
                        '</a>'
            }

            organizationList = new List('organizationResultContainer', options, organizationItems);

            $("#organizationPaginationText").text($(".organizationItem").length + ' of ' + organizationItems.length + ' Organizations');
        }

        function renderAdorationItem() {
            var options = {
                valueNames: [
                    'church-name',
                    'church-location',
                    'mass',
                    'ventilations',
                    'comments',
                    { data: ['id'] },
                    { name: 'img-responsive', attr: 'src' }
                ],
                pagination: true,
                page: $("#adorationDisplayLimit").val(),
                item:
                    '<a href="#" target="_blank" id="adorationItem" data-id="" class="adorationItem">' +
                        '<div class="row church-result">' +
                        '<div class="col-md-4">' +
                        '<img class="img-responsive" src="">' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<h4 class="church-name text-danger"></h4>' +
                        '<p class="church-location text-muted"></p>' +
                        '<div class="church-details">' +
                        '<p>Adoration Schedule: <strong class="mass"></strong></p>' +
                        '<p>Ventilation: <strong class="ventilations"></strong></p>' +
                        '</div>' +
                        '<p class="text-comment">Comments: <em class="comments"></em></p>' +
                        '</div>' +
                        '</div>' +
                        '</a>'
            }

            adorationList = new List('adorationResultContainer', options, adorationItems);

            $("#adorationPaginationText").text($(".adorationItem").length + ' of ' + adorationItems.length + ' Adorations');
        }
        
        var newLong = 0;
        var newLat = 0;
        $(document).on('mouseenter', '.churchItem', function (e) {
           
           churchMap.setActiveMarker($(this).data('id').toString());


            var pos = churchMap.getMarker($(this).data('id').toString()).position
            var ID = $(this).data('id').toString();
            
            var church = churchItems.find(function (church) {
                return church.id == ID;
            })
            console.log(church);
            
            var churchInfo = '<a href="http://www.mycatholicportal.org/Churches.aspx?id=' + church['id'] + '"><div class="col-md-4" id="imgHere"><img src="' + church['img-responsive'] + '" style="width: 112px;"></img></div><div class="col-md-8"><p><strong>' + church['church-name'] + '</strong></p><p>' + church['church-location'] + '</p></div></a>';
            
            var x = { lat: pos.lat(), lng: pos.lng() };
            console.log(x);

            var map = new google.maps.Map(document.getElementById('churchMap'), {
                zoom: 14,
                center: x
            });

            var infowindow = new google.maps.InfoWindow({
                content: churchInfo
            });

            var marker = new google.maps.Marker({
                position: x,
                map: map,
                title: church['church-name']
            });

            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });

        });

        $(document).on('mouseleave', '.churchItem', function (e) {
            churchMap.setInactiveMarker($(this).data('id').toString());
        });

        $(document).on('mouseenter', '.organizationItem', function (e) {
            organizationMap.setActiveMarker($(this).data('id').toString());

            var pos = organizationMap.getMarker($(this).data('id').toString()).position
            var ID = $(this).data('id').toString();

            var organization = organizationItems.find(function (organization) {
                return organization.id == ID;
            })
            console.log(organization);

            var orgInfo = '<a href="http://www.mycatholicportal.org/Organizations.aspx?id=' + organization['id'] + '"><div class="col-md-4" id="imgHere"><img src="' + organization['img-responsive'] + '" style="width: 112px;"></img></div><div class="col-md-8"><p><strong>' + organization['church-name'] + '</strong></p><p>' + organization['church-location'] + '</p></div></a>';

            var x = { lat: pos.lat(), lng: pos.lng() };
            console.log(x);

            var map = new google.maps.Map(document.getElementById('organizationMap'), {
                zoom: 14,
                center: x
            });

            var infowindow = new google.maps.InfoWindow({
                content: orgInfo
            });

            var marker = new google.maps.Marker({
                position: x,
                map: map,
                title: organization['church-name']
            });

            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });
        });

        $(document).on('mouseleave', '.organizationItem', function (e) {
            organizationMap.setInactiveMarker($(this).data('id').toString());
        });

        $(document).on('mouseenter', '.adorationItem', function (e) {
            adorationMap.setActiveMarker($(this).data('id').toString());

            var pos = adorationMap.getMarker($(this).data('id').toString()).position
            var ID = $(this).data('id').toString();

            var adoration = adorationItems.find(function (adoration) {
                return adoration.id == ID;
            })
            console.log(adoration);

            var adoInfo = '<a href="http://www.mycatholicportal.org/Churches.aspx?id=' + adoration['id'] + '"><div class="col-md-4" id="imgHere"><img src="' + adoration['img-responsive'] + '" style="width: 112px;"></img></div><div class="col-md-8"><p><strong>' + adoration['church-name'] + '</strong></p><p>' + adoration['church-location'] + '</p></div></a>';

            var x = { lat: pos.lat(), lng: pos.lng() };
            console.log(x);

            var map = new google.maps.Map(document.getElementById('adorationMap'), {
                zoom: 14,
                center: x
            });

            var infowindow = new google.maps.InfoWindow({
                content: adoInfo
            });

            var marker = new google.maps.Marker({
                position: x,
                map: map,
                title: adoration['church-name']
            });

            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });
        });

        $(document).on('mouseleave', '.adorationItem', function (e) {
            adorationMap.setInactiveMarker($(this).data('id').toString());
        });

        $(document).on('click', '.churchItem', function (e) {
            e.preventDefault();

            window.open('Churches/' + $(this).data('id') + '/' + $(this).data('mask-data'), '_blank');
        });

        $(document).on('click', '.organizationItem', function (e) {
            e.preventDefault();

            //window.open('Organizations.aspx?id=' + $(this).data('id'), '_blank');
            window.open('Organizations/' + $(this).data('id') + '/' + $(this).data('mask-data'), '_blank');
        });

        $(document).on('click', '.adorationItem', function (e) {
            e.preventDefault();

            window.open('Churches.aspx?id=' + $(this).data('id'), '_blank');
        });

        $(document).on('click', '#btnShowMoreFilter', function (e) {
            e.preventDefault();

            Control.show(['moreFiltersPane', 'btnGroupApplyFilter']);
            Control.hide('btnGroupMoreFilter');

            // Save any 
            filterCache.SaveState();

        });

        $(document).on('click', '#btnCancelChurchFilter', function (e) {
            e.preventDefault();

            Control.hide(['moreFiltersPane', 'btnGroupApplyFilter']);
            Control.show('btnGroupMoreFilter');

            // Revert the state
            filterCache.RevertToLastState();
        });

        $(document).on('click', '#btnShowMoreFilterOrganization', function (e) {
            e.preventDefault();

            Control.hide('btnGroupMoreFilterOrg');
            Control.show(['moreFiltersPaneOrg', 'btnGroupApplyFilterOrganization']);
        });

        $(document).on('click', '#btnCancelOrganizationFilter', function (e) {
            e.preventDefault();

            Control.hide(['moreFiltersPaneOrg', 'btnGroupApplyFilterOrganization']);
            Control.show('btnGroupMoreFilterOrg');
        });

        $(document).on('click', '#btnApplyOrganizationFilter', function(e) {
            e.preventDefault();

            GrabCoordinates($("#" + "<%= organizationLocation.ClientID%>").val(),
                function(coordinate) {
                    GetOrganizations.run({
                        keyword: $("#<%= organizationKeyword.ClientID %>").val(),
                        location: $("#<%= organizationLocation.ClientID %>").val(),
                        parentOrganization: $("#selectOrganizationName").val(),
                        schedule: $("#selectOrganizationSchedule").val(),
                        day: $("#selectOrganizationDay").val(),
                        time: $("#selectOrganizationTime").val(),
                        language: "",
                        activityWorship: $("#hasWorship").is(":checked"),
                        activityBibleStudy: $("#hasBibleStudy").is(":checked"),
                        activityMass: $("#hasMass").is(":checked"),
                        activityRetreats: $("#hasRetreats").is(":checked"),
                        activityRecollection: $("#hasRecollection").is(":checked"),
                        activityVolunteerWorks: $("#hasVolunteerWorks").is(":checked"),
                        activityTalks: $("#hasTalks").is(":checked"),
                        activityCamp: $("#hasCamps").is(":checked"),
                        attendeeMen: $("#hasMenAttendees").is(":checked"),
                        attendeeWomen: $("#hasWomenAttendees").is(":checked"),
                        attendeeSingle: $("#hasSingleAttendees").is(":checked"),
                        attendeeCouple: $("#hasCoupleAttendees").is(":checked"),
                        attendeeProfessional: $("#hasProfessionalAttendees").is(":checked"),
                        attendeeStudent: $("#hasStudentAttendees").is(":checked"),
                        attendeeMissionary: $("#hasMissionariesAttendees").is(":checked"),
                        attendeeNonCatholic: false,
                        venueChurch: $("#isOrganizationInChurch").is(":checked"),
                        venueMall: $("#isOrganizationInMall").is(":checked"),
                        venueSchool: $("#isOrganizationInSchool").is(":checked"),
                        venuePrivate: $("#isOrganizationInPrivate").is(":checked"),
                        venuePublic: $("#isOrganizationInPublic").is(":checked"),
                        ventAircon: $("#organizationHasAirCondition").is(":checked"),
                        ventCeilingFan: $("#organizationHasCeilingFan").is(":checked"),
                        ventWallFan: $("#organizationHasWallFan").is(":checked"),
                        ventStandFan: $("#organizationHasStandardFan").is(":checked"),
                        parkingStreet: $("#organizationHasStreetParking").is(":checked"),
                        parkingMall: $("#organizationHasMallParking").is(":checked"),
                        parkingPrivate: $("#hasSeparateParking").is(":checked"),
                        latitude: coordinate == null ? 0 : coordinate.Latitude,
                        longitude: coordinate == null ? 0 : coordinate.Longitude
                    });
                });
        });

        $(document).on('click', '#btnApplyChurchFilter', function (e) {
            e.preventDefault();

            filterCache.SaveState();

            GrabCoordinates($("#" + "<%=churchLocation.ClientID%>").val(), function(coordinate) {
                GetChurches.run({
                    churchKeyword: $("#" + "<%=churchKeyword.ClientID%>").val(),
                    churchLocation: $("#" + "<%=churchLocation.ClientID%>").val(),
                    selectChurchSchedule: $("#selectChurchSchedule").val(),
                    selectChurchMassTime: $("#selectChurchMassTime").val(),
                    selectChurchLanguage: $("#selectChurchLanguage").val(),
                    selectChurchConfessionDay: $("#selectChurchConfessionDay").val(),
                    selectChurchConfessionTime: $("#selectChurchConfessionTime").val(),
                    churchHasAirConditioned: $("#churchHasAirConditioned").is(":checked"),
                    churchHasCeilingFan: $("#churchHasCeilingFan").is(":checked"),
                    churchHasOrdinaryFan: $("#churchHasOrdinaryFan").is(":checked"),
                    churchType: ($("input[type='radio'].churchtype:checked").val() == undefined) ? "" : $("input[type='radio'].churchtype:checked").val(),
                    churchLocationId: ($("input[type='radio'].churchlocation:checked").val() == undefined) ? "" : $("input[type='radio'].churchlocation:checked").val(),
                    churchHasStreetParking: $("#churchHasStreetParking").is(":checked"),
                    churchHasMallParking: $("#churchHasMallParking").is(":checked"),
                    churchHasPrivateParking: $("#churchHasPrivateParking").is(":checked"),
                    limit: $("#churchDisplayLimit").val(),
                    latitude: coordinate == null ? 0 : coordinate.Latitude,
                    longitude: coordinate == null ? 0 : coordinate.Latitude,
                    page: 1,
                    radius: 10
                });
            });
        });

        $(document).on('change', '#churchDisplayLimit', function (e) {
            e.preventDefault();

            renderChurchItem();
        });

        $(document).on('change', '#organizationDisplayLimit', function (e) {
            e.preventDefault();

            renderOrganizationItem();
        });

        $(document).on('change', '#adorationDisplayLimit', function (e) {
            e.preventDefault();

            renderAdorationItem();
        });

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            var target = $(e.target).attr("href"); // activated tab
            
            switch (target) {
            case "#churches-pane":
                Control.show('churchMap');
                Control.hide('adorationMap');
                Control.hide('organizationMap');
                break;
            case "#adorations-pane":
                Control.hide('churchMap');
                Control.show('adorationMap');
                Control.hide('organizationMap');
                break;
            case "#organizations-pane":
                Control.hide('churchMap');
                Control.hide('adorationMap');
                Control.show('organizationMap');
                break;
            }
        });

        $(document).on('click', '#btnResetChurchFilter', function (e) {
            e.preventDefault();

            filterCache.controls.forEach(function(control) {
                control.reset();
            });
        });

        $(document).on('click', '#btnResetAdorationFilter', function(e) {
            e.preventDefault();

            $("#<%= adorationKeyword.ClientID %>").val('');
            $("#<%= adorationLocation.ClientID %>").val('');
            $("#selectAdorationDay").val('');
            $("#selectAdorationTime").val('');
            $('input[name="adorationlocation"][value=""]').prop('checked', true);
            $("#adorationHasAirCondition").prop('checked', false);
            $("#adorationHasElectricFan").prop('checked', false);
        });

        $(document).on('click', '#btnResetOrganizationFilter', function(e) {
            e.preventDefault();

            orgFilterCache.controls.forEach(function(control) {
                control.reset();
            });
        });

        $(document).on('keypress', '#<%= churchKeyword.ClientID %>', function (event) {
            event.stopPropagation();
            if (event.keyCode == 13) {
                event.preventDefault();
                $("#btnSearchChurches").trigger('click');
            }
        });

        $(document).on('keypress', '#<%= churchLocation.ClientID %>', function (event) {
            event.stopPropagation();
            if (event.keyCode == 13) {
                event.preventDefault();
                $("#btnSearchChurches").trigger('click');
            }
        });

        $(document).on('keypress', '#<%= adorationKeyword.ClientID %>', function (event) {
            event.stopPropagation();
            if (event.keyCode == 13) {
                event.preventDefault();
                $("#btnSearchAdorations").trigger('click');
            }
        });

        $(document).on('keypress', '#<%= adorationLocation.ClientID %>', function (event) {
            event.stopPropagation();
            if (event.keyCode == 13) {
                event.preventDefault();
                $("#btnSearchAdorations").trigger('click');
            }
        });

        $("#selectOrganizationSchedule").change(function () {
            if ($("#selectOrganizationSchedule").val() == '')
                $("#organizationSchedulePanel").css('display', 'none');
            else
                $("#organizationSchedulePanel").css('display', 'block');
        });
    </script>
</asp:Content>