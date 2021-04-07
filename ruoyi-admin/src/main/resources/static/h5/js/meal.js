/******/ (function(modules) { // webpackBootstrap
    /******/ 	// install a JSONP callback for chunk loading
    /******/ 	var parentJsonpFunction = window["webpackJsonp"];
    /******/ 	window["webpackJsonp"] = function webpackJsonpCallback(chunkIds, moreModules) {
        /******/ 		// add "moreModules" to the modules object,
        /******/ 		// then flag all "chunkIds" as loaded and fire callback
        /******/ 		var moduleId, chunkId, i = 0, callbacks = [];
        /******/ 		for(;i < chunkIds.length; i++) {
            /******/ 			chunkId = chunkIds[i];
            /******/ 			if(installedChunks[chunkId])
            /******/ 				callbacks.push.apply(callbacks, installedChunks[chunkId]);
            /******/ 			installedChunks[chunkId] = 0;
            /******/ 		}
        /******/ 		for(moduleId in moreModules) {
            /******/ 			if(Object.prototype.hasOwnProperty.call(moreModules, moduleId)) {
                /******/ 				modules[moduleId] = moreModules[moduleId];
                /******/ 			}
            /******/ 		}
        /******/ 		if(parentJsonpFunction) parentJsonpFunction(chunkIds, moreModules);
        /******/ 		while(callbacks.length)
            /******/ 			callbacks.shift().call(null, __webpack_require__);

        /******/ 	};

    /******/ 	// The module cache
    /******/ 	var installedModules = {};

    /******/ 	// object to store loaded and loading chunks
    /******/ 	// "0" means "already loaded"
    /******/ 	// Array means "loading", array contains callbacks
    /******/ 	var installedChunks = {
        /******/ 		78:0
        /******/ 	};

    /******/ 	// The require function
    /******/ 	function __webpack_require__(moduleId) {

        /******/ 		// Check if module is in cache
        /******/ 		if(installedModules[moduleId])
        /******/ 			return installedModules[moduleId].exports;

        /******/ 		// Create a new module (and put it into the cache)
        /******/ 		var module = installedModules[moduleId] = {
            /******/ 			exports: {},
            /******/ 			id: moduleId,
            /******/ 			loaded: false
            /******/ 		};

        /******/ 		// Execute the module function
        /******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

        /******/ 		// Flag the module as loaded
        /******/ 		module.loaded = true;

        /******/ 		// Return the exports of the module
        /******/ 		return module.exports;
        /******/ 	}

    /******/ 	// This file contains only the entry chunk.
    /******/ 	// The chunk loading function for additional chunks
    /******/ 	__webpack_require__.e = function requireEnsure(chunkId, callback) {
        /******/ 		// "0" is the signal for "already loaded"
        /******/ 		if(installedChunks[chunkId] === 0)
        /******/ 			return callback.call(null, __webpack_require__);

        /******/ 		// an array means "currently loading".
        /******/ 		if(installedChunks[chunkId] !== undefined) {
            /******/ 			installedChunks[chunkId].push(callback);
            /******/ 		} else {
            /******/ 			// start chunk loading
            /******/ 			installedChunks[chunkId] = [callback];
            /******/ 			var head = document.getElementsByTagName('head')[0];
            /******/ 			var script = document.createElement('script');
            /******/ 			script.type = 'text/javascript';
            /******/ 			script.charset = 'utf-8';
            /******/ 			script.async = true;

            /******/ 			script.src = __webpack_require__.p + "" + ({"16":"AlertPop"}[chunkId]||chunkId) + ".js?v=" + "7d48f683c825e8c26d4b" + "";
            /******/ 			head.appendChild(script);
            /******/ 		}
        /******/ 	};

    /******/ 	// expose the modules object (__webpack_modules__)
    /******/ 	__webpack_require__.m = modules;

    /******/ 	// expose the module cache
    /******/ 	__webpack_require__.c = installedModules;

    /******/ 	// __webpack_public_path__
    /******/ 	__webpack_require__.p = "/mobile/js/";

    /******/ 	// Load entry module and return exports
    /******/ 	return __webpack_require__(0);
    /******/ })
/************************************************************************/
/******/ ({

    /***/ 0:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var _Header = __webpack_require__(15);

        var _Header2 = _interopRequireDefault(_Header);

        var _MealHeadTopView = __webpack_require__(25);

        var _MealHeadTopView2 = _interopRequireDefault(_MealHeadTopView);

        var _index = __webpack_require__(587);

        var _index2 = _interopRequireDefault(_index);

        var _index3 = __webpack_require__(369);

        var _index4 = _interopRequireDefault(_index3);

        var _dialog = __webpack_require__(28);

        var _dialog2 = _interopRequireDefault(_dialog);

        var _index5 = __webpack_require__(136);

        var _index6 = _interopRequireDefault(_index5);

        var _index7 = __webpack_require__(55);

        var _index8 = _interopRequireDefault(_index7);

        var _amfeEnv = __webpack_require__(16);

        __webpack_require__(72);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var React = __webpack_require__(3);
        var TJ = __webpack_require__(50);
        var _ = __webpack_require__(76);
        var ReturnTop = __webpack_require__(81);
        var BackToHome = __webpack_require__(412);

        var Activity38Window = __webpack_require__(372); // 女神节浮窗

        var isWebview = !!_amfeEnv.browser.isWebview || _amfeEnv.thirdapp.isWeixin || Util.inMachine();

        var currentLabelVal = TJ.getUrlParam('currentLabel'),
            currentLabel = currentLabelVal ? currentLabelVal.split(',').map(function (item) {
                return parseInt(item);
            }) : [];
        currentLabel = currentLabel.filter(function (item) {
            return item;
        });

        if (TJ_PROFILE.isMultiHospital == true || _.isEmpty(TJ_PROFILE.hospitalId)) {
            var isShowHead = true;
        }

        var genderIdx = [{ id: '0', name: '男性适用' }, { id: '1', name: '女性适用' }];

        var priceIdx = [{ id: 1, name: '1000以下' }, { id: 2, name: '1000-5000' }, { id: 3, name: '5000以上' }];

        var ageIdx = [{ id: 0, name: '全年龄段', des: '' }, { id: 1, name: '少年儿童', des: '(12岁及以下)' }, { id: 2, name: '青少年', des: '(13-20岁)' }, { id: 3, name: '青年', des: '(21-30岁)' }, { id: 4, name: '中青年', des: '(21-40岁)' }, { id: 5, name: '中年', des: '(31-50岁)' }, { id: 6, name: '中老年', des: '(41-60岁)' }, { id: 7, name: '老年', des: '(61岁以上)' }];

        var classifyIdx = [{ id: 1, name: '健康体检' }, { id: 2, name: '入职体检' }, { id: 3, name: '公务员体检' }, { id: 4, name: '驾驶员体检' }];

        var MealView = React.createClass({
            displayName: 'MealView',

            getInitialState: function getInitialState() {
                return {
                    hospitalId: TJ.getUrlParam("hospitalId") || TJ.getUrlParam("cityHospitalId") || TJ_PROFILE.hospitalId,
                    cardId: TJ.getUrlParam("cardId"),
                    newCardId: TJ.getUrlParam("newCardId"), // 卡二期 ，免登录卡id
                    keyWord: TJ.getUrlParam("keyWord"), // 卡二期 ，免登录卡搜索的身份证号/手机号、员工号
                    employeeId: TJ.getUrlParam("employeeId"), // 卡二期 ，免登录人id
                    newCompanyId: TJ.getUrlParam("newCompanyId"), // 卡二期 ，免登录卡
                    gender: TJ.getUrlParam("genderJudge") || '',
                    price: '',
                    selfOrFamily: undefined,
                    page: {
                        currentPage: 1,
                        pageSize: 10,
                        rowCount: -1
                    },
                    loading: true,
                    loadingMeal: false,

                    labelDataList: [],
                    currentLabel: currentLabel,
                    ageLevelIds: [],
                    classifyIds: '', // 体检类型id集合
                    labelModal: false,
                    isMarketing: false,
                    title: TJ.getUrlParam('title') || '',
                    attriValue: TJ.getUrlParam('attriValue') || '',
                    attriKey: TJ.getUrlParam('attriKey') || '',

                    protocolDialog: {},

                    authorityError: false,

                    classifyIdx: classifyIdx,
                    hideMealPrice: TJ.getUrlParam('showCardMealPrice') || false, // showCardMealPrice： 1 是隐藏    0 || '' 不隐藏
                    patientTip: '', // 冠状病毒病人状况提示
                    showQuestionnaire: false,
                    epidemicSituationSurveyId: '',
                    showLoginModal: false
                };
            },
            componentDidMount: function componentDidMount() {
                this.setPatientTip();
            },
            setPatientTip: function setPatientTip() {
                var answer = TJ.getUrlParam('questionLevel');
                var tip = '';
                if (answer === '1') {
                    tip = '您目前的身体状况不适合体检，建议前往专科门诊就诊';
                } else if (answer === '2') {
                    tip = '建议进行居家医学观察14天，无异常再体检';
                } else if (answer === '3') {
                    tip = '请前往发热门诊就诊！';
                }
                this.setState({ patientTip: tip });
            },

            componentWillMount: function componentWillMount() {
                var _this = this;

                this.getHospitalSetting();

                if (this.state.hideMealPrice == 'false') {
                    this.setState({ hideMealPrice: false });
                }
                // 本地保存请求url，在选体检人时返回套餐页用
                localStorage.setItem('package_location_href', window.location.href);

                if (TJ.getUrlParam('marketingManagerId')) {
                    this.setState({
                        isMarketing: true
                    });
                }
                TJ.ui.loadingShow();
                var cardId = this.state.cardId ? this.state.cardId : this.state.newCardId || null;
                var hospitalId = TJ.getUrlParam("realHoplId") ? TJ.getUrlParam("realHoplId") : this.state.hospitalId;
                TJ.getUrlParam("realHoplId") || TJ.getUrlParam("cardId") && (isShowHead = true);
                var params = {
                    cardId: cardId,
                    hospitalId: hospitalId,
                    currentPage: this.state.page.currentPage,
                    pageSize: this.state.page.pageSize,
                    rowCount: this.state.page.rowCount,
                    gender: TJ.getUrlParam("genderJudge"),
                    mealTags: this.state.currentLabel.join(','),
                    marriage: TJ.getUrlParam("marriageJudge")
                };
                params = $.extend({}, params);
                $.ajax({
                    url: '/mobileMealListPage',
                    type: 'POST',
                    dataType: 'json',
                    data: params
                }).done(function (response) {
                    if (JSON.stringify(response) == "{}") {
                        _this.setState({ authorityError: true });
                        return;
                    }
                    if (response.protocol) {

                        var p = JSON.parse(response.protocol);
                        response.protocol = p.show ? p.content : '';
                    }

                    response.page = response.mealPageView.page;
                    response.loading = false;

                    if (response.hasFamilyMeal) {
                        response.selfOrFamily = 1;
                    } else {
                        response.selfOrFamily = undefined;
                    }

                    var bigImages = _.map(response.hospitalImages, function (perImage, key) {
                        return TJ.getImg(perImage);
                    });
                    response.bigImages = bigImages;

                    // //临时写法 需要后端修改接口接收mealTags参数
                    if (_this.state.currentLabel.length) {
                        response.mealPageView.records = [];
                        _this.searchMeal();
                    }

                    _this.setState(response);
                    _this.getMealTag();
                }).fail(function (xhr, textStatus, errorThrown) {
                    var Load = __webpack_require__(147);
                    Load(function (AlertPop) {

                        var Content = React.createClass({
                            displayName: 'Content',

                            render: function render() {
                                return React.createElement('pre', { className: 'exam-note-info', dangerouslySetInnerHTML: { __html: $.trim(xhr.responseJSON.text) } });
                            }
                        });

                        AlertPop.open(React.createElement(Content, null), {
                            title: '警告'
                        });
                    });
                }).always(function () {
                    _this.setState({ loading: false });
                    TJ.ui.loadingHide();
                });
            },
            getHospitalSetting: function getHospitalSetting() {
                var _this2 = this;

                $.ajax({
                    url: '/resource/getHospitalSettingByHospitalId?hospitalId=' + this.state.hospitalId,
                    type: 'GET',
                    dataType: 'json'
                }).done(function (res) {
                    // let quesCache = TJ.getQuestionCache(this.state.hospitalId);
                    // 有设置问卷 + 10分钟内这家医院没有答过 + 不是守护宝制作套餐
                    // let showQuestionnaire = !!res.settings.epidemicSituationSurveyId && !quesCache && !TJ.getUrlParam('marketingManagerId');
                    // this.setState({
                    //   epidemicSituationSurveyId: res.settings.epidemicSituationSurveyId,
                    //   showQuestionnaire: showQuestionnaire
                    // })
                    // if (showQuestionnaire) { document.body.style.overflowY = 'hidden' }

                    _this2.setState({
                        epidemicSituationSurveyId: res.settings.epidemicSituationSurveyId
                    });
                    if (!!res.settings.epidemicSituationSurveyId && !TJ.getUrlParam('marketingManagerId') && res.settings.surveyBeforeMeal) {
                        _this2.showQuesOrLogin(res.settings.epidemicSituationSurveyId);
                    }
                });
            },

            // 判断是否登录，如果没有登录跳登录弹框
            showQuesOrLogin: function showQuesOrLogin(surveyId) {
                var _this3 = this;

                $.getter('/validateLogin').done(function (res) {
                    if (res.result) {
                        _this3.getEpidemicNaire(surveyId);
                    } else {
                        _this3.setState({ showLoginModal: true });
                    }
                });
            },
            logined: function logined() {
                window.location.reload();
            },
            getEpidemicNaire: function getEpidemicNaire(id) {
                var _this4 = this;

                $.ajax({
                    url: '/diagnosis/recentlySurveyRecord?surveyId=' + id + '&hospitalId=' + this.state.hospitalId,
                    type: 'GET',
                    dataType: 'json'
                }).then(function (res) {
                    if (!res) {
                        _this4.setState({
                            showQuestionnaire: true
                        });
                        document.body.style.overflowY = 'hidden';
                    }
                });
            },
            getMealTag: function getMealTag() {
                var _this5 = this;

                $.ajax({
                    url: '/tag/list?hospitalId=' + this.state.hospitalId,
                    type: 'GET',
                    dataType: 'json'
                }).done(function (response) {
                    var tagCategory = response.tag || [];
                    var classify = classifyIdx.filter(function (item) {
                        return (response.classify || []).indexOf(item.id) > -1;
                    });

                    _this5.setState({ labelDataList: tagCategory, classifyIdx: classify }, function () {
                        _this5.searchDefaultMeals(tagCategory);
                    });
                }).fail(function (xhr, textStatus, errorThrown) {});
            },


            // 根据页面入口条件查询套餐列表
            searchDefaultMeals: function searchDefaultMeals(category) {
                var _this6 = this;

                var attriKey = TJ.getUrlParam("attriKey");
                var attriValue = TJ.getUrlParam("attriValue");

                if (!attriKey && !attriValue) {
                    return;
                }
                var state = this.state;
                if (attriKey == 1) {
                    state.classifyIds = attriValue / 1;
                }
                if (attriKey == 3) {
                    state.ageLevelIds = attriValue.split(',').map(function (it) {
                        return it / 1;
                    });
                }
                if (attriKey == 2) {
                    attriValue = attriValue.replace('防癌体检', '肿瘤检测');
                    attriValue = attriValue.replace('高端体检', '高端商务');
                    category.forEach(function (cate) {
                        cate.tags.forEach(function (tag) {
                            if (tag.name == attriValue) {
                                state.currentLabel.push(tag.id / 1);
                            }
                        });
                    });
                }

                state.page.currentPage = 1;
                this.setState(state, function () {
                    return _this6.searchMeal();
                });
            },


            componentDidUpdate: function componentDidUpdate() {
                TJ.ui.loadingHide();

                if (this.bind_event) {
                    return;
                }
                this.bind_event = true;
                window.addEventListener('scroll', this.handleScroll);
            },

            handleScroll: function handleScroll() {
                var scrTop = $('body').scrollTop();
                var winHeight = $(window).height();
                var webHeight = $('body').height();
                if (scrTop + winHeight >= webHeight && !this.state.loadingMeal && this.state.page.currentPage * this.state.page.pageSize < this.state.page.rowCount) {
                    // 页面请求下一页code
                    this.pageChange();
                };
            },

            getBigImage: function getBigImage(imageName) {
                var s = imageName.substring(0, imageName.lastIndexOf("."));
                var s2 = imageName.substring(imageName.lastIndexOf(".") + 1);
                return s + "_big." + s2;
            },

            showIntro: function showIntro(event) {
                this.setState({
                    selectTab: 'intro'
                });

                $(".org-intro").show();
                $("#mealList").hide();
            },

            showMeal: function showMeal() {
                this.setState({
                    selectTab: 'mealList'
                });
                $(".org-intro").hide();
                $("#mealList").show();
            },

            showMap: function showMap(hospital) {
                TJ.showMap(hospital);
            },

            mealFilter: function mealFilter(type, val, event) {
                var _this7 = this;

                var state = this.state;
                state[type] = val;
                state.page.currentPage = 1;
                this.setState(state, function () {
                    _this7.searchMeal();
                });
            },


            searchMeal: function searchMeal(isPageChange) {
                var _this8 = this;

                var cardId = this.state.cardId ? this.state.cardId : this.state.newCardId || null;
                var params = {
                    cardId: cardId,
                    hospitalId: this.state.hospitalId,
                    selfOrFamily: this.state.selfOrFamily,
                    genders: this.state.gender === -1 || this.state.gender === '' ? [] : [this.state.gender, 2],
                    priceStart: this.state.priceStart,
                    priceEnd: this.state.priceEnd,
                    currentPage: this.state.page.currentPage,
                    pageSize: this.state.page.pageSize,
                    rowCount: -1,
                    mealTags: this.state.currentLabel.join(','),
                    'ageLevelIds[]': this.state.ageLevelIds.join(','),
                    'classify[]': this.state.classifyIds,
                    marriage: TJ.getUrlParam("marriageJudge")
                };
                params = $.extend({}, params);
                this.setState({ loadingMeal: true });
                $.ajax({
                    url: '/resource/searchMeal',
                    type: 'POST',
                    dataType: 'json',
                    data: params
                }).done(function (response) {
                    _this8.setState({ loadingMeal: false });
                    if (isPageChange) {
                        response.records = _this8.state.mealPageView.records.concat(response.records);
                    }
                    _this8.setState({
                        mealPageView: response,
                        page: response.page
                    });
                }).fail(function (data) {});
                $(".org-intro").hide();
                $("#mealList").show();
            },

            pageChange: function pageChange() {
                var _this9 = this;

                var page = this.state.page;
                page.currentPage += 1;
                this.setState({ 'page': page, 'loadingMeal': true }, function () {
                    _this9.searchMeal(true);
                });
            },


            mealdetail: function mealdetail(value) {
                if (value.disable > 0) {
                    return;
                }

                if (this.state.protocol && storeCache.get('neverRemindBookProtocal' + this.state.hospital.id) != 'never') {
                    this.showProtocol(value);
                } else {
                    this.toMealDetailPage(value.id);
                }
            },
            toMealDetailPage: function toMealDetailPage(mealId) {
                var chooseCardId = this.state.newCardId ? this.state.newCardId : this.state.cardId;
                window.location.href = TJ.tourl("/mealdetail?mealId=" + mealId + '&chooseCardId=' + chooseCardId + '&newCardId=' + this.state.newCardId + '&keyWord=' + this.state.keyWord + '&employeeId=' + this.state.employeeId + '&newCompanyId=' + this.state.newCompanyId + '&userName=' + TJ.getUrlParam("userName") + '&userGender=' + TJ.getUrlParam("userGender") + '&addAccountType=' + TJ.getUrlParam("addAccountType") + '&userAge=' + TJ.getUrlParam('userAge') + '&marriageStatus=' + TJ.getUrlParam('marriageStatus') + '&userIdCard=' + TJ.getUrlParam("userIdCard") + '&searchType=' + TJ.getUrlParam("searchType") + '&userMobile=' + TJ.getUrlParam("userMobile") + '&nationality=' + TJ.getUrlParam("nationality") + '&genderJudge=' + TJ.getUrlParam("genderJudge") + '&marriageJudge=' + TJ.getUrlParam("marriageJudge"));
            },
            showProtocol: function showProtocol(value) {
                var _this10 = this;

                this.setState({
                    protocolDialog: {
                        show: true,
                        title: '您需要确认如下内容',
                        buttons: [{
                            label: '不同意', onClick: function onClick() {
                                _this10.setState({ protocolDialog: { show: false } });
                            }, type: 'default'
                        }, {
                            label: '同意',
                            onClick: function onClick() {
                                storeCache.set('neverRemindBookProtocal' + _this10.state.hospital.id, _this10.state.protocolDialog.neverRemind ? 'never' : '', 30 * 24 * 3600 * 1000);
                                _this10.toMealDetailPage(value.id);
                            }
                        }]
                    }
                });
            },
            showModal: function showModal() {
                this.setState({ labelModal: true });
            },
            hideModal: function hideModal() {
                this.setState({ labelModal: false });
            },
            checkLabel: function checkLabel(label) {
                var state = this.state;
                var idx = state.currentLabel.indexOf(label.id);
                if (idx > -1) {
                    state.currentLabel.splice(idx, 1);
                } else {
                    state.currentLabel.push(label.id);
                }
                this.setState(state);
            },
            checkAgeLevel: function checkAgeLevel(ageLevel) {
                var state = this.state;
                var idx = state.ageLevelIds.indexOf(ageLevel.id);
                if (idx > -1) {
                    state.ageLevelIds.splice(idx, 1);
                } else {
                    state.ageLevelIds.push(ageLevel.id);
                }
                this.setState(state);
            },
            checkClassify: function checkClassify(classify) {
                if (classify.id === this.state.classifyIds) {
                    this.setState({ classifyIds: '' });
                } else {
                    this.setState({ classifyIds: classify.id });
                }
            },
            checkGender: function checkGender(gender) {
                if (TJ.getUrlParam("genderJudge") != '') {
                    return false;
                }
                if (gender.id === this.state.gender) {
                    this.setState({ gender: '' });
                } else {
                    this.setState({ gender: gender.id });
                }
            },
            checkPrice: function checkPrice(price) {
                var priceStart = '';
                var priceEnd = '';
                if (price.id == this.state.price) {
                    this.setState({ price: '', priceStart: priceStart, priceEnd: priceEnd });
                } else {
                    if (price.name == '1000以下') {
                        priceStart = '';
                        priceEnd = 100000;
                    } else if (price.name == '1000-5000') {
                        priceStart = 100000;
                        priceEnd = 500000;
                    } else if (price.name == '5000以上') {
                        priceStart = 500000;
                        priceEnd = '';
                    }
                    this.setState({ price: price.id, priceStart: priceStart, priceEnd: priceEnd });
                }
            },
            completeSelect: function completeSelect() {
                var _this11 = this;

                var state = this.state;
                state.labelModal = false;
                state.page.currentPage = 1;
                this.setState(state, function () {
                    return _this11.searchMeal();
                });
            },
            resetLabel: function resetLabel() {
                var state = this.state;
                state.currentLabel = [];
                state.ageLevelIds = [];
                state.classifyIds = '';
                if (TJ.getUrlParam("genderJudge") === '') {
                    state.gender = '';
                }
                state.price = '';
                state.priceStart = '';
                state.priceEnd = '';
                this.setState(state);
            },
            setNeverRemind: function setNeverRemind() {
                this.state.protocolDialog.neverRemind = !this.state.protocolDialog.neverRemind;
                this.setState(this.state);
            },
            onSaveQuesDone: function onSaveQuesDone() {
                this.setState({
                    showQuestionnaire: false
                });
                document.body.style.overflowY = 'auto';
            },


            render: function render() {
                var _this12 = this;

                if (this.state.loading) {
                    return null;
                };
                if (this.state.authorityError) {
                    return React.createElement(
                        'div',
                        null,
                        React.createElement(
                            _Header2.default,
                            { homeUrl: TJ.tourl("/welcome") },
                            '\u5957\u9910\u5217\u8868\u9875'
                        ),
                        React.createElement(
                            'div',
                            { className: 'tc c-9', style: { marginTop: '2rem' } },
                            '\u6E20\u9053\u4E0D\u652F\u6301\u8BE5\u4F53\u68C0\u4E2D\u5FC3\u6216\u8005\u8BE5\u5957\u9910'
                        )
                    );
                }
                if (this.state.patientTip) {
                    return React.createElement(
                        'div',
                        null,
                        React.createElement(
                            _Header2.default,
                            { homeUrl: TJ.tourl("/welcome") },
                            '\u5957\u9910\u5217\u8868\u9875'
                        ),
                        React.createElement(
                            'div',
                            { className: 'tc c-9', style: { marginTop: '2rem' } },
                            this.state.patientTip
                        )
                    );
                }

                var meals = _.filter(this.state.mealPageView.records, function (meal) {
                    var keyWords = meal.keyword;
                    if (keyWords) {
                        var fourKeyword = "";
                        var keywordArr = keyWords.split("|");
                        for (var i = 0; i < keywordArr.length; i++) {
                            if (i < 4 && keywordArr[i] != "") {
                                fourKeyword += keywordArr[i] + "  ";
                            }
                        }
                        if (fourKeyword != "") {
                            fourKeyword = fourKeyword.substr(0, fourKeyword.length - 1);
                        }
                        meal.keyword = fourKeyword;
                    }
                    var mealSpecies = _.filter(meal.species, function (spe) {
                        var speciesName = spe.name.substr(0, 2);
                        var color = "blue";
                        if (speciesName && speciesName == "推荐") {
                            color = "orange";
                        } else if (speciesName && speciesName == "官方") {
                            color = "red";
                        }
                        spe.tagColor = color;
                        return spe;
                    });
                    meal.species = mealSpecies;
                    return meal;
                });

                // 微信城市服务 体检中心列表页为首页，不显示返回按钮
                var showBack = TJ.isWxCityServer() ? false : true;
                var _state = this.state,
                    showQuestionnaire = _state.showQuestionnaire,
                    hospitalId = _state.hospitalId,
                    epidemicSituationSurveyId = _state.epidemicSituationSurveyId,
                    showLoginModal = _state.showLoginModal;

                return React.createElement(
                    'div',
                    { className: 'container' },
                    React.createElement(
                        _Header2.default,
                        { showHome: this.state.isMarketing && !TJ.isInSideAppAndNeedHideTab() ? false : true, showBack: TJ.isMeetingVersion() ? false : showBack, homeUrl: TJ.isInSideAppAndNeedHideTab() && this.state.isMarketing ? TJ.tourl('/marketing?isShbLogin=1') : TJ.tourl("/welcome") },
                        TJ.isMeetingVersion() ? '会议报名通道' : '套餐列表页'
                    ),
                    React.createElement(BackToHome, null),
                    showQuestionnaire && React.createElement(_index6.default, { onSaveDone: this.onSaveQuesDone, hospitalId: hospitalId, surveyId: epidemicSituationSurveyId }),
                    isShowHead ? React.createElement(_MealHeadTopView2.default, { className: 'mb10', hospital: this.state.hospital, workDay: this.state.workDay, newCardId: this.state.newCardId, logo: this.state.logo }) : null,
                    React.createElement(
                        'div',
                        { className: 'meals_box' },
                        TJ.isMeetingVersion() && React.createElement('img', { alt: true, src: TJ.cdn + '/mobile/meeting_banner.png' }),
                        !TJ.isMeetingVersion() && React.createElement(
                        'div',
                        { className: 'pl10 pr10 bg-wt' },
                        React.createElement(
                            'div',
                            { className: 'combo-menu' },
                            this.state.hasFamilyMeal ? React.createElement(
                                'ul',
                                { className: 'meals_box_ul' },
                                React.createElement(
                                    'li',
                                    { onClick: this.mealFilter.bind(this, "selfOrFamily", 1), style: { width: "25%" }, className: this.state.selfOrFamily == 1 ? "current" : "" },
                                    React.createElement(
                                        'a',
                                        { href: 'javascript:;' },
                                        '\u4E2A\u4EBA\u5957\u9910'
                                    )
                                ),
                                React.createElement(
                                    'li',
                                    { onClick: this.mealFilter.bind(this, "selfOrFamily", 2), style: { width: "25%" }, className: this.state.selfOrFamily == 2 ? "current" : "" },
                                    React.createElement(
                                        'a',
                                        { href: 'javascript:;' },
                                        '\u5BB6\u5C5E\u5957\u9910'
                                    )
                                ),
                                React.createElement(
                                    'li',
                                    { style: { textAlign: "right" } },
                                    React.createElement(
                                        'a',
                                        { href: 'javascript:;', onClick: function onClick() {
                                                return _this12.showModal();
                                            } },
                                        '\u7B5B\u9009'
                                    ),
                                    React.createElement('i', { className: 'iconfont icon-xiangxia' })
                                )
                            ) : React.createElement(
                                'ul',
                                { className: 'meals_box_ul' },
                                React.createElement(
                                    'li',
                                    { style: { textAlign: "left" }, className: !this.state.selfOrFamily ? "" : "" },
                                    React.createElement(
                                        'a',
                                        { href: 'javascript:;' },
                                        '\u5957\u9910\u5217\u8868'
                                    )
                                ),
                                React.createElement(
                                    'li',
                                    { style: { textAlign: "right" } },
                                    React.createElement(
                                        'a',
                                        { href: 'javascript:;', onClick: function onClick() {
                                                return _this12.showModal();
                                            } },
                                        '\u7B5B\u9009'
                                    ),
                                    React.createElement('i', { className: 'iconfont icon-xiangxia' })
                                )
                            )
                        )
                        ),
                        React.createElement(
                            'div',
                            null,
                            React.createElement(
                                'div',
                                { className: 'combo-toggle meals_list', id: 'mealList' },
                                _.map(meals, function (value, key) {
                                    return React.createElement(
                                        'div',
                                        { className: 'meals_li', style: { background: value.disable == 1 ? "#efefef" : "" }, onClick: _this12.mealdetail.bind(_this12, value), key: key },
                                        React.createElement(
                                            'div',
                                            { className: 'meals_li_table' },
                                            React.createElement(
                                                'div',
                                                { className: 'meals_li_left' },
                                                value.gender == 0 && React.createElement(
                                                'div',
                                                { className: 'meals_avatar' },
                                                React.createElement('img', { src: '../../../mobile/images/meal-man.png' })
                                                ),
                                                value.gender == 1 && React.createElement(
                                                'div',
                                                { className: 'meals_avatar' },
                                                React.createElement('img', { src: '../../../mobile/images/meal-woman.png' })
                                                ),
                                                value.gender == 2 && React.createElement(
                                                'div',
                                                { className: 'meals_avatar' },
                                                React.createElement('img', { src: '../../../mobile/images/meal-ok.png' })
                                                )
                                            ),
                                            React.createElement(
                                                'div',
                                                { className: 'meals_li_right' },
                                                value.disable == 1 && React.createElement('i', { className: 'meal_disable' }),
                                                React.createElement(
                                                    'div',
                                                    { className: '_f32 meal_line c-3' },
                                                    React.createElement(
                                                        'div',
                                                        { className: 'pull_left' },
                                                        React.createElement(
                                                            'span',
                                                            { className: 'meal_name', title: value.name },
                                                            value.name
                                                        ),
                                                        value.marriageId == 1 && React.createElement(
                                                        'span',
                                                        { className: 'marriage_sign' },
                                                        '\u9650\u5DF2\u5A5A'
                                                        )
                                                    ),
                                                    React.createElement(
                                                        'div',
                                                        { className: 'pull_right' },
                                                        React.createElement('i', { className: 'iconfont icon-xiangyou xiangyou' })
                                                    )
                                                ),
                                                React.createElement(
                                                    'div',
                                                    { style: { marginTop: "0.01rem" } },
                                                    value.tagList ? React.createElement(
                                                        'p',
                                                        null,
                                                        value.tagList.map(function (item, key) {
                                                            return React.createElement(
                                                                'span',
                                                                { className: 'tag mr5 tag5', key: key },
                                                                item.name
                                                            );
                                                        }),
                                                        value.type === 3 ? null : _.isEmpty(value.keyword) ? null : React.createElement(
                                                            'span',
                                                            null,
                                                            value.keyword
                                                        )
                                                    ) : React.createElement(
                                                        'p',
                                                        { className: 'key-words' },
                                                        value.type === 3 ? null : _.isEmpty(value.keyword) ? null : React.createElement(
                                                            'span',
                                                            null,
                                                            value.keyword
                                                        )
                                                    )
                                                ),
                                                React.createElement(
                                                    'div',
                                                    { className: 'meal_introduce c-6' },
                                                    value.description ? value.description : "暂无介绍"
                                                ),
                                                !_this12.state.hideMealPrice && React.createElement(
                                                'div',
                                                { className: 'meal_price maincolor' },
                                                '\uFFE5',
                                                React.createElement(
                                                    'span',
                                                    { className: '_f32' },
                                                    +TJ.formatPrice(value.price)
                                                ),
                                                value.price < value.displayPrice && React.createElement(
                                                'span',
                                                { className: 'meal_displayprice' },
                                                '\uFFE5',
                                                TJ.formatPrice(value.displayPrice)
                                                )
                                                ),
                                                _this12.state.isMarketing && value.rebateAmount ? React.createElement(
                                                    'div',
                                                    { className: 'rebateAmount' },
                                                    '\u9884\u8BA1\u63A8\u5E7F\u6536\u76CA\uFFE5',
                                                    (value.rebateAmount / 1).toFixed(2)
                                                ) : null
                                            )
                                        )
                                    );
                                }),
                                this.state.loadingMeal ? React.createElement(
                                    'div',
                                    { className: 'lookmore' },
                                    React.createElement('img', { src: '/mobile/images/load.gif' })
                                ) : this.state.page.currentPage * this.state.page.pageSize >= this.state.page.rowCount ? React.createElement(
                                    'div',
                                    { className: 'lookmore nomore' },
                                    '\u6CA1\u6709\u66F4\u591A\u4E86'
                                ) : React.createElement(
                                    'div',
                                    { className: 'lookmore', onClick: this.pageChange },
                                    '\u67E5\u770B\u66F4\u591A...'
                                )
                            ),
                            React.createElement('img', { src: '/mobile/images/load.gif', style: { opacity: 0, position: "absolute", top: "0", zIndex: "-1" } })
                        )
                    ),
                    React.createElement(ReturnTop, null),
                    React.createElement(_index2.default, { origin: "来自套餐列表页的咨询" }),
                    React.createElement(_index4.default, null),
                    React.createElement(Activity38Window, null),
                    React.createElement(
                        'div',
                        null,
                        React.createElement('div', { className: this.state.labelModal ? "label-modal" : "", onClick: function onClick() {
                                return _this12.hideModal();
                            } }),
                        React.createElement(
                            'div',
                            { className: 'label-modal-body', style: { right: this.state.labelModal ? "0" : "-80%" } },
                            React.createElement(
                                'div',
                                { className: 'label-body', style: { "paddingTop": isWebview ? ".07rem" : ".55rem" } },
                                React.createElement(
                                    'div',
                                    { className: 'part bdr-b' },
                                    React.createElement(
                                        'div',
                                        { className: 'type' },
                                        '\u6027\u522B'
                                    ),
                                    React.createElement(
                                        'div',
                                        { className: 'type-body' },
                                        _.map(genderIdx, function (gender, key) {
                                            var checked = _this12.state.gender === gender.id;
                                            var cls = checked ? 'label-checked maincolor mainborder label-titles bg-wt' : 'label-titles';
                                            return React.createElement(
                                                'span',
                                                {
                                                    key: key,
                                                    className: cls,
                                                    title: gender.name,
                                                    onClick: function onClick() {
                                                        return _this12.checkGender(gender);
                                                    }
                                                },
                                                gender.name,
                                                checked && React.createElement('i', { className: 'icon iconfont icon-gouxuanjiaobiao gou' })
                                            );
                                        })
                                    )
                                ),
                                React.createElement(
                                    'div',
                                    { className: 'part bdr-b mt10' },
                                    React.createElement(
                                        'div',
                                        { className: 'type' },
                                        '\u4EF7\u683C'
                                    ),
                                    React.createElement(
                                        'div',
                                        { className: 'type-body' },
                                        _.map(priceIdx, function (price, key) {
                                            var checked = _this12.state.price == price.id;
                                            var cls = checked ? 'label-checked maincolor mainborder label-titles bg-wt' : 'label-titles';
                                            return React.createElement(
                                                'span',
                                                {
                                                    key: key,
                                                    className: cls,
                                                    title: price.name,
                                                    onClick: function onClick() {
                                                        return _this12.checkPrice(price);
                                                    }
                                                },
                                                price.name,
                                                checked && React.createElement('i', { className: 'icon iconfont icon-gouxuanjiaobiao gou' })
                                            );
                                        })
                                    )
                                ),
                                React.createElement(
                                    'div',
                                    { className: 'part bdr-b mt10' },
                                    React.createElement(
                                        'div',
                                        { className: 'type' },
                                        '\u9002\u7528\u4EBA\u7FA4'
                                    ),
                                    React.createElement(
                                        'div',
                                        { className: 'type-body' },
                                        _.map(ageIdx, function (ageLevel, key) {
                                            var checked = _this12.state.ageLevelIds.indexOf(ageLevel.id) > -1;
                                            var cls = checked ? 'label-checked maincolor mainborder label-titles bg-wt' : 'label-titles';
                                            return React.createElement(
                                                'span',
                                                {
                                                    key: key,
                                                    className: cls,
                                                    title: ageLevel.name,
                                                    onClick: function onClick() {
                                                        return _this12.checkAgeLevel(ageLevel);
                                                    }
                                                },
                                                ageLevel.name,
                                                checked && React.createElement('i', { className: 'icon iconfont icon-gouxuanjiaobiao gou' })
                                            );
                                        })
                                    )
                                ),
                                React.createElement(
                                    'div',
                                    { className: 'part bdr-b mt10' },
                                    React.createElement(
                                        'div',
                                        { className: 'type' },
                                        '\u4F53\u68C0\u7C7B\u578B'
                                    ),
                                    React.createElement(
                                        'div',
                                        { className: 'type-body' },
                                        _.map(this.state.classifyIdx, function (classify, key) {
                                            var checked = _this12.state.classifyIds === classify.id;
                                            var cls = checked ? 'label-checked maincolor mainborder label-titles bg-wt' : 'label-titles';
                                            return React.createElement(
                                                'span',
                                                {
                                                    key: key,
                                                    className: cls,
                                                    title: classify.name,
                                                    onClick: function onClick() {
                                                        return _this12.checkClassify(classify);
                                                    }
                                                },
                                                classify.name,
                                                checked && React.createElement('i', { className: 'icon iconfont icon-gouxuanjiaobiao gou' })
                                            );
                                        })
                                    )
                                ),
                                this.state.labelDataList.map(function (item, idx) {
                                    return React.createElement(
                                        'div',
                                        { className: 'part bdr-b mt10', key: idx },
                                        React.createElement(
                                            'div',
                                            { className: 'type' },
                                            item.name
                                        ),
                                        React.createElement(
                                            'div',
                                            { className: 'type-body' },
                                            _.map(item.tags, function (it, key) {
                                                var checked = _this12.state.currentLabel.indexOf(it.id) > -1;
                                                var cls = checked ? 'label-checked maincolor mainborder label-titles bg-wt' : 'label-titles';
                                                return React.createElement(
                                                    'span',
                                                    {
                                                        key: key,
                                                        className: cls,
                                                        title: it.name,
                                                        onClick: function onClick() {
                                                            return _this12.checkLabel(it);
                                                        }
                                                    },
                                                    it.name,
                                                    checked && React.createElement('i', { className: 'icon iconfont icon-gouxuanjiaobiao gou' })
                                                );
                                            })
                                        )
                                    );
                                })
                            ),
                            React.createElement(
                                'div',
                                { className: 'label-bot pt10' },
                                React.createElement(
                                    'div',
                                    { className: 'pct40 fl reset', onClick: function onClick() {
                                            return _this12.resetLabel();
                                        } },
                                    '\u91CD\u7F6E'
                                ),
                                React.createElement(
                                    'div',
                                    { className: 'pct40 fl mainbackground mainborder', onClick: function onClick() {
                                            return _this12.completeSelect();
                                        } },
                                    '\u786E\u8BA4'
                                )
                            )
                        )
                    ),
                    React.createElement(
                        _dialog2.default,
                        { show: this.state.protocolDialog.show, title: this.state.protocolDialog.title, buttons: this.state.protocolDialog.buttons },
                        React.createElement('div', { dangerouslySetInnerHTML: { __html: this.state.protocol } }),
                        React.createElement(
                            'div',
                            { className: 'never-remind' },
                            React.createElement(
                                'label',
                                { htmlFor: 'never-remind' },
                                React.createElement('input', {
                                    id: 'never-remind',
                                    type: 'checkbox',
                                    checked: this.state.protocolDialog.neverRemind,
                                    onChange: this.setNeverRemind
                                }),
                                React.createElement(
                                    'span',
                                    { className: 'ml10' },
                                    '\u4E0D\u518D\u63D0\u9192'
                                )
                            )
                        )
                    ),
                    showLoginModal && React.createElement(_index8.default, { logined: this.logined, mobile: TJ.getUrlParam("userMobile") })
                );
            }

        });

        React.render(React.createElement(MealView, null), document.getElementById('body-wrap'));

        /***/ }),

    /***/ 3:
    /***/ (function(module, exports) {

        module.exports = window.React;

        /***/ }),

    /***/ 6:
    /***/ (function(module, exports) {

        "use strict";

        module.exports = function () {
            var list = [];
            list.toString = function toString() {
                var result = [];
                for (var i = 0; i < this.length; i++) {
                    var item = this[i];
                    if (item[2]) {
                        result.push("@media " + item[2] + "{" + item[1] + "}");
                    } else {
                        result.push(item[1]);
                    }
                }
                return result.join("");
            };
            return list;
        };

        /***/ }),

    /***/ 7:
    /***/ (function(module, exports, __webpack_require__) {

        /*
		MIT License http://www.opensource.org/licenses/mit-license.php
		Author Tobias Koppers @sokra
	*/
        var stylesInDom = {},
            memoize = function(fn) {
                var memo;
                return function () {
                    if (typeof memo === "undefined") memo = fn.apply(this, arguments);
                    return memo;
                };
            },
            isIE9 = memoize(function() {
                return /msie 9\b/.test(window.navigator.userAgent.toLowerCase());
            }),
            getHeadElement = memoize(function () {
                return document.head || document.getElementsByTagName("head")[0];
            }),
            singletonElement = null,
            singletonCounter = 0;

        module.exports = function(list, options) {
            if(false) {
                if(typeof document !== "object") throw new Error("The style-loader cannot be used in a non-browser environment");
            }

            options = options || {};
            // Force single-tag solution on IE9, which has a hard limit on the # of <style>
            // tags it will allow on a page
            if (typeof options.singleton === "undefined") options.singleton = isIE9();

            var styles = listToStyles(list);
            addStylesToDom(styles, options);

            return function update(newList) {
                var mayRemove = [];
                for(var i = 0; i < styles.length; i++) {
                    var item = styles[i];
                    var domStyle = stylesInDom[item.id];
                    domStyle.refs--;
                    mayRemove.push(domStyle);
                }
                if(newList) {
                    var newStyles = listToStyles(newList);
                    addStylesToDom(newStyles, options);
                }
                for(var i = 0; i < mayRemove.length; i++) {
                    var domStyle = mayRemove[i];
                    if(domStyle.refs === 0) {
                        for(var j = 0; j < domStyle.parts.length; j++)
                            domStyle.parts[j]();
                        delete stylesInDom[domStyle.id];
                    }
                }
            };
        }

        function addStylesToDom(styles, options) {
            for(var i = 0; i < styles.length; i++) {
                var item = styles[i];
                var domStyle = stylesInDom[item.id];
                if(domStyle) {
                    domStyle.refs++;
                    for(var j = 0; j < domStyle.parts.length; j++) {
                        domStyle.parts[j](item.parts[j]);
                    }
                    for(; j < item.parts.length; j++) {
                        domStyle.parts.push(addStyle(item.parts[j], options));
                    }
                } else {
                    var parts = [];
                    for(var j = 0; j < item.parts.length; j++) {
                        parts.push(addStyle(item.parts[j], options));
                    }
                    stylesInDom[item.id] = {id: item.id, refs: 1, parts: parts};
                }
            }
        }

        function listToStyles(list) {
            var styles = [];
            var newStyles = {};
            for(var i = 0; i < list.length; i++) {
                var item = list[i];
                var id = item[0];
                var css = item[1];
                var media = item[2];
                var sourceMap = item[3];
                var part = {css: css, media: media, sourceMap: sourceMap};
                if(!newStyles[id])
                    styles.push(newStyles[id] = {id: id, parts: [part]});
                else
                    newStyles[id].parts.push(part);
            }
            return styles;
        }

        function createStyleElement() {
            var styleElement = document.createElement("style");
            var head = getHeadElement();
            styleElement.type = "text/css";
            head.appendChild(styleElement);
            return styleElement;
        }

        function addStyle(obj, options) {
            var styleElement, update, remove;

            if (options.singleton) {
                var styleIndex = singletonCounter++;
                styleElement = singletonElement || (singletonElement = createStyleElement());
                update = applyToSingletonTag.bind(null, styleElement, styleIndex, false);
                remove = applyToSingletonTag.bind(null, styleElement, styleIndex, true);
            } else {
                styleElement = createStyleElement();
                update = applyToTag.bind(null, styleElement);
                remove = function () {
                    styleElement.parentNode.removeChild(styleElement);
                };
            }

            update(obj);

            return function updateStyle(newObj) {
                if(newObj) {
                    if(newObj.css === obj.css && newObj.media === obj.media && newObj.sourceMap === obj.sourceMap)
                        return;
                    update(obj = newObj);
                } else {
                    remove();
                }
            };
        }

        function replaceText(source, id, replacement) {
            var boundaries = ["/** >>" + id + " **/", "/** " + id + "<< **/"];
            var start = source.lastIndexOf(boundaries[0]);
            var wrappedReplacement = replacement
                ? (boundaries[0] + replacement + boundaries[1])
                : "";
            if (source.lastIndexOf(boundaries[0]) >= 0) {
                var end = source.lastIndexOf(boundaries[1]) + boundaries[1].length;
                return source.slice(0, start) + wrappedReplacement + source.slice(end);
            } else {
                return source + wrappedReplacement;
            }
        }

        function applyToSingletonTag(styleElement, index, remove, obj) {
            var css = remove ? "" : obj.css;

            if(styleElement.styleSheet) {
                styleElement.styleSheet.cssText = replaceText(styleElement.styleSheet.cssText, index, css);
            } else {
                var cssNode = document.createTextNode(css);
                var childNodes = styleElement.childNodes;
                if (childNodes[index]) styleElement.removeChild(childNodes[index]);
                if (childNodes.length) {
                    styleElement.insertBefore(cssNode, childNodes[index]);
                } else {
                    styleElement.appendChild(cssNode);
                }
            }
        }

        function applyToTag(styleElement, obj) {
            var css = obj.css;
            var media = obj.media;
            var sourceMap = obj.sourceMap;

            if(sourceMap && typeof btoa === "function") {
                try {
                    css += "\n/*# sourceMappingURL=data:application/json;base64," + btoa(JSON.stringify(sourceMap)) + " */";
                    css = "@import url(\"data:text/css;base64," + btoa(css) + "\")";
                } catch(e) {}
            }

            if(media) {
                styleElement.setAttribute("media", media)
            }

            if(styleElement.styleSheet) {
                styleElement.styleSheet.cssText = css;
            } else {
                while(styleElement.firstChild) {
                    styleElement.removeChild(styleElement.firstChild);
                }
                styleElement.appendChild(document.createTextNode(css));
            }
        }


        /***/ }),

    /***/ 15:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });
        exports.hideHeader = undefined;

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _amfeEnv = __webpack_require__(16);

        __webpack_require__(23);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        function _objectWithoutProperties(obj, keys) { var target = {}; for (var i in obj) { if (keys.indexOf(i) >= 0) continue; if (!Object.prototype.hasOwnProperty.call(obj, i)) continue; target[i] = obj[i]; } return target; }

        // 如果是浙江融创的app中内嵌的页面，不显示页头
        var isZheJiangRongChuang = TJ_PROFILE.site === '/zjrc' && !!_amfeEnv.browser.isWebview;
        var hideHeader = _amfeEnv.thirdapp.isWeixin || Util.inMachine() || isZheJiangRongChuang;
        // 如果在支付宝小程序中就显示此头部(因支付宝小程序自带头部，所以不用显示)
        TJ.isAliMini().then(function () {
            exports.hideHeader = hideHeader = true;
        }).catch(function () {});

        var Header = _react2.default.createClass({
            displayName: 'Header',
            getInitialState: function getInitialState() {
                this.title = this.props.title || this.props.children;
                return { isFromWxapp: TJ.getUrlParam('isFromWxapp') || false };
            },
            goBackEv: function goBackEv() {
                var backUrl = TJ.getUrlParam('backUrl');
                if (this.props.onClickBack) {
                    this.props.onClickBack();
                } else if (backUrl) {
                    window.location.href = decodeURIComponent(backUrl);
                } else {
                    var hasHistory = document.referrer;
                    if (hasHistory) {
                        // 上一个页面来源和当前页不一样，主要在微信页面需要获取openId的情况，解决页面返回无效的问题
                        if (hasHistory.indexOf(location.host) == -1) {
                            history.go(-2);
                        } else {
                            history.go(-1);
                        }
                    } else {
                        // 需要处理在 app 中的情况
                        if (TJ.isInSideAppAndNeedHideTab()) {
                            TJ.webviewPostData('toAppAndHandleHistoryGoBack', -1);
                            // history.go(-1)
                        } else {
                            this.goHome();
                        }
                    }
                }
            },
            goHome: function goHome() {
                window.location.href = this.props.homeUrl || TJ.tourl('/welcome');
            },
            setTitle: function setTitle(title) {
                document.title = this.props.showDocumentTitle ? title : '';
                if (/ip(hone|od|ad)/i.test(navigator.userAgent)) {
                    var i = document.createElement('iframe');
                    i.src = '/favicon.ico';
                    i.style.display = 'none';
                    i.onload = function () {
                        setTimeout(function () {
                            i.remove();
                        }, 9);
                    };
                    document.body.appendChild(i);
                }
            },
            componentDidMount: function componentDidMount() {
                !!this.title && this.setTitle(this.title);
            },
            componentDidUpdate: function componentDidUpdate() {
                var nextTitle = this.props.title || this.props.children || '';
                if (this.title !== nextTitle) {
                    this.setTitle(nextTitle);
                    this.title = nextTitle;
                }
            },
            render: function render() {
                var _props = this.props,
                    title = _props.title,
                    left = _props.left,
                    right = _props.right,
                    showBack = _props.showBack,
                    homeUrl = _props.homeUrl,
                    showHome = _props.showHome,
                    backText = _props.backText,
                    lineColor = _props.lineColor,
                    children = _props.children,
                    className = _props.className,
                    others = _objectWithoutProperties(_props, ['title', 'left', 'right', 'showBack', 'homeUrl', 'showHome', 'backText', 'lineColor', 'children', 'className']);

                var lineSty = {};
                lineColor && (lineSty.backgroundColor = lineColor);

                // 如果是城市服务, 显示页头
                if (TJ.isWxCityServer() && homeUrl && showHome) {
                    showHome = false;
                    right = _react2.default.createElement(
                        'a',
                        { href: TJ.tourl('/usercenter') },
                        _react2.default.createElement('i', { className: 'iconfont icon-tijianrenguanliX' })
                    );
                } else if (hideHeader && !TJ.isMiniApp()) {
                    return null;
                }
                if (TJ.isHideSomeModuleInCompnayPage()) {
                    right = null;
                    showHome = false;
                }

                return _react2.default.createElement(
                    'div',
                    { className: 'mt-header-wrap' },
                    _react2.default.createElement(
                        'div',
                        { className: 'mt-header-inner' },
                        _react2.default.createElement(
                            'div',
                            { className: 'mt-header-left' },
                            showBack && _react2.default.createElement(
                            'a',
                            { className: 'mt-header-back', href: 'javascript:;', onClick: this.goBackEv },
                            _react2.default.createElement('i', { className: 'iconfont icon-xiangzuo mt-header-back-icon' }),
                            _react2.default.createElement(
                                'span',
                                { className: 'mt-header-back-text' },
                                backText
                            )
                            ),
                            left
                        ),
                        _react2.default.createElement(
                            'h1',
                            { className: 'mt-header-title' },
                            title || children
                        ),
                        _react2.default.createElement(
                            'div',
                            { className: 'mt-header-right ell' },
                            right,
                            showHome && _react2.default.createElement('a', { className: 'iconfont icon-shouye mt-header-icon-home', href: 'javascript:;', onClick: this.goHome })
                        ),
                        _react2.default.createElement('div', { className: 'header-line', style: lineSty })
                    )
                );
            }
        });

        Header.propTypes = {
            title: _react2.default.PropTypes.any.isRequired,
            left: _react2.default.PropTypes.any,
            right: _react2.default.PropTypes.any,
            showBack: _react2.default.PropTypes.bool,
            backText: _react2.default.PropTypes.string,
            showHome: _react2.default.PropTypes.bool,
            homeUrl: _react2.default.PropTypes.string,
            preventGoBack: _react2.default.PropTypes.bool,
            lineColor: _react2.default.PropTypes.string,
            showDocumentTitle: _react2.default.PropTypes.bool
        };

        Header.defaultProps = {
            title: '', // 标题，一般使用文本，更复杂的可使用jsx
            backText: '',
            lineColor: '',
            showBack: true, // 是否显示左侧的返回按钮
            showHome: true, // 是否显示右侧的首页图标
            showDocumentTitle: true, // 是否显示页面tile
            homeUrl: '',
            onClickBack: null,
            preventGoBack: false, //是否阻止返回
            left: '', // 可自定义的左侧内容，一般使用文本，更复杂的可使用jsx
            right: '' // 可自定义的右侧内容一般使用文本，更复杂的可使用jsx
        };

        exports.hideHeader = hideHeader;
        exports.default = Header;

        /***/ }),

    /***/ 16:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });
        exports.Version = exports.params = exports.thirdapp = exports.aliapp = exports.os = exports.browser = undefined;

        var _aliapp = __webpack_require__(17);

        var _aliapp2 = _interopRequireDefault(_aliapp);

        var _browser = __webpack_require__(20);

        var _browser2 = _interopRequireDefault(_browser);

        var _os = __webpack_require__(19);

        var _os2 = _interopRequireDefault(_os);

        var _thirdapp = __webpack_require__(21);

        var _thirdapp2 = _interopRequireDefault(_thirdapp);

        var _params = __webpack_require__(22);

        var _params2 = _interopRequireDefault(_params);

        var _version = __webpack_require__(18);

        var _version2 = _interopRequireDefault(_version);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        exports.browser = _browser2.default;
        exports.os = _os2.default;
        exports.aliapp = _aliapp2.default;
        exports.thirdapp = _thirdapp2.default;
        exports.params = _params2.default;
        exports.Version = _version2.default;

        /***/ }),

    /***/ 17:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _version = __webpack_require__(18);

        var _version2 = _interopRequireDefault(_version);

        var _os = __webpack_require__(19);

        var _os2 = _interopRequireDefault(_os);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        var ua = window.navigator.userAgent;
        var aliapp = false;

        var windvane;
        var matched;
        var appname = '';
        var platform = '';
        var version = '';

        if (matched = ua.match(/WindVane[\/\s]([\d\.\_]+)/i)) {
            windvane = matched[1];
        }

        if (matched = ua.match(/AliApp\(([A-Z\-]+)\/([\d\.]+)\)/i)) {
            aliapp = true;
            appname = matched[1];
            version = matched[2];
            /* istanbul ignore next */
            if (appname.indexOf('-PD') > 0) {
                /* istanbul ignore if */
                if (_os2.default.isIOS) {
                    platform = 'iPad';
                } else if (_os2.default.isAndroid) {
                    platform = 'AndroidPad';
                } else {
                    platform = _os2.default.name;
                }
            } else {
                platform = _os2.default.name;
            }
        }

        // 兼容手淘的一个bug，在webview初始化异常时，在ua中只包含TBIOS字样，也认为是手淘webview。
        /* istanbul ignore if */
        if (!appname && ua.indexOf('TBIOS') > 0) {
            appname = 'TB';
        }

        // 判断poplayer
        // poplayer相关信息，在poplayer会有该字段，形如 window._ua_popLayer = 'PopLayer/1.3.4'
        // poplayer信息不在ua中是因为在IOS下，修改poplayer层的ua会导致所有webview的ua改变，所以只能写在全局变量中
        var poplayerInfo = window._ua_popLayer || '';
        var poplayer = false;
        var poplayerVersion = '';
        if (poplayerInfo && (matched = poplayerInfo.match(/PopLayer\/([\d\.]+)/i))) {
            poplayer = true;
            poplayerVersion = matched[1];
        }

        if (aliapp) {
            aliapp = {
                windvane: new _version2.default(windvane || '0.0.0'),
                appname: appname || 'unkown',
                version: new _version2.default(version || '0.0.0'),
                platform: platform || _os2.default.name,
                poplayer: poplayer || false,
                poplayerVersion: new _version2.default(poplayerVersion || '0.0.0')
            };
        }

        exports.default = aliapp;

        /***/ }),

    /***/ 18:
    /***/ (function(module, exports) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _createClass = function () {
            function defineProperties(target, props) {
                for (var i = 0; i < props.length; i++) {
                    var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
                }
            }return function (Constructor, protoProps, staticProps) {
                if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
            };
        }();

        function _classCallCheck(instance, Constructor) {
            if (!(instance instanceof Constructor)) {
                throw new TypeError("Cannot call a class as a function");
            }
        }

        var Version = function () {
            _createClass(Version, null, [{
                key: 'compare',
                value: function compare(v1, v2) {
                    v1 = v1.toString().split('.');
                    v2 = v2.toString().split('.');

                    for (var i = 0; i < v1.length || i < v2.length; i++) {
                        var n1 = parseInt(v1[i], 10);
                        var n2 = parseInt(v2[i], 10);

                        /* istanbul ignore if */
                        if (isNaN(n1)) {
                            n1 = 0;
                        }

                        /* istanbul ignore if */
                        if (isNaN(n2)) {
                            n2 = 0;
                        }
                        if (n1 < n2) {
                            return -1;
                        } else if (n1 > n2) {
                            return 1;
                        }
                    }
                    return 0;
                }
            }]);

            function Version(v) {
                _classCallCheck(this, Version);

                if (v) {
                    this.val = v.toString();
                } else {
                    this.val = '';
                }
            }

            _createClass(Version, [{
                key: 'gt',
                value: function gt(v) {
                    return Version.compare(this, v) > 0;
                }
            }, {
                key: 'gte',
                value: function gte(v) {
                    return Version.compare(this, v) >= 0;
                }
            }, {
                key: 'lt',
                value: function lt(v) {
                    return Version.compare(this, v) < 0;
                }
            }, {
                key: 'lte',
                value: function lte(v) {
                    return Version.compare(this, v) <= 0;
                }
            }, {
                key: 'eq',
                value: function eq(v) {
                    return Version.compare(this, v) === 0;
                }
            }, {
                key: 'toString',
                value: function toString() {
                    return this.val.toString();
                }
            }]);

            return Version;
        }();

        exports.default = Version;

        /***/ }),

    /***/ 19:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _version = __webpack_require__(18);

        var _version2 = _interopRequireDefault(_version);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        var ua = window.navigator.userAgent;
        var os;
        var matched;

        if (matched = ua.match(/Windows\sPhone\s(?:OS\s)?([\d\.]+)/)) {
            os = {
                name: 'Windows Phone',
                isWindowsPhone: true,
                version: new _version2.default(matched[1])
            };
        } else if (!!ua.match(/Safari/) && (matched = ua.match(/Android[\s\/]([\d\.]+)/))) {
            os = {
                version: new _version2.default(matched[1])
            };

            if (ua.match(/Mobile\s+Safari/)) {
                os.name = 'Android';
                os.isAndroid = true;
            } else {
                os.name = 'AndroidPad';
                os.isAndroidPad = true;
            }
        } else if (matched = ua.match(/(iPhone|iPad|iPod)/)) {
            var name = matched[1];

            if (matched = ua.match(/OS ([\d_\.]+) like Mac OS X/)) {
                os = {
                    name: name,
                    isIPhone: name === 'iPhone' || name === 'iPod',
                    isIPad: name === 'iPad',
                    isIOS: true,
                    version: new _version2.default(matched[1].split('_').join('.'))
                };
            }
        }

        if (!os) {
            os = {
                name: 'unknown',
                version: new _version2.default('0.0.0')
            };
        }

        exports.default = os;

        /***/ }),

    /***/ 20:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _version = __webpack_require__(18);

        var _version2 = _interopRequireDefault(_version);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        var ua = window.navigator.userAgent;
        var browser;
        var matched;

        if (matched = ua.match(/(?:UCWEB|UCBrowser\/)([\d\.]+)/)) {
            browser = {
                name: 'UC',
                isUC: true,
                version: new _version2.default(matched[1])
            };
        } else if (matched = ua.match(/MQQBrowser\/([\d\.]+)/)) {
            browser = {
                name: 'QQ',
                isQQ: true,
                version: new _version2.default(matched[1])
            };
        } else if (matched = ua.match(/(?:Firefox|FxiOS)\/([\d\.]+)/)) {
            browser = {
                name: 'Firefox',
                isFirefox: true,
                version: new _version2.default(matched[1])
            };
        } else if ((matched = ua.match(/MSIE\s([\d\.]+)/)) || (matched = ua.match(/IEMobile\/([\d\.]+)/))) {

            browser = {
                version: new _version2.default(matched[1])
            };

            if (ua.match(/IEMobile/)) {
                browser.name = 'IEMobile';
                browser.isIEMobile = true;
            } else {
                browser.name = 'IE';
                browser.isIE = true;
            }

            if (ua.match(/Android|iPhone/)) {
                browser.isIELikeWebkit = true;
            }
        } else if (matched = ua.match(/(?:Chrome|CriOS)\/([\d\.]+)/)) {
            browser = {
                name: 'Chrome',
                isChrome: true,
                version: new _version2.default(matched[1])
            };

            if (ua.match(/Version\/[\d+\.]+\s*Chrome/)) {
                browser.name = 'Chrome Webview';
                browser.isWebview = true;
            }
        } else if (!!ua.match(/Safari/) && (matched = ua.match(/Android[\s\/]([\d\.]+)/))) {
            browser = {
                name: 'Android',
                isAndroid: true,
                version: new _version2.default(matched[1])
            };
        } else if (ua.match(/iPhone|iPad|iPod/)) {
            if (ua.match(/Safari/) && (matched = ua.match(/Version\/([\d\.]+)/))) {
                browser = {
                    name: 'Safari',
                    isSafari: true,
                    version: new _version2.default(matched[1])
                };
            } else if (matched = ua.match(/OS ([\d_\.]+) like Mac OS X/)) {
                browser = {
                    name: 'iOS Webview',
                    isWebview: true,
                    version: new _version2.default(matched[1].replace(/\_/g, '.'))
                };
            }
        }

        /* istanbul ignore if */
        if (!browser) {
            browser = {
                name: 'unknown',
                version: new _version2.default('0.0.0')
            };
        }

        exports.default = browser;

        /***/ }),

    /***/ 21:
    /***/ (function(module, exports) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });
        var ua = window.navigator.userAgent;

        var thirdapp;

        if (ua.match(/Weibo/i)) {
            /**
             * @type {Object}
             * @memberof lib.env
             * @property {String} appname - 操作系统名称，比如Weibo/Weixin/unknown等
             * @property {Boolean} isWeibo - 是否是微博
             * @property {Boolean} isWeixin - 是否是微信
             */
            thirdapp = {
                appname: 'Weibo',
                isWeibo: true
            };
        } else if (ua.match(/MicroMessenger/i)) {
            thirdapp = {
                appname: 'Weixin',
                isWeixin: true
            };
            /* istanbul ignore next */
        } else {
            /* istanbul ignore next */
            thirdapp = false;
        }

        exports.default = thirdapp;

        /***/ }),

    /***/ 22:
    /***/ (function(module, exports) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });
        var params = {};
        var search = window.location.search.replace(/^\?/, '');

        if (search) {
            var splits = search.split('&');
            for (var i = 0; i < splits.length; i++) {
                splits[i] = splits[i].split('=');
                try {
                    params[splits[i][0]] = decodeURIComponent(splits[i][1]);
                    /* istanbul ignore next */
                } catch (e) {
                    /* istanbul ignore next */
                    params[splits[i][0]] = splits[i][1];
                }
            }
        }

        exports.default = params;

        /***/ }),

    /***/ 23:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(24);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/mt-react-ui/style/header.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/mt-react-ui/style/header.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 24:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".mt-header-wrap {\n  height: .42rem;\n  position: relative;\n}\n.mt-header-inner {\n  position: fixed;\n  padding: .02rem 0;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  background-color: #fff;\n  height: .42rem;\n  width: 100%;\n  max-width: 450px;\n  margin: 0 auto;\n  z-index: 10;\n}\n.mt-header-ink-bar {\n  height: 2px;\n  background-color: currentColor;\n  position: absolute;\n  left: 0;\n  right: 0;\n  bottom: 0;\n  top: auto;\n}\n.mt-header-back-text {\n  display: inline-block;\n  line-height: 1;\n  padding: 5px 0;\n}\n.mt-header-back-icon {\n  float: left;\n  font-size: .24rem;\n  position: relative;\n  top: 1px;\n}\n.mt-header-icon-home {\n  font-size: .22rem;\n  vertical-align: middle;\n}\n.mt-header-title {\n  margin: 0 .88rem;\n  line-height: .38rem;\n  text-align: center;\n  height: .38rem;\n  font-size: .16rem;\n  font-weight: bold;\n  width: auto;\n  overflow: hidden;\n  text-overflow: ellipsis;\n  white-space: nowrap;\n  color: #1c2438;\n}\n.mt-header-right,\n.mt-header-left {\n  position: absolute;\n  top: .05rem;\n  display: block;\n  font-size: .14rem;\n}\n.mt-header-right:active,\n.mt-header-left:active {\n  opacity: .6;\n}\n.mt-header-right a,\n.mt-header-left a {\n  display: inline-block;\n  padding: .05rem .1rem;\n}\n.mt-header-right {\n  right: .1rem;\n  max-width: 1rem;\n}\n.mt-header-left {\n  left: .1rem;\n}\n", ""]);

        /***/ }),

    /***/ 25:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        __webpack_require__(26);

        var _dialog = __webpack_require__(28);

        var _dialog2 = _interopRequireDefault(_dialog);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var React = __webpack_require__(3);
        var PropTypes = React.PropTypes;


        var MealHeadTopView = React.createClass({
            displayName: 'MealHeadTopView',

            getInitialState: function getInitialState() {
                return {
                    hospital: this.props.hospital,
                    newCardId: this.props.newCardId,
                    logo: this.props.logo,
                    examNotice: '',
                    showNotice: false
                };
            },

            toHosDetailPage: function toHosDetailPage() {
                if (TJ_PROFILE.siteType != 2) {
                    return;
                }
                location.href = TJ.tourl('/healthcenter?hospitalId=' + this.state.hospital.id);
            },

            showNotice: function showNotice(e) {
                this.setState({
                    showNotice: true
                });
                e.stopPropagation();
            },
            getNotice: function getNotice() {
                var _this = this;

                console.log(this.state.newCardId);
                console.log(TJ.getUrlParam("cardId"));
                var cardId = this.state.newCardId ? this.state.newCardId : TJ.getUrlParam("cardId");
                $.getter('/examNotice?hospitalId=' + this.state.hospital.id + '&cardId=' + cardId).done(function (res) {
                    _this.setState({ examNotice: res.examNotice });
                }).fail(function (xhr, textStatus, errorThrown) {
                    dialog.show({
                        title: '警告',
                        message: textStatus && textStatus.text || '数据异常'
                    });
                });
            },
            componentWillMount: function componentWillMount() {
                this.getNotice();
            },


            render: function render() {
                var _this2 = this;

                var showMore = this.state.newCardId || TJ.getUrlParam('cardId') ? true : false;
                var weeks = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
                var weekDay = [];
                if (this.props.workDay) {
                    this.props.workDay.split(',').map(function (i) {
                        weekDay.push(weeks[i - 1]);
                    });
                }
                if (TJ.isHideSomeModuleInCompnayPage()) {
                    return null;
                }
                return React.createElement(
                    'div',
                    { className: 'mealhead-show clearfix' },
                    React.createElement('img', { className: 'logo fl', src: TJ.getImg(this.state.logo), alt: '' }),
                    React.createElement(
                        'div',
                        { className: 'content hosinfo', onClick: this.toHosDetailPage },
                        React.createElement(
                            'div',
                            { className: 'top' },
                            React.createElement(
                                'h3',
                                { className: 'title' },
                                this.state.hospital.name
                            ),
                            TJ_PROFILE.siteType == 2 ? React.createElement('i', { className: 'iconfont icon-xiangyou xiangyou' }) : null
                        ),
                        React.createElement(
                            'div',
                            { className: 'info' },
                            React.createElement(
                                'div',
                                { className: 'line' },
                                React.createElement(
                                    'span',
                                    { className: 'name' },
                                    '\u4F53\u68C0\u5730\u5740\uFF1A'
                                ),
                                this.state.hospital.address.fullAddress
                            ),
                            showMore ? React.createElement(
                                'div',
                                { className: 'line' },
                                React.createElement(
                                    'span',
                                    { className: 'name' },
                                    '\u4F53\u68C0\u65F6\u95F4\uFF1A'
                                ),
                                weekDay.map(function (i, idx) {
                                    return React.createElement(
                                        'span',
                                        null,
                                        i,
                                        idx == weekDay.length - 1 ? '' : '，'
                                    );
                                })
                            ) : null
                        ),
                        showMore ? React.createElement(
                            'div',
                            { className: 'notice pt10 pb10 dib fr', onClick: this.showNotice },
                            '\u4F53\u68C0\u987B\u77E5'
                        ) : null
                    ),
                    React.createElement(
                        _dialog2.default,
                        { show: this.state.showNotice, title: '\u63D0\u793A', buttons: [{ label: '知道了', onClick: function onClick(e) {
                                    e.stopPropagation();_this2.setState({ showNotice: false });
                                } }] },
                        React.createElement('pre', { className: 'ql-editor', dangerouslySetInnerHTML: { __html: this.state.examNotice } })
                    )
                );
            }

        });

        module.exports = MealHeadTopView;

        /***/ }),

    /***/ 26:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(27);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/pages/meal/style/mealheadtop.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/pages/meal/style/mealheadtop.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 27:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".mealhead-show {\n  padding: .15rem;\n  background: #fff;\n  position: relative;\n  margin-bottom: .1rem;\n}\n.logo {\n  width: 60px;\n  height: 60px;\n  margin-right: 10px;\n  border-radius: 5px;\n}\n.hosinfo {\n  overflow: hidden;\n  margin-top: .07rem;\n  line-height: 1;\n}\n.hosinfo .top {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n  -webkit-box-pack: justify;\n  -webkit-justify-content: space-between;\n      -ms-flex-pack: justify;\n          justify-content: space-between;\n  margin-bottom: .2rem;\n}\n.hosinfo .top .xiangyou {\n  color: #bbbec4;\n}\n.hosinfo .top .title {\n  font-size: .16rem;\n  margin-bottom: .02rem;\n  color: #1c2438;\n  font-weight: bold;\n}\n.hosinfo .info {\n  font-size: .12rem;\n  color: #80848f;\n}\n.hosinfo .info .line {\n  overflow: hidden;\n  white-space: nowrap;\n  text-overflow: ellipsis;\n  display: inline-block;\n  width: 100%;\n  margin-bottom: .12rem;\n}\n.hosinfo .info .name {\n  color: #495060;\n}\n.hosinfo .notice {\n  color: #576b95;\n  text-align: right;\n}\n", ""]);

        /***/ }),

    /***/ 28:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        __webpack_require__(31);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

        function _objectWithoutProperties(obj, keys) { var target = {}; for (var i in obj) { if (keys.indexOf(i) >= 0) continue; if (!Object.prototype.hasOwnProperty.call(obj, i)) continue; target[i] = obj[i]; } return target; }

        var noop = function noop() {};

        var Dialog = _react2.default.createClass({
            displayName: 'Dialog',

            getInitialState: function getInitialState() {
                return {
                    display: false,
                    active: false
                };
            },

            componentWillReceiveProps: function componentWillReceiveProps(next, prev) {
                return next.show !== this.state.display ? this.update(next.show) : false;
            },

            update: function update(show) {
                var _this = this;

                this.setState({ display: false, active: true });
                this.timer && clearTimeout(this.timer);
                this.timer = setTimeout(function () {
                    _this.setState({ display: show, active: show });
                    show ? _this.props.onShow() : _this.props.onClose();
                }, show ? 0 : 500);
            },
            renderButtons: function renderButtons() {
                return this.props.buttons.map(function (action, idx) {
                    var type = action.type,
                        label = action.label,
                        others = _objectWithoutProperties(action, ['type', 'label']);

                    type = type ? type : 'primary';

                    var className = (0, _classnames2.default)({
                        'weui-dialog__btn weui-dialog__btn_default': type === 'default',
                        'weui-dialog__btn weui-dialog__btn_primary maincolor': type === 'primary'
                    });

                    return _react2.default.createElement(
                        'a',
                        _extends({ key: idx, href: 'javascript:;' }, others, { className: className }),
                        label
                    );
                });
            },
            render: function render() {
                //maskClickHandler点击蒙层回调函数
                var _props = this.props,
                    title = _props.title,
                    className = _props.className,
                    children = _props.children,
                    buttons = _props.buttons,
                    message = _props.message,
                    maskClickHandler = _props.maskClickHandler,
                    others = _objectWithoutProperties(_props, ['title', 'className', 'children', 'buttons', 'message', 'maskClickHandler']);

                var _state = this.state,
                    active = _state.active,
                    display = _state.display;


                var wrapCls = (0, _classnames2.default)('mt-dialog-wrap', {
                    'mt-dialog-wrap__active': active,
                    'mt-dialog-wrap__enter': display
                });

                var innerCls = (0, _classnames2.default)('weui-dialog', _defineProperty({}, className, className));

                return _react2.default.createElement(
                    'div',
                    null,
                    _react2.default.createElement(
                        'div',
                        { className: wrapCls },
                        _react2.default.createElement(
                            'div',
                            _extends({ className: innerCls }, others, { ref: 'mtDialogCon' }),
                            !!title && _react2.default.createElement(
                            'div',
                            { className: 'weui-dialog__hd' },
                            _react2.default.createElement(
                                'strong',
                                { className: 'weui-dialog__title' },
                                title
                            )
                            ),
                            _react2.default.createElement(
                                'div',
                                { className: 'weui-dialog__bd' },
                                ' ',
                                message || children,
                                ' '
                            ),
                            _react2.default.createElement(
                                'div',
                                { className: 'weui-dialog__ft' },
                                ' ',
                                this.renderButtons(),
                                ' '
                            )
                        )
                    ),
                    _react2.default.createElement('div', { className: 'weui-mask mt-dialog-mask', onClick: function onClick() {
                            if (typeof maskClickHandler === 'function') {
                                maskClickHandler();
                            }
                        }, onTouchMove: function onTouchMove(e) {
                            e.preventDefault();
                        } })
                );
            }
        });

        Dialog.propTypes = {
            /**
             * buttons: actions buttons
             * exmaple: [{ type:'default/primary', label:'', onClick:()=>{}}]
             */
            buttons: _react2.default.PropTypes.array, // [{ type:'default/primary', label:'', onClick:()=>{}}]
            /**
             * show: diaplay tips
             */
            show: _react2.default.PropTypes.bool,
            /**
             * title: dialog title
             */
            title: _react2.default.PropTypes.string,
            /**
             * onShow: opened callback
             */
            onShow: _react2.default.PropTypes.func,
            /**
             * onShow: opened callback
             */
            onClose: _react2.default.PropTypes.func,
            /**
             * message: anything
             */
            message: _react2.default.PropTypes.any
        };

        Dialog.defaultProps = {
            buttons: [],
            show: false,
            title: '',
            message: '',
            onShow: noop,
            onClose: noop
        };

        exports.default = Dialog;

        /***/ }),

    /***/ 29:
    /***/ (function(module, exports, __webpack_require__) {

        var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;'use strict';

        var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

        /*!
	  Copyright (c) 2017 Jed Watson.
	  Licensed under the MIT License (MIT), see
	  http://jedwatson.github.io/classnames
	*/
        /* global define */

        (function () {
            'use strict';

            var hasOwn = {}.hasOwnProperty;

            function classNames() {
                var classes = [];

                for (var i = 0; i < arguments.length; i++) {
                    var arg = arguments[i];
                    if (!arg) continue;

                    var argType = typeof arg === 'undefined' ? 'undefined' : _typeof(arg);

                    if (argType === 'string' || argType === 'number') {
                        classes.push(arg);
                    } else if (Array.isArray(arg) && arg.length) {
                        var inner = classNames.apply(null, arg);
                        if (inner) {
                            classes.push(inner);
                        }
                    } else if (argType === 'object') {
                        for (var key in arg) {
                            if (hasOwn.call(arg, key) && arg[key]) {
                                classes.push(key);
                            }
                        }
                    }
                }

                return classes.join(' ');
            }

            if (typeof module !== 'undefined' && module.exports) {
                classNames.default = classNames;
                module.exports = classNames;
            } else if ("function" === 'function' && _typeof(__webpack_require__(30)) === 'object' && __webpack_require__(30)) {
                // register as 'classnames', consistent with npm package name
                !(__WEBPACK_AMD_DEFINE_ARRAY__ = [], __WEBPACK_AMD_DEFINE_RESULT__ = function () {
                    return classNames;
                }.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__), __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
            } else {
                window.classNames = classNames;
            }
        })();

        /***/ }),

    /***/ 30:
    /***/ (function(module, exports) {

        /* WEBPACK VAR INJECTION */(function(__webpack_amd_options__) {module.exports = __webpack_amd_options__;

            /* WEBPACK VAR INJECTION */}.call(exports, {}))

        /***/ }),

    /***/ 31:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(32);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/dialog/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/dialog/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 32:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".weui-dialog {\n  position: static;\n  margin: 0 auto;\n  width: 100%;\n  -webkit-box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);\n          box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);\n  -webkit-transform: scale3d(1.158, 1.158, 1.158);\n          transform: scale3d(1.158, 1.158, 1.158);\n  -webkit-transform-style: preserve-3d;\n          transform-style: preserve-3d;\n  -webkit-backface-visibility: hidden;\n          backface-visibility: hidden;\n  opacity: 0;\n  -webkit-transition: opacity .3s ease, -webkit-transform .3s ease;\n  transition: opacity .3s ease, -webkit-transform .3s ease;\n  transition: opacity .3s ease, transform .3s ease;\n  transition: opacity .3s ease, transform .3s ease, -webkit-transform .3s ease;\n}\n.weui-dialog__bd {\n  max-height: 340px;\n  overflow-y: scroll;\n  -webkit-overflow-scrolling: touch;\n}\n.weui-dialog__bd::-webkit-scrollbar {\n  display:  none;\n}\n.mt-dialog-mask {\n  z-index: -1;\n  visibility: hidden;\n  opacity: 0;\n  -webkit-transition: opacity .3s linear;\n  transition: opacity .3s linear;\n  max-width: 450px;\n  margin: 0 auto;\n}\n.mt-dialog-wrap {\n  position: fixed;\n  top: 50%;\n  left: 50%;\n  width: 80%;\n  max-width: 300px;\n  -webkit-transform: translate(-50%, -50%);\n      -ms-transform: translate(-50%, -50%);\n          transform: translate(-50%, -50%);\n  min-width: 100px;\n  max-width: 450px;\n  z-index: 1010;\n  visibility: hidden;\n  z-index: -1;\n}\n.mt-dialog-wrap__active {\n  visibility: visible;\n  z-index: 2000;\n}\n.mt-dialog-wrap__active ~ .mt-dialog-mask {\n  visibility: visible;\n  z-index: 1000;\n}\n.mt-dialog-wrap__enter .weui-dialog {\n  -webkit-transform: scale3d(1, 1, 1);\n          transform: scale3d(1, 1, 1);\n  opacity: 1;\n}\n.mt-dialog-wrap__enter ~ .mt-dialog-mask {\n  opacity: 1;\n}\n", ""]);

        /***/ }),

    /***/ 38:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        function _defineProperty(obj, key, value) {
            if (key in obj) {
                Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true });
            } else {
                obj[key] = value;
            }return obj;
        }

        function _objectWithoutProperties(obj, keys) {
            var target = {};for (var i in obj) {
                if (keys.indexOf(i) >= 0) continue;if (!Object.prototype.hasOwnProperty.call(obj, i)) continue;target[i] = obj[i];
            }return target;
        }

        var Button = _react2.default.createClass({
            displayName: 'Button',
            clickEv: function clickEv(e) {
                var _props = this.props,
                    href = _props.href,
                    onClick = _props.onClick;

                !!href && (window.location.href = href);
                !!onClick && onClick(e);
            },
            render: function render() {
                var _classNames;

                var _props2 = this.props,
                    className = _props2.className,
                    type = _props2.type,
                    children = _props2.children,
                    text = _props2.text,
                    disabled = _props2.disabled,
                    actionType = _props2.actionType,
                    mini = _props2.mini,
                    plain = _props2.plain,
                    loading = _props2.loading,
                    others = _objectWithoutProperties(_props2, ['className', 'type', 'children', 'text', 'disabled', 'actionType', 'mini', 'plain', 'loading']);

                var cls = (0, _classnames2.default)('weui-btn', (_classNames = {
                    'weui-btn_disabled': disabled,
                    'weui-btn_mini': mini,
                    'packagemainbackground': type === 'primary' && !plain,
                    'maincolor mainbordercolor': plain && type === 'primary'
                }, _defineProperty(_classNames, 'weui-btn_' + type, true), _defineProperty(_classNames, 'weui-btn_plain-' + type, plain), _defineProperty(_classNames, 'weui-btn_loading', loading), _defineProperty(_classNames, className, className), _classNames));

                return _react2.default.createElement('button', _extends({ className: cls, disabled: disabled }, others, { type: actionType, onClick: this.clickEv }), loading && _react2.default.createElement('i', { className: 'weui-loading' }), text || children);
            }
        });

        Button.propTypes = {
            disabled: _react2.default.PropTypes.bool,
            type: _react2.default.PropTypes.string,
            mini: _react2.default.PropTypes.bool,
            plain: _react2.default.PropTypes.bool,
            text: _react2.default.PropTypes.string,
            loading: _react2.default.PropTypes.bool,
            href: _react2.default.PropTypes.string,
            actionType: _react2.default.PropTypes.string
        };

        Button.defaultProps = {
            disabled: false, // 是否禁用
            type: 'default', // 样式主题：default / primary / warn
            mini: false, // 大小是否是 mini
            plain: false, // 是否是边框按钮
            text: '', // 按钮文字
            href: '', // 跳转链接
            loading: false, // 是否显示loading
            actionType: 'button' // 按钮类型 type=buttton / type=reset
        };

        exports.default = Button;

        /***/ }),

    /***/ 39:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var _typeof2 = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _typeof = typeof Symbol === "function" && _typeof2(Symbol.iterator) === "symbol" ? function (obj) {
            return typeof obj === "undefined" ? "undefined" : _typeof2(obj);
        } : function (obj) {
            return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj === "undefined" ? "undefined" : _typeof2(obj);
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _pubsubJs = __webpack_require__(40);

        var _pubsubJs2 = _interopRequireDefault(_pubsubJs);

        var _dialog = __webpack_require__(41);

        var _dialog2 = _interopRequireDefault(_dialog);

        var _toast = __webpack_require__(44);

        var _toast2 = _interopRequireDefault(_toast);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        var SHOW_DIALOG = 'SHOW_DIALOG';
        var HIDE_DIALOG = 'HIDE_DIALOG';
        var SHOW_TOAST = 'SHOW_TOAST';
        var HIDE_TOAST = 'HIDE_TOAST';

        var TYPES = ['success', 'loading', 'warning', 'success', 'cancel'];

        var Message = _react2.default.createClass({
            displayName: 'Message',
            getInitialState: function getInitialState() {
                return {
                    dialog: {},
                    toast: {}
                };
            },
            componentDidMount: function componentDidMount() {
                _pubsubJs2.default.subscribe(SHOW_DIALOG, this.showDialog);
                _pubsubJs2.default.subscribe(HIDE_DIALOG, this.hideDialog);
                _pubsubJs2.default.subscribe(SHOW_TOAST, this.showToast);
                _pubsubJs2.default.subscribe(HIDE_TOAST, this.hideToast);
            },
            showDialog: function showDialog(e, options) {
                var t = typeof options === 'undefined' ? 'undefined' : _typeof(options);
                if (t === 'string' || t === 'object' && t._isReactElement) {
                    options = { message: options };
                }
                options.show = true;
                if (!options.title) options.title = '提示';
                if (!options.buttons && options.cloaseable !== false) options.buttons = [{ label: '知道了', onClick: function onClick(e) {
                        _pubsubJs2.default.publish(HIDE_DIALOG);
                        e.preventDefault();
                    } }];
                this.setState({ dialog: _extends({}, options) });
            },
            hideDialog: function hideDialog() {
                var dialog = this.state.dialog;
                dialog.show = false;
                this.setState({ dialog: dialog });
            },
            showToast: function showToast(e, options) {
                var t = typeof options === 'undefined' ? 'undefined' : _typeof(options);
                if (t === 'string' || t === 'object' && t._isReactElement) {
                    options = { message: options };
                }
                options.show = true;
                this.setState({ toast: _extends({}, options) });

                if ('loading' === options.type) return;

                var duration = options.duration || 2;
                setTimeout(this.hideToast, duration * 1000);
            },
            hideToast: function hideToast() {
                var toast = this.state.toast;
                toast.show = false;
                this.setState({ toast: toast });
            },

            render: function render() {
                return _react2.default.createElement('div', null, _react2.default.createElement(_dialog2.default, this.state.dialog), _react2.default.createElement(_toast2.default, this.state.toast));
            }
        });

        var dialog = {
            show: function show(options) {
                _pubsubJs2.default.publish(SHOW_DIALOG, options);
            },
            hide: function hide() {
                _pubsubJs2.default.publish(HIDE_DIALOG);
            }
        };

        var toast = {
            show: function show(options) {
                _pubsubJs2.default.publish(SHOW_TOAST, options);
            },
            hide: function hide() {
                _pubsubJs2.default.publish(HIDE_TOAST);
            }
        };

        // 加点糖
        TYPES.forEach(function (v) {
            toast[v] = function (options) {
                var opt = { message: options, type: v };
                _pubsubJs2.default.publish(SHOW_TOAST, opt);
            };
        });

        Message.dialog = dialog;
        Message.toast = toast;

        exports.default = Message;

        /***/ }),

    /***/ 40:
    /***/ (function(module, exports) {

        module.exports = window.PubSub;

        /***/ }),

    /***/ 41:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        var _pubsubJs = __webpack_require__(40);

        var _pubsubJs2 = _interopRequireDefault(_pubsubJs);

        __webpack_require__(42);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        function _defineProperty(obj, key, value) {
            if (key in obj) {
                Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true });
            } else {
                obj[key] = value;
            }return obj;
        }

        function _objectWithoutProperties(obj, keys) {
            var target = {};for (var i in obj) {
                if (keys.indexOf(i) >= 0) continue;if (!Object.prototype.hasOwnProperty.call(obj, i)) continue;target[i] = obj[i];
            }return target;
        }

        var noop = function noop() {};

        var Dialog = _react2.default.createClass({
            displayName: 'Dialog',

            getInitialState: function getInitialState() {
                return {
                    display: false,
                    active: false
                };
            },

            componentWillReceiveProps: function componentWillReceiveProps(next, prev) {
                return next.show !== this.state.display ? this.update(next.show) : false;
            },

            update: function update(show) {
                var _this = this;

                this.setState({ display: false, active: true });
                if (this.timer) clearTimeout(this.timer);
                this.timer = setTimeout(function () {
                    _this.setState({ display: show, active: show });
                    show ? _this.props.onShow() : _this.props.onClose();
                }, show ? 0 : 500);
            },
            renderButtons: function renderButtons() {

                return this.props.buttons.map(function (action, idx) {
                    var type = action.type,
                        label = action.label,
                        others = _objectWithoutProperties(action, ['type', 'label']);

                    type = type ? type : 'primary';

                    var className = (0, _classnames2.default)({
                        'weui-dialog__btn weui-dialog__btn_default': type === 'default',
                        'weui-dialog__btn weui-dialog__btn_primary maincolor': type === 'primary'
                    });

                    return _react2.default.createElement('a', _extends({ key: idx, href: 'javascript:;' }, others, { className: className }), label);
                });
            },
            render: function render() {
                var _props = this.props,
                    title = _props.title,
                    className = _props.className,
                    children = _props.children,
                    buttons = _props.buttons,
                    closable = _props.closable,
                    message = _props.message,
                    others = _objectWithoutProperties(_props, ['title', 'className', 'children', 'buttons', 'closable', 'message']);

                var _state = this.state,
                    active = _state.active,
                    display = _state.display;

                var btnNum = this.props.buttons.length;

                var wrapCls = (0, _classnames2.default)('mt-dialog-wrap', {
                    'mt-dialog-wrap__active': active,
                    'mt-dialog-wrap__enter': display
                });

                var innerCls = (0, _classnames2.default)('weui-dialog', _defineProperty({}, className, className));

                return _react2.default.createElement('div', null, _react2.default.createElement('div', { className: wrapCls }, _react2.default.createElement('div', _extends({ className: innerCls }, others, { ref: 'mtDialogCon' }), closable && _react2.default.createElement('i', { className: 'weui-icon-cancel weui-dialog__close', onClick: function onClick() {
                        return _pubsubJs2.default.publish('HIDE_DIALOG');
                    } }), !!title && _react2.default.createElement('div', { className: 'weui-dialog__hd' }, _react2.default.createElement('strong', { className: 'weui-dialog__title' }, title)), _react2.default.createElement('div', { className: 'weui-dialog__bd' }, ' ', message || children, ' '), _react2.default.createElement('div', { className: 'weui-dialog__ft ' + (btnNum > 2 ? 'weui-dialog__ft_column' : '') }, ' ', this.renderButtons(), ' '))), _react2.default.createElement('div', { className: 'weui-mask mt-dialog-mask', onTouchMove: function onTouchMove(e) {
                        e.preventDefault();
                    } }));
            }
        });

        Dialog.propTypes = {
            /**
             * buttons: actions buttons
             * exmaple: [{ type:'default/primary', label:'', onClick:()=>{}}]
             */
            buttons: _react2.default.PropTypes.array, // [{ type:'default/primary', label:'', onClick:()=>{}}]
            /**
             * show: diaplay tips
             */
            show: _react2.default.PropTypes.bool,
            /**
             * title: dialog title
             */
            title: _react2.default.PropTypes.string,
            /**
             * onShow: opened callback
             */
            onShow: _react2.default.PropTypes.func,
            /**
             * onShow: opened callback
             */
            onClose: _react2.default.PropTypes.func,
            /**
             * message: anything
             */
            message: _react2.default.PropTypes.any,
            closable: _react2.default.PropTypes.bool
        };

        Dialog.defaultProps = {
            buttons: [],
            show: false,
            closable: false,
            title: '',
            message: '',
            onShow: noop,
            onClose: noop
        };

        exports.default = Dialog;

        /***/ }),

    /***/ 42:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(43);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/dialog/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/dialog/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 43:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".weui-dialog {\n  position: static;\n  margin: 0 auto;\n  width: 100%;\n  -webkit-box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);\n          box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);\n  -webkit-transform: scale3d(1.158, 1.158, 1.158);\n          transform: scale3d(1.158, 1.158, 1.158);\n  -webkit-transform-style: preserve-3d;\n          transform-style: preserve-3d;\n  -webkit-backface-visibility: hidden;\n          backface-visibility: hidden;\n  opacity: 0;\n  -webkit-transition: opacity .3s ease, -webkit-transform .3s ease;\n  transition: opacity .3s ease, -webkit-transform .3s ease;\n  transition: opacity .3s ease, transform .3s ease;\n  transition: opacity .3s ease, transform .3s ease, -webkit-transform .3s ease;\n}\n.weui-dialog__bd {\n  max-height: 340px;\n  overflow-y: scroll;\n  -webkit-overflow-scrolling: touch;\n}\n.weui-dialog__bd::-webkit-scrollbar {\n  display: none;\n}\n.weui-dialog__close {\n  position: absolute;\n  right: 2px;\n  top: 6px;\n  color: #999;\n}\n.weui-dialog__close:active {\n  color: #F43530;\n}\n.weui-dialog__ft_column {\n  -webkit-box-orient: vertical;\n  -webkit-box-direction: normal;\n  -webkit-flex-direction: column;\n      -ms-flex-direction: column;\n          flex-direction: column;\n}\n.weui-dialog__ft_column .weui-dialog__btn:after {\n  top: auto;\n  left: 0;\n  right: 0;\n  width: 100%;\n  height: 1px;\n  border-left: 0;\n  border-bottom: 1px solid #D5D5D6;\n  -webkit-transform: scaleY(0.5);\n      -ms-transform: scaleY(0.5);\n          transform: scaleY(0.5);\n}\n.mt-dialog-mask {\n  z-index: -1;\n  visibility: hidden;\n  opacity: 0;\n  -webkit-transition: opacity .3s linear;\n  transition: opacity .3s linear;\n  max-width: 450px;\n  margin: 0 auto;\n}\n.mt-dialog-wrap {\n  position: fixed;\n  top: 50%;\n  left: 50%;\n  width: 80%;\n  max-width: 300px;\n  -webkit-transform: translate(-50%, -50%);\n      -ms-transform: translate(-50%, -50%);\n          transform: translate(-50%, -50%);\n  min-width: 100px;\n  max-width: 450px;\n  z-index: 1010;\n  visibility: hidden;\n  z-index: -1;\n}\n.mt-dialog-wrap__active {\n  visibility: visible;\n  z-index: 2000;\n}\n.mt-dialog-wrap__active ~ .mt-dialog-mask {\n  visibility: visible;\n  z-index: 1000;\n}\n.mt-dialog-wrap__enter .weui-dialog {\n  -webkit-transform: scale3d(1, 1, 1);\n          transform: scale3d(1, 1, 1);\n  opacity: 1;\n}\n.mt-dialog-wrap__enter ~ .mt-dialog-mask {\n  opacity: 1;\n}\n", ""]);

        /***/ }),

    /***/ 44:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        var _mask = __webpack_require__(45);

        var _mask2 = _interopRequireDefault(_mask);

        __webpack_require__(48);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        function _defineProperty(obj, key, value) {
            if (key in obj) {
                Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true });
            } else {
                obj[key] = value;
            }return obj;
        }

        function _objectWithoutProperties(obj, keys) {
            var target = {};for (var i in obj) {
                if (keys.indexOf(i) >= 0) continue;if (!Object.prototype.hasOwnProperty.call(obj, i)) continue;target[i] = obj[i];
            }return target;
        }

        var iconTpls = {
            'loading': _react2.default.createElement('i', { className: 'weui-icon_toast weui-loading' }),
            'success': _react2.default.createElement('i', { className: 'weui-icon_toast weui-icon-success-no-circle' }),
            'cancel': _react2.default.createElement('i', { className: 'weui-icon_toast weui-icon-cancel' })
        };
        var noop = function noop() {};

        var Toast = _react2.default.createClass({
            displayName: 'Toast',

            getInitialState: function getInitialState() {
                return { display: this.props.show };
            },

            componentWillReceiveProps: function componentWillReceiveProps(next) {
                if (next.show !== this.state.display) {
                    return this.update(next.show);
                }
                return false;
            },

            update: function update(show) {
                var _this = this;

                this.setState({ display: true });

                setTimeout(function () {
                    !show && _this.setState({ display: false });
                    show ? _this.props.onShow() : _this.props.onClose();
                }, 400);
            },
            render: function render() {
                var _props = this.props,
                    className = _props.className,
                    type = _props.type,
                    children = _props.children,
                    position = _props.position,
                    show = _props.show,
                    message = _props.message,
                    others = _objectWithoutProperties(_props, ['className', 'type', 'children', 'position', 'show', 'message']);

                var cls = (0, _classnames2.default)('weui-toast', _defineProperty({
                    'weui-toast_text': type === 'default' || type === 'warning',
                    'mt-toast-enter toast-animated': show && position !== 'top' && position !== 'bottom',
                    'mt-toast-leave toast-animated': !show && position !== 'top' && position !== 'bottom',
                    'mt-toast-top mt-toast-top-enter animated-y': show && position === 'top',
                    'mt-toast-top mt-toast-top-leave animated-y': !show && position === 'top',
                    'mt-toast-bottom mt-toast-bottom-enter animated-y': show && position === 'bottom',
                    'mt-toast-bottom mt-toast-bottom-leave animated-y': !show && position === 'bottom'
                }, className, className));

                var iconTpl = iconTpls[type] || null;
                if (type == 'warning') message = _react2.default.createElement('span', { className: 'weui-toast__content-warning' }, _react2.default.createElement('i', { className: 'weui-icon-warn weui-icon_msg-primary' }), ' ', message);
                if (type == 'loading') message = message || children || '加载中';

                return _react2.default.createElement('div', { style: { display: this.state.display ? 'block' : 'none' } }, _react2.default.createElement(_mask2.default, { transparent: true }), _react2.default.createElement('div', { className: 'weui-toast-wrap ' + position }, _react2.default.createElement('div', _extends({ className: cls }, others, { ref: 'mtToast' }), iconTpl, _react2.default.createElement('p', { className: 'weui-toast__content' }, message || children))));
            }
        });

        Toast.propTypes = {
            /**
             * display tips
             */
            show: _react2.default.PropTypes.bool,
            /**
             * type: `default`, `success`, `loading`, 'warning','success','cancel'
             */
            type: _react2.default.PropTypes.string,
            /**
             * position: top`, `bottom`
             */
            position: _react2.default.PropTypes.string,
            /**
             * message: anything
             */
            message: _react2.default.PropTypes.any,
            /**
             * onShow: opened callback
             */
            onShow: _react2.default.PropTypes.func,
            /**
             * onShow: closed callback
             */
            onClose: _react2.default.PropTypes.func
        };

        Toast.defaultProps = {
            show: false,
            type: 'default',
            position: '',
            message: '',
            onShow: noop,
            onClose: noop
        };

        exports.default = Toast;

        /***/ }),

    /***/ 45:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        __webpack_require__(46);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        function _objectWithoutProperties(obj, keys) {
            var target = {};for (var i in obj) {
                if (keys.indexOf(i) >= 0) continue;if (!Object.prototype.hasOwnProperty.call(obj, i)) continue;target[i] = obj[i];
            }return target;
        }

        var Mask = _react2.default.createClass({
            displayName: 'Mask',
            render: function render() {
                var _props = this.props,
                    transparent = _props.transparent,
                    className = _props.className,
                    show = _props.show,
                    others = _objectWithoutProperties(_props, ['transparent', 'className', 'show']);

                var clz = (0, _classnames2.default)({
                    'weui-mask': !transparent,
                    'weui-mask_transparent': transparent,
                    'mt-mask-enter mask-animated': !transparent && show,
                    'mt-mask-leave mask-animated': !transparent && !show
                }, className);

                return _react2.default.createElement('div', _extends({ className: clz }, others));
            }
        });

        Mask.propTypes = {
            transparent: _react2.default.PropTypes.bool
        };
        Mask.defaultProps = {
            transparent: false
        };

        exports.default = Mask;

        /***/ }),

    /***/ 46:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(47);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/mask/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/mask/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 47:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".weui-mask {\n  max-width: 450px;\n  margin: 0 auto;\n}\n.mt-mask-enter {\n  -webkit-animation-name: maskFadeEnter;\n          animation-name: maskFadeEnter;\n}\n.mt-mask-leave {\n  -webkit-animation-name: maskFadeLeave;\n          animation-name: maskFadeLeave;\n}\n.mask-animated {\n  -webkit-animation-duration: .4s;\n          animation-duration: .4s;\n  -webkit-animation-fill-mode: both;\n          animation-fill-mode: both;\n}\n@-webkit-keyframes maskFadeEnter {\n  0% {\n    opacity: 0;\n  }\n  100% {\n    opacity: 1;\n  }\n}\n@keyframes maskFadeEnter {\n  0% {\n    opacity: 0;\n  }\n  100% {\n    opacity: 1;\n  }\n}\n@-webkit-keyframes maskFadeLeave {\n  0% {\n    opacity: 1;\n  }\n  100% {\n    opacity: 0;\n  }\n}\n@keyframes maskFadeLeave {\n  0% {\n    opacity: 1;\n  }\n  100% {\n    opacity: 0;\n  }\n}\n", ""]);

        /***/ }),

    /***/ 48:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(49);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/toast/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/toast/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 49:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".weui-toast-wrap {\n  position: fixed;\n  top: 0;\n  bottom: 0;\n  width: 100%;\n  z-index: 2010;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-pack: center;\n  -webkit-justify-content: center;\n      -ms-flex-pack: center;\n          justify-content: center;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n  max-width: 450px;\n}\n.weui-toast-wrap.top {\n  -webkit-box-align: start;\n  -webkit-align-items: flex-start;\n      -ms-flex-align: start;\n          align-items: flex-start;\n}\n.weui-toast-wrap.bottom {\n  -webkit-box-align: end;\n  -webkit-align-items: flex-end;\n      -ms-flex-align: end;\n          align-items: flex-end;\n}\n.weui-toast-wrap .weui-toast {\n  min-width: 7.6em;\n  max-width: 70%;\n  width: auto;\n  position: static;\n  margin: 0;\n}\n.weui-toast-wrap .weui-toast_text {\n  min-height: 1.5em;\n}\n.weui-toast-wrap .weui-toast__content {\n  padding: 8px 10px;\n  margin: 0;\n}\n.weui-toast-wrap .weui-toast__content-warning {\n  color: #FFBE00;\n}\n.weui-toast-wrap .weui-toast__content-warning .weui-icon-warn {\n  font-size: 16px;\n  vertical-align: -3px;\n}\n.weui-toast-wrap .weui-icon_toast {\n  margin: 12px 0 0;\n}\n.weui-toast-wrap .weui-icon_toast.weui-loading {\n  margin: 26px 0 0;\n}\n.weui-toast-wrap .weui-icon_toast.weui-icon-cancel::before {\n  color: #FFFFFF;\n  font-size: 55px;\n}\n.toast-animated {\n  -webkit-animation-duration: .4s;\n          animation-duration: .4s;\n  -webkit-animation-fill-mode: both;\n          animation-fill-mode: both;\n}\n.animated-y {\n  -webkit-animation-duration: .4s;\n          animation-duration: .4s;\n  -webkit-animation-fill-mode: both;\n          animation-fill-mode: both;\n  -webkit-animation-timing-function: cubic-bezier(0.36, 0.66, 0.04, 1);\n          animation-timing-function: cubic-bezier(0.36, 0.66, 0.04, 1);\n}\n.mt-toast-enter {\n  -webkit-animation-name: toastEnter;\n          animation-name: toastEnter;\n}\n.mt-toast-leave {\n  -webkit-animation-name: toastLeave;\n          animation-name: toastLeave;\n}\n.mt-toast-top-enter {\n  -webkit-animation-name: toastTopEnter;\n          animation-name: toastTopEnter;\n}\n.mt-toast-top-leave {\n  -webkit-animation-name: toastTopLeave;\n          animation-name: toastTopLeave;\n}\n.mt-toast-bottom-enter {\n  -webkit-animation-name: toastBottomEnter;\n          animation-name: toastBottomEnter;\n}\n.mt-toast-bottom-leave {\n  -webkit-animation-name: toastBottomLeave;\n          animation-name: toastBottomLeave;\n}\n@-webkit-keyframes toastEnter {\n  0% {\n    opacity: 0;\n  }\n  100% {\n    opacity: 1;\n  }\n}\n@keyframes toastEnter {\n  0% {\n    opacity: 0;\n  }\n  100% {\n    opacity: 1;\n  }\n}\n@-webkit-keyframes toastLeave {\n  0% {\n    opacity: 1;\n  }\n  100% {\n    opacity: 0;\n  }\n}\n@keyframes toastLeave {\n  0% {\n    opacity: 1;\n  }\n  100% {\n    opacity: 0;\n  }\n}\n@-webkit-keyframes toastTopEnter {\n  0% {\n    opacity: 0;\n  }\n  50%,\n  100% {\n    opacity: 1;\n    -webkit-transform: translateY(100px);\n            transform: translateY(100px);\n  }\n}\n@keyframes toastTopEnter {\n  0% {\n    opacity: 0;\n  }\n  50%,\n  100% {\n    opacity: 1;\n    -webkit-transform: translateY(100px);\n            transform: translateY(100px);\n  }\n}\n@-webkit-keyframes toastTopLeave {\n  0% {\n    opacity: 1;\n    -webkit-transform: translateY(100px);\n            transform: translateY(100px);\n  }\n  50%,\n  100% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n}\n@keyframes toastTopLeave {\n  0% {\n    opacity: 1;\n    -webkit-transform: translateY(100px);\n            transform: translateY(100px);\n  }\n  50%,\n  100% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n}\n@-webkit-keyframes toastBottomEnter {\n  0% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n  50%,\n  100% {\n    opacity: 1;\n    -webkit-transform: translateY(-100px);\n            transform: translateY(-100px);\n  }\n}\n@keyframes toastBottomEnter {\n  0% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n  50%,\n  100% {\n    opacity: 1;\n    -webkit-transform: translateY(-100px);\n            transform: translateY(-100px);\n  }\n}\n@-webkit-keyframes toastBottomLeave {\n  0% {\n    opacity: 1;\n    -webkit-transform: translateY(-100px);\n            transform: translateY(-100px);\n  }\n  50%,\n  100% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n}\n@keyframes toastBottomLeave {\n  0% {\n    opacity: 1;\n    -webkit-transform: translateY(-100px);\n            transform: translateY(-100px);\n  }\n  50%,\n  100% {\n    opacity: 0;\n    -webkit-transform: translateY(0px);\n            transform: translateY(0px);\n  }\n}\n", ""]);

        /***/ }),

    /***/ 50:
    /***/ (function(module, exports) {

        module.exports = window.TJ;

        /***/ }),

    /***/ 55:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _dialog = __webpack_require__(41);

        var _dialog2 = _interopRequireDefault(_dialog);

        var _button = __webpack_require__(38);

        var _button2 = _interopRequireDefault(_button);

        var _input = __webpack_require__(56);

        var _input2 = _interopRequireDefault(_input);

        var _message = __webpack_require__(39);

        var _message2 = _interopRequireDefault(_message);

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        __webpack_require__(59);

        var _Checkbox = __webpack_require__(61);

        var _Checkbox2 = _interopRequireDefault(_Checkbox);

        var _Countdown = __webpack_require__(64);

        var _Countdown2 = _interopRequireDefault(_Countdown);

        var _index = __webpack_require__(65);

        var _index2 = _interopRequireDefault(_index);

        var _validator = __webpack_require__(68);

        var _validator2 = _interopRequireDefault(_validator);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var toast = _message2.default.toast;

        var LoginModal = _react2.default.createClass({
            displayName: 'LoginModal',

            getInitialState: function getInitialState() {
                return {
                    showDia: false,
                    mobile: '',
                    mobileVcode: '',
                    agree: true,
                    showProtocol: false,
                    sendVCodeDisabled: false,
                    showCountdown: false,
                    logining: false
                };
            },
            componentDidMount: function componentDidMount() {
                this.setState({ showDia: true });
            },
            checkChg: function checkChg(val) {
                this.setState({ agree: val });
            },
            countEnd: function countEnd() {
                this.setState({ sendVCodeDisabled: false, showCountdown: false });
            },

            // 获取手机验证码
            getMobileVcodeEv: function getMobileVcodeEv() {
                var _this = this;

                var mobile = this.state.mobile;
                if (!$.trim(mobile)) {
                    return toast.warning('请输入手机号码');
                }
                // 验证手机号码
                if (!_validator2.default.isMobile(mobile)) {
                    return toast.warning('请输入合格的手机号码');
                }
                // 发送验证码
                this.setState({
                    sendVCodeDisabled: true
                }, function () {
                    toast.loading();
                    $.poster('/mobileValidationCode', { mobile: mobile }).done(function () {
                        toast.show({ message: '验证码已发送，请注意查收', position: 'top' });
                        _this.setState({ showCountdown: true });
                    }).fail(function (err, con, data) {
                        toast.hide();
                        var msg = con && con.text || '发送失败，请重新获取';
                        toast.show({ message: msg });
                        _this.setState({ sendVCodeDisabled: false });
                    });
                });
            },
            toLogin: function toLogin() {
                var _this2 = this;

                var _state = this.state,
                    agree = _state.agree,
                    mobile = _state.mobile,
                    mobileVcode = _state.mobileVcode;

                if (!agree) {
                    return toast.warning('请阅读并同意《用户服务协议与隐私政策》');
                }
                this.setState({ logining: true });
                $.poster('/registerByOnlyMobile', {
                    mobile: mobile,
                    validationCode: mobileVcode
                }).done(function (res) {
                    _this2.setState({ logining: false });
                    _this2.props.logined();
                }).fail(function (err, con, data) {
                    _this2.setState({ logining: false });
                    var msg = con && con.text;
                    toast.show({ message: msg });
                });
            },
            componentWillMount: function componentWillMount() {
                var mobile = this.props.mobile;

                if (mobile) {
                    this.setState({ mobile: mobile });
                }
            },


            render: function render() {
                var _this3 = this;

                var _state2 = this.state,
                    mobile = _state2.mobile,
                    showDia = _state2.showDia,
                    mobileVcode = _state2.mobileVcode,
                    agree = _state2.agree,
                    showProtocol = _state2.showProtocol,
                    sendVCodeDisabled = _state2.sendVCodeDisabled,
                    showCountdown = _state2.showCountdown,
                    logining = _state2.logining;
                var _props = this.props,
                    readOnly = _props.readOnly,
                    closable = _props.closable;

                return _react2.default.createElement(
                    'div',
                    { className: 'login-modal' },
                    _react2.default.createElement(
                        _dialog2.default,
                        { show: showDia, title: '\u9A8C\u8BC1\u624B\u673A\u53F7' },
                        _react2.default.createElement(
                            'div',
                            { className: 'rel' },
                            !!closable && _react2.default.createElement('i', { onClick: this.props.onClose, className: 'iconfont icon-guanbi3 c-tips item_close_icon' }),
                            _react2.default.createElement(
                                'div',
                                null,
                                readOnly ? _react2.default.createElement(_input2.default, { className: 'bdr bdr-radius mt10',
                                    value: TJ.desensitize(mobile),
                                    placeholder: '\u624B\u673A\u53F7',
                                    maxLength: '11',
                                    disabled: true
                                }) : _react2.default.createElement(_input2.default, { className: 'bdr bdr-radius mt10',
                                    value: mobile,
                                    placeholder: '\u624B\u673A\u53F7',
                                    maxLength: '11',
                                    onChange: function onChange(e, mobile) {
                                        return _this3.setState({ mobile: mobile });
                                    }
                                }),
                                _react2.default.createElement('div', null)
                            ),
                            _react2.default.createElement(
                                'div',
                                { className: 'inline-attr mt10' },
                                _react2.default.createElement(_input2.default, { className: 'bdr bdr-radius mr10 w200',
                                    value: mobileVcode,
                                    maxLength: '6',
                                    placeholder: '\u9A8C\u8BC1\u7801',
                                    onChange: function onChange(e, mobileVcode) {
                                        return _this3.setState({ mobileVcode: mobileVcode });
                                    }
                                }),
                                _react2.default.createElement(
                                    _button2.default,
                                    {
                                        className: 'mainbackground',
                                        type: 'primary',
                                        disabled: sendVCodeDisabled || !mobile,
                                        onClick: this.getMobileVcodeEv
                                    },
                                    showCountdown ? _react2.default.createElement(_Countdown2.default, { prefix: '重新获取', onCountEnd: function onCountEnd() {
                                            _this3.countEnd();
                                        }, className: 'dib' }) : _react2.default.createElement(
                                        'span',
                                        null,
                                        '\u53D1\u9001\u9A8C\u8BC1\u7801'
                                    )
                                )
                            ),
                            _react2.default.createElement(
                                'div',
                                { className: 'tl mt15 f12 lh24' },
                                _react2.default.createElement(
                                    _Checkbox2.default,
                                    { className: 'maincolor', checked: agree, onChange: this.checkChg },
                                    '\u5DF2\u9605\u8BFB\u5E76\u540C\u610F'
                                ),
                                _react2.default.createElement(
                                    'a',
                                    { href: 'javascript:;', onClick: function onClick() {
                                            _this3.setState({ showProtocol: true });
                                        } },
                                    '\u300A\u7528\u6237\u670D\u52A1\u534F\u8BAE\u4E0E\u9690\u79C1\u653F\u7B56\u300B'
                                )
                            ),
                            _react2.default.createElement(
                                'div',
                                { className: 'mt15' },
                                _react2.default.createElement(
                                    _button2.default,
                                    {
                                        className: 'mainbackground',
                                        type: 'primary',
                                        size: 'large',
                                        onClick: this.toLogin,
                                        disabled: !mobile || !mobileVcode || logining
                                    },
                                    '\u786E\u5B9A'
                                )
                            )
                        )
                    ),
                    showProtocol && _react2.default.createElement(_index2.default, { isFullPage: true, showClose: true, onClose: function onClose() {
                            _this3.setState({ showProtocol: false });
                        } }),
                    _react2.default.createElement(_message2.default, null)
                );
            }
        });

        LoginModal.propTypes = {
            logined: _react2.default.PropTypes.func, // 登录完成回调函数
            mobile: _react2.default.PropTypes.string, // 传递的手机号
            readOnly: _react2.default.PropTypes.boolean, // 手机号只读，不能修改，
            closable: _react2.default.PropTypes.boolean, // 是否显示右上角的关闭按钮
            onClose: _react2.default.PropTypes.func // 主动关闭弹窗的回调函数
        };
        LoginModal.defaultProps = {
            logined: function logined() {},
            mobile: '',
            readOnly: false,
            closable: false,
            onClose: function onClose() {}
        };

        exports.default = LoginModal;

        /***/ }),

    /***/ 56:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) {
            for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];for (var key in source) {
                    if (Object.prototype.hasOwnProperty.call(source, key)) {
                        target[key] = source[key];
                    }
                }
            }return target;
        };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _classnames = __webpack_require__(29);

        var _classnames2 = _interopRequireDefault(_classnames);

        __webpack_require__(57);

        function _interopRequireDefault(obj) {
            return obj && obj.__esModule ? obj : { default: obj };
        }

        function _defineProperty(obj, key, value) {
            if (key in obj) {
                Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true });
            } else {
                obj[key] = value;
            }return obj;
        }

        function _objectWithoutProperties(obj, keys) {
            var target = {};for (var i in obj) {
                if (keys.indexOf(i) >= 0) continue;if (!Object.prototype.hasOwnProperty.call(obj, i)) continue;target[i] = obj[i];
            }return target;
        }

        var Input = _react2.default.createClass({
            displayName: 'Input',
            getInitialState: function getInitialState() {
                return {
                    value: this.props.value
                };
            },
            onChange: function onChange(e) {
                var value = e.target.value;
                this.setState({ value: value });
                this.props.onChange && this.props.onChange(e, value);
            },
            onFocus: function onFocus(e) {
                var value = e.target.value;
                this.props.onFocus && this.props.onFocus(e, value);
            },
            onBlur: function onBlur(e) {
                var value = e.target.value;
                this.props.onBlur && this.props.onBlur(e, value);
            },
            onClick: function onClick(e) {
                var value = e.target.value;
                this.props.onClick && this.props.onClick(e, value);
            },
            renderSelect: function renderSelect(options) {
                var _props = this.props,
                    selectOptions = _props.selectOptions,
                    selectedValue = _props.selectedValue;

                var opts = selectOptions.map(function (v, i) {
                    return _react2.default.createElement('option', { value: v.value, key: i }, v.text);
                });

                return _react2.default.createElement('select', _extends({ className: 'weui-select' }, options), opts);
            },
            clear: function clear() {
                this.setState({ value: '' });
                this.props.onChange && this.props.onChange(null, '');
                this.refs.ipt.getDOMNode().focus();
            },
            reset: function reset() {
                var value = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';

                this.setState({ value: value });
                this.props.onChange && this.props.onChange(null, value);
            },
            focus: function focus() {
                this.refs.ipt.getDOMNode().focus();
            },
            blur: function blur() {
                this.refs.ipt.getDOMNode().blur();
            },
            render: function render() {
                var _props2 = this.props,
                    type = _props2.type,
                    placeholder = _props2.placeholder,
                    label = _props2.label,
                    name = _props2.name,
                    readOnly = _props2.readOnly,
                    disabled = _props2.disabled,
                    right = _props2.right,
                    vcode = _props2.vcode,
                    errorInput = _props2.errorInput,
                    showClear = _props2.showClear,
                    labelAlign = _props2.labelAlign,
                    autoComplete = _props2.autoComplete,
                    maxLength = _props2.maxLength,
                    debounce = _props2.debounce,
                    selectBefore = _props2.selectBefore,
                    showWarnIcon = _props2.showWarnIcon,
                    focusInput = _props2.focusInput,
                    className = _props2.className,
                    children = _props2.children,
                    others = _objectWithoutProperties(_props2, ['type', 'placeholder', 'label', 'name', 'readOnly', 'disabled', 'right', 'vcode', 'errorInput', 'showClear', 'labelAlign', 'autoComplete', 'maxLength', 'debounce', 'selectBefore', 'showWarnIcon', 'focusInput', 'className', 'children']);

                var _state$value = this.state.value,
                    value = _state$value === undefined ? '' : _state$value;

                var focus = !!name && focusInput === name;
                var showWarn = !!name && errorInput === name;

                var clear = focus && showClear && !!value && !readOnly && !disabled;

                var options = { type: type, placeholder: placeholder, name: name, readOnly: readOnly, disabled: disabled, autoComplete: autoComplete, maxLength: maxLength };

                var clsWarp = (0, _classnames2.default)('weui-cell', _defineProperty({
                    'weui-cell_warn': showWarn,
                    'weui-cell_vcode': vcode,
                    'weui-cell_select weui-cell_select-after': type === 'select'
                }, className, className));

                return _react2.default.createElement('div', { className: clsWarp }, !!label && _react2.default.createElement('div', { className: 'weui-cell__hd' }, _react2.default.createElement('label', { className: 'weui-label' }, label)), _react2.default.createElement('div', { className: 'weui-cell__bd' }, type !== 'select' && _react2.default.createElement('input', _extends({ className: 'weui-input', ref: 'ipt',
                    onChange: this.onChange,
                    onFocus: this.onFocus,
                    onBlur: this.onBlur,
                    onClick: this.onClick,
                    value: value
                }, options)), type === 'select' && this.renderSelect(options)), _react2.default.createElement('div', { className: 'weui-cell__ft' }, clear && _react2.default.createElement('i', { className: 'weui-icon-clear', onClick: this.clear }), showWarn && showWarnIcon && _react2.default.createElement('i', { className: 'weui-icon-warn' }), right));
            }
        });

        Input.propTypes = {
            type: _react2.default.PropTypes.string,
            right: _react2.default.PropTypes.any,
            label: _react2.default.PropTypes.any,

            showClear: _react2.default.PropTypes.bool,
            vcode: _react2.default.PropTypes.bool,
            labelAlign: _react2.default.PropTypes.string,

            focusInput: _react2.default.PropTypes.string, // 必填
            name: _react2.default.PropTypes.string, // 必填
            errorInput: _react2.default.PropTypes.string,
            value: _react2.default.PropTypes.any,

            showWarnIcon: _react2.default.PropTypes.bool,

            readOnly: _react2.default.PropTypes.bool,
            disabled: _react2.default.PropTypes.bool,
            placeholder: _react2.default.PropTypes.string,
            autoComplete: _react2.default.PropTypes.string,
            maxLength: _react2.default.PropTypes.string,

            debounce: _react2.default.PropTypes.number,
            selectOptions: _react2.default.PropTypes.array,
            selectedValue: _react2.default.PropTypes.any
        };

        Input.defaultProps = {
            type: 'text', // text,number,password,tel,select
            right: null, // 右侧的自定义内容，如验证码图片，发送验证码按钮等
            placeholder: '',
            label: '',
            value: '',
            name: '',
            focusInput: '',
            errorInput: '',
            readOnly: false,
            disabled: false,
            showClear: false, // 输入时是否显示清除
            vcode: false, // 是否是验证码输入
            labelAlign: '',
            showWarnIcon: true, // 是否显示错误提示图标，有时输入框太小，不需要显示icon
            autoComplete: 'off', // 自动提示
            maxLength: '999',
            debounce: 300,
            selectOptions: [], // select的数据 [{vlaue:'', text:''}]
            selectedValue: '' // select默认选中值
        };

        exports.default = Input;

        /***/ }),

    /***/ 57:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(58);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/input/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_mt-weui-react@0.1.33@mt-weui-react/lib/components/input/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 58:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".weui-cell__ft .weui-icon-warn,\n.weui-cell__ft .weui-icon-clear {\n  padding: 2px;\n}\n", ""]);

        /***/ }),

    /***/ 59:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(60);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/login-modal/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/login-modal/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 60:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".login-modal .weui-dialog {\n  max-width: 370px;\n}\n.login-modal .weui-cell:before {\n  border-top: none;\n}\n.login-modal .weui-btn {\n  font-size: .15rem;\n  line-height: .45rem;\n}\n.login-modal .weui-cell__bd {\n  height: .45rem;\n  line-height: .45rem;\n}\n.login-modal .weui-dialog__bd {\n  color: inherit;\n}\n.login-modal .mt-checkbox-wrap .icon-wrap {\n  margin-right: 6px;\n}\n.login-modal .item_close_icon {\n  position: absolute;\n  font-size: .12rem;\n  right: .2rem;\n  top: 0.2rem;\n}\n.inline-attr {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n}\n.bdr-radius {\n  border-radius: .08rem;\n}\n.w200 {\n  width: 2rem;\n}\n.lh24 {\n  line-height: .24rem;\n}\n", ""]);

        /***/ }),

    /***/ 61:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        __webpack_require__(62);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        function _objectWithoutProperties(obj, keys) { var target = {}; for (var i in obj) { if (keys.indexOf(i) >= 0) continue; if (!Object.prototype.hasOwnProperty.call(obj, i)) continue; target[i] = obj[i]; } return target; }

        var Checkbox = _react2.default.createClass({
            displayName: 'Checkbox',
            triggerChg: function triggerChg() {
                var _props = this.props,
                    checked = _props.checked,
                    onChange = _props.onChange;


                onChange && onChange.call(this, !checked);
            },
            render: function render() {
                var _props2 = this.props,
                    children = _props2.children,
                    checked = _props2.checked,
                    className = _props2.className,
                    other = _objectWithoutProperties(_props2, ['children', 'checked', 'className']);

                return _react2.default.createElement(
                    'div',
                    _extends({ className: 'mt-checkbox-wrap' }, other, { onClick: this.triggerChg }),
                    _react2.default.createElement(
                        'div',
                        { className: 'icon-wrap ' + className },
                        !!checked && _react2.default.createElement('i', { className: 'iconfont icon-gouxuan' })
                    ),
                    children
                );
            }
        });

        Checkbox.propTypes = {
            checked: _react2.default.PropTypes.any,
            onChange: _react2.default.PropTypes.func
        };
        Checkbox.defaultProps = {
            checked: false
        };

        exports.default = Checkbox;

        /***/ }),

    /***/ 62:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(63);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/mt-react-ui/style/checkbox.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/mt-react-ui/style/checkbox.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 63:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".mt-checkbox-wrap {\n  display: inline-block;\n}\n.mt-checkbox-wrap .icon-wrap {\n  display: inline-block;\n  height: .16rem;\n  width: .16rem;\n  vertical-align: middle;\n  margin-right: 2px;\n  border: 1px solid #e5e5e5;\n  border-radius: 4px;\n  text-align: center;\n  line-height: 1;\n}\n.mt-checkbox-wrap .icon-wrap .iconfont {\n  font-size: .14rem;\n  vertical-align: middle;\n}\n", ""]);

        /***/ }),

    /***/ 64:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var interv = void 0;
        var Countdown = _react2.default.createClass({
            displayName: 'Countdown',

            getInitialState: function getInitialState() {
                return {
                    counting: this.props.count
                };
            },
            componentDidMount: function componentDidMount() {
                var _this = this;

                var counting = this.state.counting;

                if (counting <= 0) return;

                this.props.onCountStart();
                interv = setInterval(function () {
                    var newCount = --counting;
                    _this.setState({ counting: newCount });
                    _this.props.onChange(newCount);
                    if (counting === 0) {
                        _this.props.onCountEnd();
                        clearInterval(interv);
                    }
                }, 1000);
            },
            componentWillUnmount: function componentWillUnmount() {
                if (interv) clearInterval(interv);
            },
            render: function render() {
                var counting = this.state.counting;
                var _props = this.props,
                    prefix = _props.prefix,
                    suffix = _props.suffix,
                    className = _props.className;

                return _react2.default.createElement(
                    'div',
                    { className: '' + className },
                    prefix,
                    counting,
                    'S',
                    suffix
                );
            }
        });

        Countdown.propTypes = {
            count: _react2.default.PropTypes.number,
            prefix: _react2.default.PropTypes.string, // 显示前缀
            suffix: _react2.default.PropTypes.string, // 显示后缀
            onCountStart: _react2.default.PropTypes.func,
            onCountEnd: _react2.default.PropTypes.func,
            onChange: _react2.default.PropTypes.func
        };
        Countdown.defaultProps = {
            count: 60,
            onCountStart: function onCountStart() {},
            onCountEnd: function onCountEnd() {},
            onChange: function onChange() {}
        };

        exports.default = Countdown;

        /***/ }),

    /***/ 65:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        __webpack_require__(66);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var Protocol = _react2.default.createClass({
            displayName: 'Protocol',

            getInitialState: function getInitialState() {
                return {};
            },
            handleClose: function handleClose() {
                this.props.onClose && this.props.onClose();
            },


            render: function render() {
                var _props = this.props,
                    showClose = _props.showClose,
                    isFullPage = _props.isFullPage;

                return _react2.default.createElement(
                    'div',
                    { className: '' + (isFullPage && 'full-page') },
                    _react2.default.createElement(
                        'div',
                        { style: { overflow: 'auto', padding: '.05rem' } },
                        _react2.default.createElement(
                            'p',
                            null,
                            '\u6B22\u8FCE\u4F7F\u7528\u4E00\u7AD9\u5F0F\u4F53\u68C0\u9884\u7EA6\u670D\u52A1\uFF01\u60A8\u5728\u4F7F\u7528\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u63D0\u4F9B\u7684\u670D\u52A1\u524D\uFF0C\u5E94\u5F53\u4ED4\u7EC6\u9605\u8BFB\u300A\u7528\u6237\u670D\u52A1\u534F\u8BAE\u4E0E\u9690\u79C1\u653F\u7B56\u300B\uFF08\u4EE5\u4E0B\u7B80\u79F0"\u672C\u534F\u8BAE"\uFF09\u7684\u5168\u90E8\u5185\u5BB9\uFF0C',
                            _react2.default.createElement(
                                'span',
                                { style: { fontWeight: 'bold' } },
                                '\u5C24\u5176\u662F\u6D89\u53CA\u60A8\u91CD\u5927\u6743\u76CA\u7684\u52A0\u7C97\u90E8\u5206\u7684\u6587\u5B57\u3002'
                            ),
                            '\u60A8\u5728\u7528\u6237\u6CE8\u518C\u9875\u9762\u70B9\u51FB"\u5DF2\u9605\u8BFB\u5E76\u540C\u610F"\u6309\u94AE\u540E\uFF0C\u5373\u89C6\u4E3A\u60A8\u5DF2\u9605\u8BFB\u3001\u7406\u89E3\u5E76\u540C\u610F\u672C\u534F\u8BAE\u7684\u5168\u90E8\u5185\u5BB9\uFF0C\u672C\u534F\u8BAE\u5373\u5728\u60A8\u4E0E\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u4E4B\u95F4\u4EA7\u751F\u6CD5\u5F8B\u6548\u529B\uFF0C\u6210\u4E3A\u5BF9\u53CC\u65B9\u5747\u5177\u6709\u7EA6\u675F\u529B\u7684\u6CD5\u5F8B\u6587\u4EF6\u3002'
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E00\u3001\u76F8\u5173\u5B9A\u4E49\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '1.1\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\uFF1A\u6307\u7531\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u63D0\u4F9B\u7684\u4E00\u7AD9\u5F0F\u4F53\u68C0\u9884\u7EA6\u670D\u52A1\u5E73\u53F0\uFF08\u4EE5\u4E0B\u7B80\u79F0"\u5E73\u53F0"\uFF09\u3002\u676D\u5DDE\u6BCF\u5929\u5065\u5EB7\u79D1\u6280\u6709\u9650\u516C\u53F8\u57FA\u4E8E\u4E92\u8054\u7F51\u53CA\u79FB\u52A8\u7F51\u5411\u5E73\u53F0\u63D0\u4F9B\u76F8\u5173\u670D\u52A1\u53CA\u6280\u672F\u89E3\u51B3\u65B9\u6848\u3002\u5E73\u53F0\u5305\u62EC\u57FA\u4E8E\u4E92\u8054\u7F51\u7684\u7F51\u7AD9\u53CA\u57FA\u4E8E\u79FB\u52A8\u7F51\u7684\u76F8\u5173\u5E94\u7528\u3001\u670D\u52A1\u7B49\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '1.2\u7528\u6237\uFF1A\u6307\u5B8C\u6210\u5E73\u53F0\u6CE8\u518C\u7A0B\u5E8F\u6216\u901A\u8FC7\u5BA2\u6237\u7ECF\u7406\u5BFC\u5165\uFF0C\u83B7\u5F97\u53EF\u4EE5\u767B\u5F55\u5E73\u53F0\u4F1A\u5458\u7CFB\u7EDF\u6743\u9650\u7684\u6B63\u5F0F\u4F1A\u5458\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E8C\u3001\u7528\u6237\u8D44\u683C\u53CA\u8D26\u6237'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '2.1\u7528\u6237\u5E94\u5F53\u4E3A\u5177\u6709\u5B8C\u5168\u6C11\u4E8B\u884C\u4E3A\u80FD\u529B\u7684\u81EA\u7136\u4EBA\uFF0C\u6216\u8005\u662F\u5177\u6709\u72EC\u7ACB\u627F\u62C5\u6CD5\u5F8B\u8D23\u4EFB\u80FD\u529B\u7684\u5176\u4ED6\u5408\u6CD5\u4E3B\u4F53\u3002\u82E5\u7528\u6237\u5C5E\u4E8E\u65E0\u6C11\u4E8B\u884C\u4E3A\u80FD\u529B\u3001\u9650\u5236\u6C11\u4E8B\u884C\u4E3A\u80FD\u529B\u4EBA\u7684\uFF0C\u6216\u662F\u4E0D\u5177\u6709\u72EC\u7ACB\u627F\u62C5\u6CD5\u5F8B\u8D23\u4EFB\u80FD\u529B\u7684\u5176\u4ED6\u4E3B\u4F53\u7684\uFF0C\u60A8\u5E94\u5728\u76D1\u62A4\u4EBA\u76D1\u62A4\u4E0B\u8FDB\u884C\u4EA4\u6613\u6216\u662F\u5F97\u5230\u6709\u6743\u4E3B\u4F53\u6388\u6743\u540E\u8FDB\u884C\u4EA4\u6613\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '2.2\u7528\u6237\u4F7F\u7528\u5E73\u53F0\u63D0\u4F9B\u7684\u7F51\u7EDC\u670D\u52A1\uFF0C\u5FC5\u987B\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'a)\u81EA\u884C\u914D\u5907\u4E0A\u7F51\u7684\u6240\u9700\u8BBE\u5907\uFF0C\u5305\u62EC\u4E2A\u4EBA\u7535\u8111\u3001\u8C03\u5236\u89E3\u8C03\u5668\u6216\u5176\u4ED6\u5FC5\u5907\u4E0A\u7F51\u88C5\u7F6E\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'b)\u81EA\u884C\u8D1F\u62C5\u4E2A\u4EBA\u4E0A\u7F51\u6240\u652F\u4ED8\u7684\u4E0E\u6B64\u670D\u52A1\u6709\u5173\u7684\u7535\u8BDD\u8D39\u7528\u3001\u7F51\u7EDC\u8D39\u7528\u3002\u7528\u6237\u5728\u4F7F\u7528\u5E73\u53F0\u670D\u52A1\u524D\uFF0C\u5E94\u68C0\u67E5\u5176\u8F6F\u786C\u4EF6\u8BBE\u5907\uFF0C\u4FDD\u8BC1\u5176\u5904\u4E8E\u5B89\u5168\u4F7F\u7528\u72B6\u6001\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '2.3\u7528\u6237\u70B9\u51FB"\u5DF2\u9605\u8BFB\u5E76\u540C\u610F"\u6309\u94AE\uFF0C\u5C06\u89C6\u4E3A\u7528\u6237\u540C\u610F\u672C\u534F\u8BAE\u7684\u6240\u6709\u6761\u6B3E\uFF0C\u4E14\u5177\u6709\u6D4F\u89C8\u5E73\u53F0\u76F8\u5173\u4FE1\u606F\u3001\u63D0\u4EA4\u8BA2\u5355\u3001\u53D1\u8868\u8BC4\u4EF7\u7B49\u4F7F\u7528\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u670D\u52A1\u7684\u76F8\u5E94\u6743\u5229\u7684\u6C11\u4E8B\u884C\u4E3A\u80FD\u529B\uFF0C\u5E76\u53EF\u4EE5\u5BF9\u81EA\u5DF1\u7684\u884C\u4E3A\u627F\u62C5\u6CD5\u5F8B\u8D23\u4EFB\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '2.4\u7528\u6237\u5E94\u59A5\u5584\u4FDD\u7BA1\u5176\u5728\u5E73\u53F0\u7684\u8D26\u6237\u53CA\u5BC6\u7801\uFF0C\u5E94\u5B9A\u671F\u6216\u4E0D\u5B9A\u671F\u4FEE\u6539\u5BC6\u7801\uFF0C\u5728\u6BCF\u6B21\u4F7F\u7528\u5B8C\u6BD5\u540E\u4F7F\u5176\u5904\u4E8E"\u9000\u51FA"\u72B6\u6001\uFF0C\u4EE5\u4FDD\u8BC1\u8D26\u6237\u5B89\u5168\u3002\u7528\u6237\u4E0D\u5F97\u5C06\u5E73\u53F0\u8D26\u6237\u51FA\u501F\u3001\u8F6C\u8BA9\u6216\u7528\u4F5C\u5176\u4ED6\u975E\u6CD5\u7528\u9014\uFF0C\u5426\u5219\u56E0\u8D26\u6237\u672A\u59A5\u5584\u4FDD\u7BA1\u800C\u9020\u6210\u635F\u5931\u7684\uFF0C\u7528\u6237\u5E94\u627F\u62C5\u76F8\u5E94\u6CD5\u5F8B\u8D23\u4EFB\uFF0C\u9664\u975E\u6709\u8BC1\u636E\u8BC1\u660E\u8BE5\u884C\u4E3A\u4E0E\u7528\u6237\u65E0\u5173\u3002\u82E5\u7528\u6237\u56E0\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u8D26\u6237\u88AB\u76D7\u6216\u56E0\u5176\u4ED6\u975E\u7528\u6237\u539F\u56E0\u9020\u6210\u635F\u5931\u7684\uFF0C\u7528\u6237\u5E94\u7ACB\u5373\u901A\u77E5\u5E73\u53F0\u5E76\u5411\u516C\u5B89\u673A\u5173\u62A5\u6848\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E09\u3001\u7528\u6237\u4FE1\u606F\u4FDD\u62A4'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold' } },
                                '3.1\u5E73\u53F0\u4EC5\u5728\u7528\u6237\u6CE8\u518C\u3001\u63D0\u4EA4\u8BA2\u5355\u6216\u4F7F\u7528\u4F53\u68C0\u9884\u7EA6\u624B\u673A\u5BA2\u6237\u7AEF\u65F6\uFF0C\u57FA\u4E8E\u7528\u6237\u8D26\u6237\u5B89\u5168\u3001\u5B9A\u4F4D\u6216\u914D\u9001\u7528\u6237\u8BA2\u8D2D\u3001\u67E5\u8BE2\u7684\u4F53\u68C0\u5957\u9910\u6216\u67E5\u8BE2\u4F53\u68C0\u62A5\u544A\u670D\u52A1\u7B49\u9700\u8981\uFF0C\u6536\u96C6\u7528\u6237\u7684\u8EAB\u4EFD\u8BC1\u3001\u624B\u673A\u53F7\u3001\u7535\u5B50\u90AE\u7BB1\u3001\u5730\u5740\u3001\u5F53\u524D\u4F4D\u7F6E\u7B49\u5FC5\u8981\u7684\u4E2A\u4EBA\u4FE1\u606F\uFF0C\u9664\u6B64\u4E4B\u5916\uFF0C\u5E73\u53F0\u4E0D\u4F1A\u6536\u96C6\u4EFB\u4F55\u7528\u6237\u4FE1\u606F\u3002\u7528\u6237\u540C\u610F\u5E73\u53F0\u57FA\u4E8E\u4E0A\u8FF0\u76EE\u7684\u53CA\u8303\u56F4\u6536\u96C6\u4FE1\u606F\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold' } },
                                '3.2\u5E73\u53F0\u5BF9\u6536\u96C6\u7684\u7528\u6237\u4FE1\u606F\u4E2D\u6D89\u53CA\u8BC6\u522B\u7528\u6237\u4E2A\u4EBA\u8EAB\u4EFD\u548C\u7528\u6237\u4E2A\u4EBA\u9690\u79C1\u7684\u4FE1\u606F\u8FDB\u884C\u4FDD\u62A4\uFF0C\u627F\u8BFA\u5728\u672A\u83B7\u5F97\u7528\u6237\u8BB8\u53EF\u7684\u60C5\u51B5\u4E0B\uFF0C\u4E0D\u4F1A\u5C06\u7528\u6237\u7684\u4E0A\u8FF0\u4FE1\u606F\u5BF9\u5916\u516C\u5F00\u6216\u63D0\u4F9B\u7ED9\u4EFB\u4F55\u7B2C\u4E09\u65B9\uFF0C\u4F46\u4EE5\u4E0B\u60C5\u51B5\u9664\u5916\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'a)\u7528\u6237\u540C\u610F\u8BA9\u7B2C\u4E09\u65B9\u5171\u4EAB\u8D44\u6599\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'b)\u7528\u6237\u540C\u610F\u516C\u5F00\u5176\u4E2A\u4EBA\u8D44\u6599\uFF0C\u4EAB\u53D7\u4E3A\u5176\u63D0\u4F9B\u7684\u4EA7\u54C1\u548C\u670D\u52A1\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'c)\u9700\u8981\u542C\u4ECE\u6CD5\u5EAD\u4F20\u7968\u3001\u6CD5\u5F8B\u547D\u4EE4\u6216\u9075\u5FAA\u6CD5\u5F8B\u7A0B\u5E8F\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'd)\u4E3A\u4E86\u4F53\u68C0\u62A5\u544A\u914D\u9001\u6216\u5176\u4ED6\u4E3A\u7528\u6237\u5229\u76CA\u9700\u8981\u800C\u5411\u4EA4\u6613\u4EE5\u5916\u7B2C\u4E09\u65B9\u63D0\u4F9B\u7684\uFF0C\u4F8B\u5982\u7269\u6D41\u914D\u9001\u7B49\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'e)\u4E3A\u7EF4\u62A4\u7F51\u7AD9\u7684\u5408\u6CD5\u6743\u76CA'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'f)\u5E73\u53F0\u65D7\u4E0B\u6240\u6709\u5B50\u4EA7\u54C1\u53CA\u5B50\u7CFB\u7EDF'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold' } },
                                '3.3\u5E73\u53F0\u53EF\u80FD\u4F1A\u4E0E\u7B2C\u4E09\u65B9\u5408\u4F5C\u5411\u60A8\u63D0\u4F9B\u76F8\u5173\u7684\u7F51\u7EDC\u670D\u52A1\uFF0C\u5728\u6B64\u60C5\u51B5\u4E0B\uFF0C\u5982\u8BE5\u7B2C\u4E09\u65B9\u540C\u610F\u627F\u62C5\u4E0E\u5E73\u53F0\u540C\u7B49\u4FDD\u62A4\u60A8\u9690\u79C1\u7684\u8D23\u4EFB\uFF0C\u4E14\u60A8\u540C\u610F\u5E76\u6388\u6743\u7F51\u7AD9\u5C06\u60A8\u7684\u6CE8\u518C\u8D44\u6599\u7B49\u63D0\u4F9B\u7ED9\u8BE5\u7B2C\u4E09\u65B9\uFF0C\u5219\u5E73\u53F0\u53EF\u5C06\u7528\u6237\u4FE1\u606F\u63D0\u4F9B\u7ED9\u8BE5\u7B2C\u4E09\u65B9\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u56DB\u3001\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u670D\u52A1'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.1\u7528\u6237\u53EF\u6839\u636E\u672C\u534F\u8BAE\u53CA\u5E73\u53F0\u516C\u5E03\u7684\u76F8\u5173\u4F7F\u7528\u89C4\u5219\uFF0C\u67E5\u9605\u5728\u5E73\u53F0\u4E0A\u53D1\u5E03\u7684\u4F53\u68C0\u5957\u9910\u4EA7\u54C1\u4FE1\u606F\uFF0C\u901A\u8FC7\u5E73\u53F0\u8BA2\u8D2D\u5177\u4F53\u4F53\u68C0\u5957\u9910\u4EA7\u54C1\uFF0C\u53D1\u5E03\u4EA7\u54C1\u8BC4\u4EF7\u4FE1\u606F\uFF0C\u9080\u8BF7\u5173\u6CE8\u597D\u53CB\uFF0C\u53C2\u52A0\u5E73\u53F0\u7684\u6709\u5173\u6D3B\u52A8\uFF08\u5982\u6709\uFF09\uFF0C\u53CA\u5E73\u53F0\u73B0\u6709\u53CA\u5C06\u6765\u53EF\u80FD\u63D0\u4F9B\u7684\u5176\u4ED6\u670D\u52A1\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.2\u7528\u6237\u5728\u4F7F\u7528\u5E73\u53F0\u63D0\u4F9B\u7684\u4E0A\u8FF0\u670D\u52A1\u65F6\uFF0C\u5E94\u9075\u5B88\u672C\u534F\u8BAE\u53CA\u5E73\u53F0\u7684\u76F8\u5173\u4F7F\u7528\u89C4\u5219\uFF0C\u9075\u5B88\u81EA\u613F\u3001\u5E73\u7B49\u3001\u516C\u5E73\u53CA\u8BDA\u5B9E\u4FE1\u7528\u539F\u5219\uFF0C\u4E0D\u5229\u7528\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u4FB5\u72AF\u4ED6\u4EBA\u5408\u6CD5\u6743\u76CA\u53CA\u8C0B\u53D6\u4E0D\u6B63\u5F53\u5229\u76CA\uFF0C\u4E0D\u6270\u4E71\u7F51\u4E0A\u4EA4\u6613\u7684\u6B63\u5E38\u79E9\u5E8F\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.3\u7528\u6237\u53EF\u4EE5\u5728\u5E73\u53F0\u53D1\u5E03\u5BF9\u4F53\u68C0\u5957\u9910\u6216\u670D\u52A1\u7684\u8D2D\u4E70\u4F53\u9A8C\u3001\u8BC4\u4EF7\u7B49\u4FE1\u606F\uFF0C\u5E76\u53EF\u5BF9\u5176\u8FDB\u884C\u9002\u5F53\u7684\u4FEE\u6539\u3001\u5220\u9664\uFF0C\u4F46\u4E0D\u5F97\u5728\u5E73\u53F0\u53D1\u5E03\u5305\u542B\u4EE5\u4E0B\u5185\u5BB9\u7684\u8A00\u8BBA\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'a)\u53CD\u5BF9\u5BAA\u6CD5\u6240\u786E\u5B9A\u7684\u57FA\u672C\u539F\u5219\uFF0C\u717D\u52A8\u3001\u6297\u62D2\u3001\u7834\u574F\u5BAA\u6CD5\u548C\u6CD5\u5F8B\u3001\u884C\u653F\u6CD5\u89C4\u5B9E\u65BD\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'b)\u717D\u52A8\u98A0\u8986\u56FD\u5BB6\u653F\u6743\uFF0C\u63A8\u7FFB\u793E\u4F1A\u4E3B\u4E49\u5236\u5EA6\uFF0C\u717D\u52A8\u3001\u5206\u88C2\u56FD\u5BB6\uFF0C\u7834\u574F\u56FD\u5BB6\u7EDF\u4E00\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'c)\u635F\u5BB3\u56FD\u5BB6\u8363\u8A89\u548C\u5229\u76CA\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'd)\u717D\u52A8\u6C11\u65CF\u4EC7\u6068\u3001\u6C11\u65CF\u6B67\u89C6\uFF0C\u7834\u574F\u6C11\u65CF\u56E2\u7ED3\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'e)\u4EFB\u4F55\u5305\u542B\u5BF9\u79CD\u65CF\u3001\u6027\u522B\u3001\u5B97\u6559\u3001\u5730\u57DF\u5185\u5BB9\u7B49\u6B67\u89C6\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'f)\u634F\u9020\u6216\u8005\u6B6A\u66F2\u4E8B\u5B9E\uFF0C\u6563\u5E03\u8C23\u8A00\uFF0C\u6270\u4E71\u793E\u4F1A\u79E9\u5E8F\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'g)\u5BA3\u626C\u5C01\u5EFA\u8FF7\u4FE1\u3001\u90AA\u6559\u3001\u6DEB\u79FD\u3001\u8272\u60C5\u3001\u8D4C\u535A\u3001\u66B4\u529B\u3001\u51F6\u6740\u3001\u6050\u6016\u3001\u6559\u5506\u72AF\u7F6A\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'h)\u516C\u7136\u4FAE\u8FB1\u4ED6\u4EBA\u6216\u8005\u634F\u9020\u4E8B\u5B9E\u8BFD\u8C24\u4ED6\u4EBA\u7684\uFF0C\u6216\u8005\u8FDB\u884C\u5176\u4ED6\u6076\u610F\u653B\u51FB\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'i)\u635F\u5BB3\u56FD\u5BB6\u673A\u5173\u4FE1\u8A89\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'j)\u5176\u4ED6\u8FDD\u53CD\u5BAA\u6CD5\u548C\u6CD5\u5F8B\u884C\u653F\u6CD5\u89C4\u7684\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u7528\u6237\u5728\u5E73\u53F0\u53D1\u5E03\u7684\u4FE1\u606F\uFF0C\u5747\u4EE3\u8868\u7528\u6237\u7684\u89C2\u70B9\uFF0C\u4E0E\u5E73\u53F0\u65E0\u5173\uFF0C\u7528\u6237\u987B\u5BF9\u5176\u8A00\u8BBA\u72EC\u7ACB\u627F\u62C5\u5B8C\u5168\u7684\u6CD5\u5F8B\u8D23\u4EFB\u3002\u5E73\u53F0\u6709\u6743\u5229\u5BF9\u7528\u6237\u6240\u53D1\u8868\u7684\u4FE1\u606F\u8FDB\u884C\u5BA1\u6838\uFF0C\u5982\u82E5\u4FE1\u606F\u4E2D\u5305\u542B\u8FDD\u53CD\u6CD5\u5F8B\u6CD5\u89C4\u6216\u8005\u4FB5\u72AF\u4ED6\u4EBA\u9690\u79C1\u884C\u4E3A\u7684\uFF0C\u5E73\u53F0\u6709\u6743\u53D6\u6D88\u8BE5\u5E10\u53F7\u5728\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u4E0A\u7684\u4F7F\u7528\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.4\u7528\u6237\u5728\u4F7F\u7528\u5E73\u53F0\u63D0\u4F9B\u7684\u670D\u52A1\u65F6\uFF0C\u4E0D\u5F97\u6709\u4E0B\u5217\u884C\u4E3A\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'a)\u5229\u7528\u5E73\u53F0\u4ECE\u4E8B\u6D17\u94B1\u3001\u7A83\u53D6\u5546\u4E1A\u79D8\u5BC6\u3001\u7A83\u53D6\u4E2A\u4EBA\u4FE1\u606F\u7B49\u8FDD\u6CD5\u72AF\u7F6A\u6D3B\u52A8\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'b)\u5C06\u6709\u5173\u5E72\u6270\u3001\u7834\u574F\u6216\u9650\u5236\u4EFB\u4F55\u8BA1\u7B97\u673A\u8F6F\u4EF6\u3001\u786C\u4EF6\u6216\u901A\u8BAF\u8BBE\u5907\u529F\u80FD\u7684\u8F6F\u4EF6\u75C5\u6BD2\u6216\u5176\u4ED6\u8BA1\u7B97\u673A\u4EE3\u7801\u3001\u6863\u6848\u548C\u7A0B\u5E8F\u8D44\u6599\uFF0C\u52A0\u4EE5\u4E0A\u8F7D\u3001\u53D1\u5E03\u3001\u53D1\u9001\u7535\u5B50\u90AE\u4EF6\u6216\u4EE5\u5176\u4ED6\u65B9\u5F0F\u4F20\u9001\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'c)\u5E72\u6270\u5E73\u53F0\u6B63\u5E38\u8FD0\u884C\uFF0C\u975E\u6CD5\u5165\u4FB5\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u670D\u52A1\u5668\u3001\u7BE1\u6539\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u76F8\u5173\u4EA7\u54C1\u4EE3\u7801\u6216\u5176\u4ED6\u635F\u5BB3\u5E73\u53F0\u7CFB\u7EDF\u7684\u884C\u4E3A\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'd)\u4F01\u56FE\u89C4\u907F\u5E73\u53F0\u7684\u5B89\u5168\u8BBE\u7F6E\u6216\u7F51\u7EDC\u7CFB\u7EDF\uFF0C\u5305\u62EC\u83B7\u53D6\u7528\u6237\u4E0D\u5E94\u83B7\u53D6\u7684\u6570\u636E\uFF0C\u767B\u5F55\u672A\u7ECF\u660E\u786E\u6388\u6743\u7684\u670D\u52A1\u5668\u6216\u8D26\u6237\uFF0C\u6216\u91C7\u7528\u8FD0\u884C\u7AEF\u53E3\u626B\u63CF\u7B49\u65B9\u5F0F\u7AA5\u63A2\u5176\u4ED6\u7F51\u7EDC\u7684\u5B89\u5168\u63AA\u65BD\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'e)\u4EE5\u5BFC\u81F4\u5E73\u53F0\u7684\u8BA1\u7B97\u673A\u7CFB\u7EDF\u6216\u8BBE\u65BD\u627F\u53D7\u4E0D\u5408\u7406\u8D1F\u8F7D\u7684\u65B9\u5F0F\u83B7\u53D6\u5E73\u53F0\u63D0\u4F9B\u7684\u670D\u52A1\u6216\u7F51\u7AD9\u4FE1\u606F\uFF0C\u6216\u8FDB\u884C\u53EF\u80FD\u5BFC\u81F4\u6B64\u7C7B\u60C5\u51B5\u51FA\u73B0\u7684\u884C\u4E3A\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'f)\u5B9E\u65BD\u4EFB\u4F55\u5F62\u5F0F\u7684\u7F51\u7EDC\u76D1\u63A7\uFF0C\u4ECE\u800C\u622A\u53D6\u4E0E\u81EA\u8EAB\u65E0\u5173\u7684\u4FE1\u606F\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'g)\u5229\u7528\u5E73\u53F0\u4ECE\u4E8B\u4E0E\u7F51\u4E0A\u8D2D\u7269\u65E0\u5173\u6216\u4E0D\u662F\u4EE5\u8D2D\u7269\u4E3A\u76EE\u7684\u7684\u6D3B\u52A8\uFF0C\u8BD5\u56FE\u6270\u4E71\u6B63\u5E38\u8D2D\u7269\u79E9\u5E8F\uFF0C\u8C0B\u53D6\u4E0D\u6B63\u5F53\u5229\u76CA\u7684\u884C\u4E3A\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'h)\u6CE8\u518C\u591A\u4E2A\u8D26\u6237\uFF0C\u901A\u8FC7\u81EA\u6211\u9080\u8BF7\u3001\u76F8\u4E92\u9080\u8BF7\u6216\u5229\u7528\u591A\u4E2A\u624B\u673A\u6216\u90AE\u7BB1\u6CE8\u518C\u7B49\u4E0D\u6B63\u5F53\u624B\u6BB5\u83B7\u53D6\u8FD4\u5229\u6216\u4EFB\u4F55\u7ECF\u6D4E\u5229\u76CA\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'i)\u5927\u91CF\u8D2D\u4E70\u4F53\u68C0\u5957\u9910\u6216\u670D\u52A1\u540E\u53C8\u5927\u91CF\u9000\u8D27\u6216\u56E4\u79EF\u725F\u5229\uFF0C\u635F\u5BB3\u5E73\u53F0\u5229\u76CA\u7684\u884C\u4E3A\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'j)\u5176\u4ED6\u635F\u5BB3\u4ED6\u4EBA\u6216\u5E73\u53F0\u5408\u6CD5\u6743\u76CA\u7684\u884C\u4E3A\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.5\u4E00\u7ECF\u53D1\u73B0\u7528\u6237\u63D0\u4F9B\u865A\u5047\u4FE1\u606F\u6216\u6709\u4E0A\u8FF0\u7981\u6B62\u7684\u8A00\u8BBA\u6216\u884C\u4E3A\u7684\uFF0C\u5E73\u53F0\u6709\u6743\u91C7\u53D6\u6682\u505C\u63D0\u4F9B\u670D\u52A1\u3001\u5220\u9664\u8FDD\u6CD5\u8FDD\u89C4\u4FE1\u606F\u3001\u9650\u5236\u7528\u6237\u8D2D\u4E70\u3001\u7981\u6B62\u7528\u6237\u53D1\u8A00\u3001\u9501\u5B9A\u7528\u6237\u8D26\u6237\u7B49\u5904\u7406\u63AA\u65BD\u3002\u82E5\u56E0\u7528\u6237\u7684\u4E0A\u8FF0\u8A00\u8BBA\u6216\u884C\u4E3A\u7ED9\u4ED6\u4EBA\u6216\u5E73\u53F0\u9020\u6210\u635F\u5931\u7684\uFF0C\u7528\u6237\u8FD8\u5E94\u627F\u62C5\u8D54\u507F\u8D23\u4EFB\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.6\u82E5\u56FD\u5BB6\u76F8\u5173\u673A\u5173\u5411\u5E73\u53F0\u53D1\u51FA\u547D\u4EE4\u3001\u6307\u793A\u3001\u88C1\u51B3\u7B49\u6CD5\u5F8B\u6587\u4E66\u6216\u7B2C\u4E09\u4EBA\u5411\u5E73\u53F0\u6295\u8BC9\u5E76\u63D0\u4F9B\u76F8\u5173\u8BC1\u636E\u6750\u6599\uFF0C\u8981\u6C42\u51BB\u7ED3\u3001\u5173\u95ED\u7528\u6237\u8D26\u53F7\u53CA\u4EA4\u6613\u7684\uFF0C\u5E73\u53F0\u6709\u6743\u5BF9\u76F8\u5173\u8D26\u53F7\u53CA\u4EA4\u6613\u8FDB\u884C\u51BB\u7ED3\u6216\u53D6\u6D88\uFF0C\u540C\u65F6\u5BF9\u8FDD\u53CD\u672C\u534F\u8BAE\u53CA\u5E73\u53F0\u76F8\u5173\u670D\u52A1\u89C4\u5219\u7684\u7528\u6237\uFF0C\u5E73\u53F0\u6709\u6743\u7ACB\u5373\u5C01\u505C\u5176\u8D26\u53F7\u3002\u5E73\u53F0\u91C7\u53D6\u4E0A\u8FF0\u63AA\u65BD\u7684\uFF0C\u5C06\u901A\u8FC7\u7528\u6237\u6CE8\u518C\u65F6\u63D0\u4EA4\u7684\u8054\u7CFB\u4FE1\u606F\u901A\u77E5\u7528\u6237\uFF0C\u56E0\u7528\u6237\u63D0\u4F9B\u865A\u5047\u8054\u7CFB\u4FE1\u606F\u6216\u8005\u4FE1\u606F\u53D1\u751F\u53D8\u66F4\u672A\u53CA\u65F6\u901A\u77E5\u5E73\u53F0\u5BFC\u81F4\u7684\u4E0D\u5229\u540E\u679C\u7531\u8BE5\u7528\u6237\u81EA\u884C\u627F\u62C5\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '4.7\u7528\u6237\u5E94\u9075\u5B88\u672C\u534F\u8BAE\u53CA\u5E73\u53F0\u516C\u793A\u7684\u5404\u9879\u670D\u52A1\u89C4\u5219\u7684\u5185\u5BB9\uFF0C\u82E5\u56E0\u7528\u6237\u8FDD\u53CD\u672C\u534F\u8BAE\u53CA\u670D\u52A1\u89C4\u5219\u9020\u6210\u635F\u5931\u7684\uFF0C\u7528\u6237\u5E94\u4E88\u4EE5\u8D54\u507F\uFF0C\u635F\u5931\u65E0\u6CD5\u4F30\u8BA1\u7684\uFF0C\u5219\u4EE5 \u4E07\u5143\u4E3A\u51C6\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E94\u3001\u670D\u52A1\u6761\u6B3E\u7684\u4FEE\u6539'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u5E73\u53F0\u6709\u6743\u4E0D\u5B9A\u671F\u7684\u5236\u5B9A\u3001\u4FEE\u6539\u672C\u534F\u8BAE\u53CA/\u6216\u76F8\u5173\u670D\u52A1\u89C4\u5219\uFF0C\u4E00\u65E6\u6761\u6B3E\u53CA\u670D\u52A1\u5185\u5BB9\u3001\u89C4\u5219\u4EA7\u751F\u53D8\u52A8\uFF0C\u5E73\u53F0\u5C06\u4F1A\u4EE5\u7F51\u7AD9\u516C\u544A\u7684\u65B9\u5F0F\u8FDB\u884C\u516C\u793A\u3002\u5E73\u53F0\u6709\u6743\u4E0D\u5B9A\u671F\u7684\u5236\u5B9A\u3001\u4FEE\u6539\u672C\u534F\u8BAE\u53CA/\u6216\u76F8\u5173\u670D\u52A1\u89C4\u5219\uFF0C\u4E00\u65E6\u6761\u6B3E\u53CA\u670D\u52A1\u5185\u5BB9\u3001\u89C4\u5219\u4EA7\u751F\u53D8\u52A8\uFF0C\u5E73\u53F0\u5C06\u4F1A\u4EE5\u7F51\u7AD9\u516C\u544A\u7684\u65B9\u5F0F\u8FDB\u884C\u516C\u793A\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u516D\u3001\u670D\u52A1\u7684\u4E2D\u65AD\u548C\u7EC8\u6B62'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '6.1\u5E73\u53F0\u4F1A\u5C3D\u5168\u529B\u7EF4\u62A4\u4F53\u68C0\u9884\u7EA6\u670D\u52A1\u7684\u6B63\u5E38\u8FD0\u884C\uFF0C\u4EE5\u5411\u7528\u6237\u63D0\u4F9B\u6301\u7EED\u3001\u7A33\u5B9A\u3001\u5B89\u5168\u3001\u987A\u7545\u7684\u670D\u52A1\u3002\u4F46\u7528\u6237\u7406\u89E3\u5E76\u540C\u610F\uFF1A\u5E73\u53F0\u5BF9\u670D\u52A1\u9875\u9762\u8FDB\u884C\u6539\u7248\u3001\u5347\u7EA7\u7F51\u7AD9\u7CFB\u7EDF\u3001\u589E\u52A0\u670D\u52A1\u529F\u80FD\u7B49\u987B\u4E2D\u65AD\u670D\u52A1\u7684\u64CD\u4F5C\u65F6\uFF0C\u6709\u6743\u6682\u65F6\u4E2D\u65AD\u670D\u52A1\u3002\u5E73\u53F0\u5C06\u5C3D\u53EF\u80FD\u5728\u5B9E\u65BD\u4EE5\u4E0A\u884C\u4E3A\u65F6\u4E88\u4EE5\u63D0\u524D\u516C\u544A\uFF0C\u5E76\u5C3D\u53EF\u80FD\u5C06\u5F71\u54CD\u964D\u4F4E\u5230\u6700\u5C0F\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '6.2\u7528\u6237\u53EF\u81EA\u884C\u505C\u6B62\u4F7F\u7528\u5E73\u53F0\u63D0\u4F9B\u7684\u670D\u52A1\uFF0C\u5E76\u53EF\u5411\u5E73\u53F0\u63D0\u4EA4\u7533\u8BF7\uFF0C\u8981\u6C42\u5C01\u505C\u6216\u6CE8\u9500\u5176\u8D26\u6237\u3002\u7528\u6237\u8D26\u6237\u88AB\u5C01\u505C\u6216\u6CE8\u9500\u540E\uFF0C\u7528\u6237\u5C06\u4E0D\u80FD\u4F7F\u7528\u5E73\u53F0\u9664\u6D4F\u89C8\u9875\u9762\u5916\u7684\u6240\u6709\u670D\u52A1\uFF0C\u4F46\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u4ECD\u6709\u6743\u4FDD\u7559\u7528\u6237\u7684\u6240\u6709\u6CE8\u518C\u4FE1\u606F\u53CA\u8FC7\u5F80\u4EA4\u6613\u8BB0\u5F55\uFF0C\u5BF9\u7528\u6237\u5728\u5E73\u53F0\u4ECE\u4E8B\u8FDD\u6CD5\u884C\u4E3A\u6216\u8FDD\u53CD\u672C\u534F\u8BAE\u53CA\u76F8\u5173\u89C4\u5B9A\u7684\u884C\u4E3A\uFF0C\u5E73\u53F0\u4ECD\u6709\u6743\u884C\u4F7F\u672C\u534F\u8BAE\u89C4\u5B9A\u7684\u6743\u5229\u5E76\u8FFD\u7A76\u7528\u6237\u7684\u6CD5\u5F8B\u8D23\u4EFB\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '6.3\u5E73\u53F0\u53EF\u5728\u4E0B\u5217\u60C5\u51B5\u4E0B\uFF0C\u81EA\u884C\u505C\u6B62\u5411\u7528\u6237\u63D0\u4F9B\u670D\u52A1\uFF0C\u5E76\u5C01\u505C\u6216\u6CE8\u9500\u5176\u8D26\u6237\uFF0C\u82E5\u56E0\u7528\u6237\u884C\u4E3A\u7ED9\u5E73\u53F0\u9020\u6210\u635F\u5931\u7684\uFF0C\u7528\u6237\u8FD8\u5E94\u8D1F\u8D23\u8D54\u507F\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'a)\u7528\u6237\u8FDD\u53CD\u672C\u534F\u8BAE\u76F8\u5173\u89C4\u5B9A\u7684\uFF0C\u4E0D\u8BBA\u7528\u6237\u662F\u5426\u76F4\u63A5\u3001\u95F4\u63A5\u6216\u8005\u901A\u8FC7\u4ED6\u4EBA\u518D\u6B21\u6CE8\u518C\u6210\u4E3A\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u7528\u6237\uFF0C\u5E73\u53F0\u5747\u6709\u6743\u505C\u6B62\u5411\u5176\u63D0\u4F9B\u670D\u52A1\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'b)\u7528\u6237\u4F7F\u7528\u865A\u5047\u4FE1\u606F\u6CE8\u518C\u7684\uFF0C\u5305\u62EC\u4F46\u4E0D\u9650\u4E8E\u4F7F\u7528\u865A\u5047\u59D3\u540D\u3001\u865A\u5047\u5730\u5740\u3001\u865A\u5047\u624B\u673A\u53F7\u3001\u865A\u5047\u7535\u5B50\u90AE\u7BB1\u7B49\uFF0C\u5E73\u53F0\u5747\u6709\u6743\u7ACB\u5373\u505C\u6B62\u5411\u5176\u63D0\u4F9B\u670D\u52A1\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'c)\u672C\u534F\u8BAE\u7EC8\u6B62\u6216\u66F4\u65B0\u65F6\uFF0C\u7528\u6237\u660E\u793A\u4E0D\u540C\u610F\u63A5\u53D7\u65B0\u534F\u8BAE\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { paddingLeft: '.1rem' } },
                                'd)\u5176\u4ED6\u8FDD\u53CD\u5E73\u53F0\u76F8\u5173\u89C4\u5B9A\u6216\u81F4\u4F7F\u5E73\u53F0\u6216\u4ED6\u4EBA\u906D\u53D7\u5229\u76CA\u635F\u5BB3\u7684\u884C\u4E3A\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E03\u3001\u8D23\u4EFB\u9650\u5236'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '7.1\u4E0D\u8BBA\u5728\u4EFB\u4F55\u60C5\u51B5\u4E0B\uFF0C\u5E73\u53F0\u5747\u4E0D\u5BF9\u7531\u4E8E\u4E92\u8054\u7F51\u6B63\u5E38\u7684\u8BBE\u5907\u7EF4\u62A4\uFF0C\u4E92\u8054\u7F51\u7EDC\u8FDE\u63A5\u6545\u969C\uFF0C\u7535\u8111\u3001\u901A\u8BAF\u6216\u5176\u4ED6\u7CFB\u7EDF\u7684\u6545\u969C\uFF0C\u7535\u529B\u6545\u969C\uFF0C\u7F62\u5DE5\uFF0C\u66B4\u4E71\uFF0C\u9A9A\u4E71\uFF0C\u707E\u96BE\u6027\u5929\u6C14\uFF08\u5982\u706B\u707E\u3001\u6D2A\u6C34\u3001\u98CE\u66B4\u7B49\uFF09\uFF0C\u7206\u70B8\uFF0C\u6218\u4E89\uFF0C\u653F\u5E9C\u884C\u4E3A\uFF0C\u53F8\u6CD5\u884C\u653F\u673A\u5173\u7684\u547D\u4EE4\u6216\u7B2C\u4E09\u65B9\u7684\u4E0D\u4F5C\u4E3A\u800C\u9020\u6210\u7684\u4E0D\u80FD\u5C65\u884C\u6216\u5EF6\u8FDF\u5C65\u884C\u627F\u62C5\u8D23\u4EFB\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '7.2\u5982\u56E0\u4E0A\u8FF0\u4E0D\u53EF\u6297\u529B\u6216\u5176\u4ED6\u5E73\u53F0\u65E0\u6CD5\u63A7\u5236\u7684\u539F\u56E0\u4F7F\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u7684\u9500\u552E\u7CFB\u7EDF\u5D29\u6E83\u6216\u65E0\u6CD5\u6B63\u5E38\u4F7F\u7528\u5BFC\u81F4\u7F51\u4E0A\u4EA4\u6613\u65E0\u6CD5\u5B8C\u6210\u6216\u4E22\u5931\u6709\u5173\u7684\u4FE1\u606F\u3001\u8BB0\u5F55\u7B49\uFF0C\u5E73\u53F0\u4E0D\u627F\u62C5\u8D23\u4EFB\u3002\u4F46\u662F\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u4F1A\u5C3D\u53EF\u80FD\u5408\u7406\u5730\u534F\u52A9\u5904\u7406\u5584\u540E\u4E8B\u5B9C\uFF0C\u5E76\u52AA\u529B\u4F7F\u5BA2\u6237\u514D\u53D7\u7ECF\u6D4E\u635F\u5931\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '7.3\u57FA\u4E8E\u4E92\u8054\u7F51\u7684\u7279\u6B8A\u6027\uFF0C\u5E73\u53F0\u663E\u793A\u7684\u4FE1\u606F\u53EF\u80FD\u6709\u4E00\u5B9A\u7684\u6EDE\u540E\u6027\u6216\u5DEE\u9519\uFF0C\u5BF9\u6B64\u60C5\u5F62\u7528\u6237\u77E5\u6089\u5E76\u7406\u89E3\uFF1B\u60A8\u987B\u81EA\u884C\u8FA8\u522B\u771F\u4F2A\uFF0C\u8C28\u614E\u9884\u9632\u98CE\u9669\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u516B\u3001\u77E5\u8BC6\u4EA7\u6743'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '8.1\u7528\u6237\u540C\u610F\uFF0C\u7528\u6237\u5728\u5E73\u53F0\u53D1\u8868\u7684\u4EA7\u54C1\u4F7F\u7528\u4F53\u9A8C\u3001\u4EA7\u54C1\u8BA8\u8BBA\u6216\u56FE\u7247\u7B49\u6240\u6709\u4FE1\u606F\uFF08\u4EE5\u4E0B\u7B80\u79F0"\u4FE1\u606F"\uFF09\uFF0C\u9664\u7F72\u540D\u6743\u3001\u53D1\u8868\u6743\u3001\u4FEE\u6539\u6743\u5916\u7684\u5176\u4ED6\u77E5\u8BC6\u4EA7\u6743\u6743\u5229\uFF08\u5305\u62EC\u4F46\u4E0D\u9650\u4E8E\uFF1A\u590D\u5236\u6743\u3001\u53D1\u884C\u6743\u3001\u51FA\u79DF\u6743\u3001\u5C55\u89C8\u6743\u3001\u8868\u6F14\u6743\u3001\u653E\u6620\u6743\u3001\u5E7F\u64AD\u6743\u3001\u4FE1\u606F\u7F51\u7EDC\u4F20\u64AD\u6743\u3001\u6444\u5236\u6743\u3001\u6539\u7F16\u6743\u3001\u7FFB\u8BD1\u6743\u3001\u6C47\u7F16\u6743\u4EE5\u53CA\u5E94\u5F53\u7531\u8457\u4F5C\u6743\u4EBA\u4EAB\u6709\u7684\u5176\u4ED6\u53EF\u8F6C\u8BA9\u6743\u5229\uFF09\uFF0C\u5747\u72EC\u5BB6\u6392\u4ED6\u65E0\u507F\u8BB8\u53EF\u7ED9\u5E73\u53F0\uFF0C\u5E76\u540C\u610F\u5E73\u53F0\u4EE5\u81EA\u5DF1\u540D\u4E49\u5C31\u6240\u8FF0\u6743\u5229\u7684\u4FDD\u62A4\u91C7\u53D6\u4EFB\u4F55\u5F62\u5F0F\u7684\u6CD5\u5F8B\u884C\u4E3A\uFF0C\u5E76\u83B7\u5F97\u5168\u90E8\u8D54\u507F\u3002\u672C\u534F\u8BAE\u5DF2\u7ECF\u6784\u6210\u300A\u8457\u4F5C\u6743\u6CD5\u300B\u7B2C\u4E8C\u5341\u4E94\u6761\u6240\u89C4\u5B9A\u7684\u4E66\u9762\u534F\u8BAE\uFF0C\u5176\u6548\u529B\u53CA\u4E8E\u7528\u6237\u5728\u4F53\u68C0\u9884\u7EA6\u5E73\u53F0\u53D1\u5E03\u7684\u4EFB\u4F55\u53D7\u8457\u4F5C\u6743\u6CD5\u4FDD\u62A4\u7684\u4F5C\u54C1\u5185\u5BB9\uFF0C\u65E0\u8BBA\u8BE5\u5185\u5BB9\u5F62\u6210\u4E8E\u672C\u534F\u8BAE\u7B7E\u8BA2\u524D\u8FD8\u662F\u672C\u534F\u8BAE\u7B7E\u8BA2\u540E\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '8.2\u5E73\u53F0\u53CA\u5E73\u53F0\u8BB8\u53EF\u7684\u5173\u8054\u65B9\u6709\u6743\u5C06\u7528\u6237\u5728\u5E73\u53F0\u53D1\u8868\u7684\u4EA7\u54C1\u4F7F\u7528\u4F53\u9A8C\u3001\u4EA7\u54C1\u8BA8\u8BBA\u6216\u56FE\u7247\u8FDB\u884C\u4F7F\u7528\u6216\u8005\u4E0E\u5176\u4ED6\u4EBA\u5408\u4F5C\u4F7F\u7528\uFF0C\u4F7F\u7528\u8303\u56F4\u5305\u62EC\u4F46\u4E0D\u9650\u4E8E\u7F51\u7AD9\u3001\u7535\u5B50\u6742\u5FD7\u3001\u6742\u5FD7\u3001\u520A\u7269\u7B49\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u4E5D\u3001\u901A\u77E5\u548C\u516C\u544A'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '9.1\u5E73\u53F0\u5411\u7528\u6237\u53D1\u9001\u7684\u6240\u6709\u901A\u544A\uFF0C\u5C06\u901A\u8FC7\u9875\u9762\u516C\u544A\u6216\u7535\u5B50\u90AE\u4EF6\u6216\u8005\u624B\u673A\u77ED\u4FE1\u7684\u65B9\u5F0F\u4F20\u9001\u3002\u5E73\u53F0\u7684\u6D3B\u52A8\u4FE1\u606F\u4E5F\u5C06\u5B9A\u671F\u901A\u8FC7\u9875\u9762\u516C\u544A\u53CA\u7535\u5B50\u90AE\u4EF6\u65B9\u5F0F\u6216\u8005\u624B\u673A\u77ED\u4FE1\u5411\u7528\u6237\u53D1\u9001\u3002\u7528\u6237\u534F\u8BAE\u6761\u6B3E\u7684\u4FEE\u6539\u3001\u670D\u52A1\u53D8\u66F4\u3001\u6216\u5176\u5B83\u91CD\u8981\u4E8B\u4EF6\u7684\u901A\u544A\u90FD\u4F1A\u4EE5\u6B64\u5F62\u5F0F\u8FDB\u884C\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '9.2\u7528\u6237\u53EF\u4EE5\u9009\u62E9\u63A5\u53D7\u6216\u4E0D\u63A5\u53D7\u5E73\u53F0\u901A\u8FC7\u90AE\u4EF6\u548C\u77ED\u4FE1\u7684\u5F62\u5F0F\u5411\u5176\u53D1\u9001\u8BA2\u5355\u4FE1\u606F\u3001\u4FC3\u9500\u6D3B\u52A8\u7B49\u4FE1\u606F\u3002\u7528\u6237\u9009\u62E9\u63A5\u53D7\u7684\uFF0C\u53EF\u4EE5\u968F\u65F6\u901A\u77E5\u5E73\u53F0\u53D6\u6D88\u53D1\u9001\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u5341\u3001\u6CD5\u5F8B\u7BA1\u8F96\u548C\u9002\u7528'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '10.1\u672C\u534F\u8BAE\u7684\u8BA2\u7ACB\u3001\u6267\u884C\u548C\u89E3\u91CA\u53CA\u4E89\u8BAE\u7684\u89E3\u51B3\u5747\u5E94\u9002\u7528\u4E2D\u534E\u4EBA\u6C11\u5171\u548C\u56FD\u5927\u9646\u5730\u533A\u6CD5\u5F8B\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '10.2\u5982\u53D1\u751F\u672C\u534F\u8BAE\u6761\u6B3E\u4E0E\u4E0A\u8FF0\u6CD5\u5F8B\u76F8\u62B5\u89E6\u65F6\uFF0C\u5219\u8FD9\u4E9B\u6761\u6B3E\u5C06\u5B8C\u5168\u6309\u6CD5\u5F8B\u89C4\u5B9A\u91CD\u65B0\u89E3\u91CA\uFF0C\u800C\u5176\u5B83\u5408\u6CD5\u6761\u6B3E\u5219\u4F9D\u65E7\u4FDD\u6301\u5BF9\u7528\u6237\u4EA7\u751F\u6CD5\u5F8B\u6548\u529B\u548C\u5F71\u54CD\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '10.3\u672C\u534F\u8BAE\u7684\u89C4\u5B9A\u662F\u53EF\u5206\u5272\u7684\uFF0C\u5982\u672C\u534F\u8BAE\u4EFB\u4F55\u89C4\u5B9A\u88AB\u88C1\u5B9A\u4E3A\u65E0\u6548\u6216\u4E0D\u53EF\u6267\u884C\uFF0C\u8BE5\u89C4\u5B9A\u53EF\u88AB\u5220\u9664\u800C\u5176\u4F59\u6761\u6B3E\u5E94\u4E88\u4EE5\u6267\u884C\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '10.4\u5982\u53CC\u65B9\u5C31\u672C\u534F\u8BAE\u5185\u5BB9\u6216\u5176\u6267\u884C\u53D1\u751F\u4EFB\u4F55\u4E89\u8BAE\uFF0C\u53CC\u65B9\u5E94\u5C3D\u529B\u53CB\u597D\u534F\u5546\u89E3\u51B3\uFF1B\u534F\u5546\u4E0D\u6210\u65F6\uFF0C\u4EFB\u4F55\u4E00\u65B9\u5747\u53EF\u5411\u533B\u9662\u6240\u5728\u5730\u4EBA\u6C11\u6CD5\u9662\u63D0\u8D77\u8BC9\u8BBC\u3002'
                            )
                        ),
                        _react2.default.createElement(
                            'div',
                            { style: { marginTop: '.1rem' } },
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u5341\u4E00\u3001\u9644\u5219'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                '\u672C\u534F\u8BAE\u9664\u4EE5\u4E0A\u6B63\u6587\u90E8\u5206\u5916\uFF0C\u8FD8\u5305\u62EC\u5E73\u53F0\u53D1\u5E03\u7684\u5404\u9879\u670D\u52A1\u89C4\u5219\uFF0C\u5404\u9879\u670D\u52A1\u89C4\u5219\u4E0E\u672C\u534F\u8BAE\u5177\u6709\u540C\u7B49\u6CD5\u5F8B\u6548\u529B\uFF1B\u670D\u52A1\u89C4\u5219\u5305\u62EC\u4F46\u4E0D\u9650\u4E8E\u300A\u9884\u7EA6\u670D\u52A1\u89C4\u5219\u300B\u7B49\uFF1B\u300A\u9884\u7EA6\u670D\u52A1\u89C4\u5219\u300B\u4E3A\u4EE5\u4E0B\u5185\u5BB9\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold' } },
                                '11.1\u4ED8\u6B3E\u4EA4\u6613'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'a)\u7528\u6237\u9009\u62E9\u8D2D\u4E70\u5E73\u53F0\u5C55\u793A\u7684\u4F53\u68C0\u5957\u9910\u6216\u670D\u52A1\u524D\uFF0C\u5E94\u4ED4\u7EC6\u9605\u8BFB\u4F53\u68C0\u5957\u9910\u4FE1\u606F\u5C55\u793A\u9875\u9762\u7684\u6240\u6709\u4FE1\u606F\uFF0C\u4E86\u89E3\u4F53\u68C0\u5957\u9910\u4EA7\u54C1\u7684\u79CD\u7C7B\u3001\u4EF7\u683C\u3001\u6570\u91CF\u3001\u6D88\u8D39\u63D0\u793A\u7B49\u76F8\u5173\u4FE1\u606F\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'b)\u7528\u6237\u70B9\u51FB"\u7ACB\u5373\u9884\u7EA6"\u6309\u94AE\u540E\u7CFB\u7EDF\u4F1A\u81EA\u52A8\u751F\u6210\u5305\u542B\u4F53\u68C0\u5957\u9910\u540D\u79F0\u3001\u8D2D\u4E70\u6570\u91CF\u3001\u5E94\u4ED8\u603B\u989D\u3001\u6536\u8D27\u5730\u5740\uFF08\u5982\u6709\uFF09\u7B49\u4FE1\u606F\u7684\u8BA2\u5355\uFF0C\u7528\u6237\u5E94\u4ED4\u7EC6\u6838\u5BF9\u3002\u7528\u6237\u70B9\u51FB\u8BA2\u5355\u5E95\u90E8\u7684"\u652F\u4ED8"\u6309\u94AE\uFF0C\u89C6\u4E3A\u7528\u6237\u5DF2\u9605\u8BFB\u5E76\u540C\u610F\u5957\u9910\u9875\u9762\u7684\u6240\u6709\u5185\u5BB9\u5E76\u8BA4\u53EF\u8BA2\u5355\u5185\u5BB9\uFF0C\u8BA2\u5355\u5185\u5BB9\u53CA\u5957\u9910\u9875\u9762\u4FE1\u606F\u89C6\u4E3A\u7528\u6237\u4E0E\u4F53\u68C0\u673A\u6784\u4E4B\u95F4\u7684\u5408\u540C\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'c)\u7528\u6237\u63D0\u4EA4\u8BA2\u5355\u6210\u529F\u540E\uFF0C\u901A\u8FC7\u7B2C\u4E09\u65B9\u652F\u4ED8\u5DE5\u5177\u6216\u7F51\u94F6\u652F\u4ED8\u7ED9\u6BCF\u5929\u5065\u5EB7\u7684\u6B3E\u9879\uFF0C\u4E3A\u6BCF\u5929\u5065\u5EB7\u63A5\u53D7\u4F53\u68C0\u673A\u6784\u59D4\u6258\u4EE3\u6536\u7684\u6B3E\u9879\uFF0C\u7528\u6237\u4ED8\u6B3E\u5219\u89C6\u4E3A\u7528\u6237\u5DF2\u5411\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u5C65\u884C\u4E86\u4ED8\u6B3E\u4E49\u52A1\u3002\u6BCF\u5929\u5065\u5EB7\u6536\u5230\u6B3E\u9879\u540E\uFF0C\u7CFB\u7EDF\u4F1A\u81EA\u52A8\u4EE3\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u5411\u7528\u6237\u53D1\u9001\u7528\u4E8E\u5230\u9662\u4F53\u68C0\u6216\u8005\u6D88\u8D39\u7684\u77ED\u4FE1\u51ED\u8BC1\u6216\u5176\u4ED6\u7535\u5B50\u51ED\u8BC1\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold' } },
                                '11.2\u552E\u540E\u4FDD\u969C'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                '\u53D1\u751F\u4EE5\u4E0B\u60C5\u51B5\u65F6\uFF0C\u6BCF\u5929\u5065\u5EB7\u5C06\u4EE3\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u5411\u7528\u6237\u9000\u6B3E\uFF1A'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'a)\u7528\u6237\u6309\u7167\u6BCF\u5929\u5065\u5EB7\u660E\u793A\u7684\u9000\u6B3E\u89C4\u5219\uFF0C\u63D0\u51FA\u9000\u6B3E\u7533\u8BF7\u4E14\u7B26\u5408\u8981\u6C42\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'b)\u672A\u8FBE\u5230\u6700\u4F4E\u9884\u8BA2\u4EBA\u6570\uFF0C\u9020\u6210\u8BE5\u6B21\u9884\u8BA2\u672A\u6210\u529F\u7684\uFF1B'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'c)\u7528\u6237\u9884\u8BA2\u6210\u529F\u540E\uFF0C\u56E0\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u539F\u56E0\u672A\u80FD\u5728\u9884\u7EA6\u6709\u6548\u671F\u5185\u63D0\u4F9B\u670D\u52A1\u6216\u62D2\u7EDD\u63D0\u4F9B\u670D\u52A1\u7684\uFF0C\u5305\u62EC\u4F46\u4E0D\u9650\u4E8E\u4E0D\u53EF\u6297\u529B\u3001\u4F53\u68C0\u673A\u6784\u7834\u4EA7\u3001\u88AB\u76F8\u5173\u90E8\u95E8\u52D2\u4EE4\u505C\u4EA7\u505C\u4E1A\u6574\u987F\u3001\u67E5\u5C01\u3001\u540A\u9500\u8425\u4E1A\u6267\u7167\u7B49\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                'd)\u5176\u4ED6\u7B26\u5408\u5E73\u53F0\u660E\u793A\u7684\u9000\u6B3E\u653F\u7B56\u7684\u60C5\u51B5\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem' } },
                                '\u9664\u4E0A\u8FF0\u60C5\u51B5\u5916\uFF0C\u7528\u6237\u65E0\u6B63\u5F53\u7406\u7531\u63D0\u51FA\u7684\u9000\u6B3E\u7533\u8BF7\uFF0C\u5E73\u53F0\u6709\u6743\u62D2\u7EDD\u3002'
                            ),
                            _react2.default.createElement(
                                'p',
                                { style: { fontWeight: 'bold', paddingLeft: '.1rem', paddingTop: '.1rem' } },
                                '\u56E0\u5C65\u884C\u5408\u4F5C\u5408\u540C\u800C\u53D1\u751F\u4E89\u8BAE\u7684\uFF0C\u7528\u6237\u3001\u533B\u9662\u5065\u5EB7\u4F53\u68C0\u4E2D\u5FC3\uFF08\u6216\u4F53\u68C0\u76F8\u5173\u79D1\u5BA4\uFF09\u53CA\u6BCF\u5929\u5065\u5EB7\u4E09\u65B9\u5E94\u6309\u7167\u5408\u540C\u7684\u7EA6\u5B9A\u5C65\u884C\u5404\u81EA\u7684\u6743\u5229\u548C\u4E49\u52A1\uFF0C\u72EC\u7ACB\u627F\u62C5\u76F8\u5E94\u7684\u6CD5\u5F8B\u8D23\u4EFB\u3002\u82E5\u4E89\u8BAE\u7684\u7ED3\u679C\u65E0\u6CD5\u5F97\u5230\u8C03\u548C\u7684\uFF0C\u53EF\u81EA\u884C\u91C7\u53D6\u5176\u4ED6\u6CD5\u5F8B\u63AA\u65BD\u4E88\u4EE5\u89E3\u51B3\u3002'
                            )
                        )
                    ),
                    showClose && _react2.default.createElement(
                    'div',
                    { className: 'p10 tc arrow-head', onClick: this.handleClose },
                    '\u5173\u95ED',
                    _react2.default.createElement('i', { className: 'iconfont icon-xiangxia1 ml10' })
                    )
                );
            }
        });

        Protocol.propTypes = {
            isFullPage: _react2.default.PropTypes.bool,
            showClose: _react2.default.PropTypes.bool,
            onClose: _react2.default.PropTypes.func
        };
        Protocol.defaultProps = {
            isFullPage: false,
            showClose: false
        };

        exports.default = Protocol;

        /***/ }),

    /***/ 66:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(67);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/protocol/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/protocol/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 67:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".full-page {\n  position: fixed;\n  top: 0;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  padding-bottom: 50px;\n  padding-top: 20px;\n  background-color: #fff;\n  overflow: auto;\n  z-index: 2001;\n}\n.full-page .arrow-head {\n  position: fixed;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  background-color: #fff;\n}\n", ""]);

        /***/ }),

    /***/ 68:
    /***/ (function(module, exports) {

        "use strict";

        var Validator = {

            isName: function isName(name) {
                var re = /^[a-zA-Z\u4e00-\u9fa5 ]{2,20}$/;
                return re.test(name);
            },

            isEmail: function div_3(email) {
                var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                return !email || email == "" || re.test(email);
            },

            isMobile: function isMobile(mobile) {
                var re = /^1[3-9][0-9]{9}$/;
                return re.test(mobile);
            },
            isLandline: function isLandline(val) {
                //座机
                var re = /^[0-9]{3,4}-[0-9]{5,10}$/;
                return re.test(val);
            },

            idcardFormatCheck: function idcardFormatCheck(idcard) {
                var re = /^(\d{15}|\d{17}[\dXx])$/;
                return re.test(idcard);
            },

            isBlank: function isBlank(str) {
                return !str || /^\s*$/.test(str);
            },

            isAge: function isAge(age) {
                return !age || age == "" || !(!/^\d*$/.test(age) || isNaN(parseInt(age)) || age < 0 || age > 199);
            },

            isIDCard: function isIDCard(idCard) {
                // var reg = /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;
                // return reg.test(idCard);
                //15位和18位身份证号码的正则表达式
                var regIdCard = /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;

                //如果通过该验证，说明身份证格式正确，但准确性还需计算
                if (regIdCard.test(idCard)) {
                    if (idCard.length == 18) {
                        var idCardWi = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2); //将前17位加权因子保存在数组里
                        var idCardY = new Array(1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2); //这是除以11后，可能产生的11位余数、验证码，也保存成数组
                        var idCardWiSum = 0; //用来保存前17位各自乖以加权因子后的总和
                        for (var i = 0; i < 17; i++) {
                            idCardWiSum += idCard.substring(i, i + 1) * idCardWi[i];
                        }
                        var idCardMod = idCardWiSum % 11; //计算出校验码所在数组的位置
                        var idCardLast = idCard.substring(17); //得到最后一位身份证号码
                        //如果等于2，则说明校验码是10，身份证号码最后一位应该是X
                        if (idCardMod == 2) {
                            if (idCardLast == "X" || idCardLast == "x") {
                                // alert("恭喜通过验证啦！");
                                return true;
                            } else {
                                // alert("身份证号码错误！");
                                return false;
                            }
                        } else {
                            //用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
                            if (idCardLast == idCardY[idCardMod]) {
                                // alert("恭喜通过验证啦！");
                                return true;
                            } else {
                                // alert("身份证号码错误！");
                                return false;
                            }
                        }
                    }
                } else {
                    // alert("身份证格式不正确!");
                    return false;
                }
            },

            isOfficeCert: function isOfficeCert(str) {
                var reg = /^[\u4E00-\u9FA5](字第)([0-9a-zA-Z]{4,8})(号)$/;
                return reg.test(str);
            },

            isPassport: function isPassport(str) {
                var reg = /^1[45][0-9]{7}$|(^[P|p|S|s|D|d]\d{7}$)|(^[S|s|G|g]\d{8}$)|(^[Gg|Tt|Ss|Ll|Qq|Dd|Aa|Ff]\d{8}$)|(^[H|h|M|m]\d{8,10})$/;
                return reg.test(str);
            },

            isHmCard: function isHmCard(str) {
                var reg1 = /^[A-Za-z](\d{6})\([0-9aA]\)$/;
                var reg2 = /^[1|5|7][0-9]{6}\([0-9aA]\)$/;
                return reg1.test(str) || reg2.test(str);
            },

            isPassword: function isPassword(str) {
                var reg = /^\w{6,20}$/;
                return reg.test(str);
            },

            isPasswordNewRules: function isPasswordNewRules(str) {
                var reg = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!@#$%^&*()<>/,.?]{8,20}$/;
                return reg.test(str);
            },

            isNationality: function isNationality(str) {
                var reg = /^[\u4e00-\u9fa5]+$/gi;
                return reg.test(str);
            }

        };

        module.exports = Validator;

        /***/ }),

    /***/ 72:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(73);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/pages/meal/style/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/pages/meal/style/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 73:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".meal-name {\n  position: relative;\n  line-height: 0.18rem;\n  height: 0.18rem;\n  font-size: 0.16rem;\n  display: inline-block;\n  white-space: nowrap;\n  text-overflow: ellipsis;\n  overflow: hidden;\n  max-width: 100%;\n}\n.address {\n  position: relative;\n  width: 85%;\n  display: inline-block;\n  white-space: nowrap;\n  text-overflow: ellipsis;\n  overflow: hidden;\n  vertical-align: middle;\n}\n.combo-menu {\n  position: relative;\n  z-index: 5;\n  max-width: 450px;\n  margin: 0 auto;\n}\n.sex {\n  background: #fff;\n  overflow: hidden;\n  z-index: 5;\n}\n.combo-menu .choise {\n  overflow: hidden;\n  padding: 0;\n  text-align: left;\n  background: #f0f0f0;\n  position: absolute;\n  left: 0;\n  right: 0;\n  border-bottom: none;\n  -webkit-box-shadow: 3px 3px 30px rgba(0, 0, 0, 0.2);\n          box-shadow: 3px 3px 30px rgba(0, 0, 0, 0.2);\n  z-index: 1;\n  display: none;\n}\n.combo-menu .choise li {\n  padding: 0 0.1rem;\n  height: 0.45rem;\n  line-height: 0.45rem;\n  border-bottom: 1px solid #d7d7d7;\n  color: #444;\n  font-size: 0.14rem;\n  text-align: left;\n  display: block;\n  background: #f0f0f0;\n}\n.combo-menu .choise .cur {\n  color: #32c5bd;\n}\n.fixed {\n  position: fixed;\n  top: 0;\n  left: 0;\n  right: 0;\n}\n.sticky {\n  position: -webkit-sticky;\n  position: sticky;\n  top: 0;\n  z-index: 9;\n}\n.fixedForAd {\n  top: 0.42rem;\n}\ninput[type='radio'],\ninput[type='checkbox'] {\n  border: none;\n  margin-top: 0.13rem;\n  float: right;\n  background: #f0f0f0;\n}\ninput[type='radio']:checked,\ninput[type='checkbox']:checked {\n  border: none;\n  background-color: #fff;\n  background: url('/mobile/bg/radio-focus3.png') center center no-repeat;\n  -webkit-background-size: 120% 120%;\n          background-size: 120%;\n}\n.lookmore {\n  font-size: 0.12rem;\n  color: #ccc;\n  text-align: center;\n  line-height: 0.4rem;\n}\n.nomore {\n  background: url('/mobile/images/nomorebg.png') no-repeat #efeff4;\n  -webkit-background-size: 100% 100%;\n          background-size: 100%;\n}\n.pageside {\n  display: none;\n}\n.pic-show .pic-title p {\n  line-height: 1.8;\n}\n.ori-price {\n  color: #bbbec4;\n}\n.icon-wrap-man,\n.icon-wrap-woman {\n  border: 1px solid #87d9f7;\n  border-radius: 2px;\n  overflow: hidden;\n  line-height: 17px;\n}\n.icon-wrap-man span.t,\n.icon-wrap-woman span.t {\n  float: right;\n  background-color: #87d9f7;\n  color: #fff;\n  padding: 0 3px;\n}\n.icon-wrap-man .iconfont,\n.icon-wrap-woman .iconfont {\n  float: left;\n  padding: 0 3px;\n  padding-top: 4px;\n  font-size: 0.12rem;\n}\n.icon-wrap-woman {\n  border: 1px solid #edb8d7;\n}\n.icon-wrap-woman span.t {\n  background-color: #edb8d7;\n}\n.icon-wrap-currency {\n  border: 1px solid #bbbec4;\n  border-radius: 2px;\n  overflow: hidden;\n  line-height: 17px;\n}\n.icon-wrap-currency .currency {\n  padding: 0 3px;\n  color: #888;\n}\n.key-words {\n  margin: 2px 0 0 4px;\n  max-width: 180px;\n}\n.combo-label {\n  width: 100%;\n  border-bottom: 1px solid #d7d7d7;\n  background: #efeff4;\n  max-width: 450px;\n  margin: 0 auto;\n  height: 0.5rem;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n}\n.combo-label .label-left {\n  width: 80%;\n  height: 100%;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-flex-wrap: wrap;\n      -ms-flex-wrap: wrap;\n          flex-wrap: wrap;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n  overflow: hidden;\n}\n.combo-label .label-title {\n  margin: 0.1rem 0 0.1rem 0.1rem;\n  background: #fff;\n  display: inline-block;\n  text-align: center;\n  border-radius: 5px;\n  font-size: 0.13rem;\n  height: 0.3rem;\n  line-height: 0.3rem;\n  color: #495060;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  padding: 0 0.2rem;\n  position: relative;\n  overflow: hidden;\n}\n.combo-label .label-checked {\n  background: #fff !important;\n}\n.combo-label .label-reset {\n  margin-left: 0.1rem;\n  display: inline-block;\n  font-size: 0.12rem;\n}\n.combo-label .label-right {\n  width: 20%;\n  height: 100%;\n  text-align: center;\n  line-height: 0.5rem;\n  color: #80848f;\n}\n.combo-label .label-right i {\n  font-size: .12rem;\n  color: #c7c7cc;\n  margin-left: .05rem;\n}\n.label-modal {\n  width: 100%;\n  height: 100%;\n  position: fixed;\n  top: 0;\n  left: 0;\n  z-index: 8;\n  background: #495060;\n  opacity: 0.4;\n}\n.gou {\n  position: absolute;\n  right: -0.01rem;\n  bottom: -0.01rem;\n  font-size: 0.2rem;\n}\n.label-modal-body {\n  width: 80%;\n  height: 100%;\n  position: fixed;\n  top: 0;\n  right: 0;\n  z-index: 9;\n  background: #fff;\n  -webkit-transition: 0.5s ease;\n  transition: 0.5s ease;\n}\n.label-modal-body .label-body {\n  width: 100%;\n  height: 100%;\n  overflow-y: auto;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  padding: 0 0.1rem 0.52rem;\n}\n.label-modal-body .label-bot {\n  width: 100%;\n  height: 0.45rem;\n  position: absolute;\n  bottom: 0;\n  left: 0;\n  color: #fff;\n  background: #fff;\n  text-align: center;\n  line-height: 0.4rem;\n  font-size: 0.16rem;\n  padding-left: 10%;\n  padding-right: 10%;\n}\n.label-modal-body .label-bot .reset {\n  border: 1px solid #32c5bd;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  color: #32c5bd;\n}\n.label-modal-body .type {\n  margin-bottom: 0.1rem;\n}\n.label-modal-body .type-body {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-flex-wrap: wrap;\n      -ms-flex-wrap: wrap;\n          flex-wrap: wrap;\n}\n.label-modal-body .label-titles {\n  margin: 0 0 0.1rem 0.1rem;\n  background: #efefef;\n  display: inline-block;\n  text-align: center;\n  border-radius: 5px;\n  font-size: 0.14rem;\n  color: #bbbec4;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  padding: 0.05rem 0.1rem;\n  position: relative;\n  overflow: hidden;\n}\n.meals_box ._f32 {\n  font-size: .16rem;\n}\n.meals_box .meals_box_ul {\n  color: #80848f;\n  background-color: #fff;\n  height: .4rem;\n}\n.meals_box .meals_list {\n  background-color: #fff;\n  color: #bbbec4;\n}\n.meals_box .meals_list .meals_li {\n  overflow: hidden;\n}\n.meals_box .meals_list .meals_li_table {\n  display: table;\n  padding-right: .1rem;\n}\n.meals_box .meals_list .meals_li_left {\n  display: table-cell;\n  padding: .15rem;\n  width: .8rem;\n  text-align: center;\n}\n.meals_box .meals_list .meals_avatar {\n  width: .5rem;\n  height: .5rem;\n  border-radius: 50%;\n  background-color: #e9e9e9;\n  text-align: center;\n  margin: 0 auto;\n  position: relative;\n  overflow: hidden;\n}\n.meals_box .meals_list .meals_avatar img {\n  width: 86%;\n  position: absolute;\n  top: .14rem;\n  left: 7%;\n}\n.meals_box .meals_list .meals_li_right {\n  display: table-cell;\n  position: relative;\n  width: 100%;\n  vertical-align: bottom;\n  padding: .15rem 0;\n  border-bottom: 1px solid #eee;\n  overflow: hidden;\n}\n.meals_box .meals_list .meals_li_right .meal_disable {\n  position: absolute;\n  right: 0;\n  top: .35rem;\n  height: .48rem;\n  width: .48rem;\n  border: none;\n  background: url(/mobile/bg/no-use-meal.png) no-repeat;\n  -webkit-background-size: 100% 100%;\n          background-size: 100%;\n  margin-right: .05rem;\n  margin-top: -0.23rem;\n}\n.meals_box .meals_list .meals_li_right .meal_line {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-pack: justify;\n  -webkit-justify-content: space-between;\n      -ms-flex-pack: justify;\n          justify-content: space-between;\n  position: relative;\n}\n.meals_box .meals_list .meals_li_right .meal_line .pull_right {\n  margin-left: .21rem;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n}\n.meals_box .meals_list .meals_li_right .meal_line .pull_right .xiangyou {\n  color: #80848F;\n}\n.meals_box .meals_list .meals_li_right .meal_line .pull_left {\n  float: left;\n}\n.meals_box .meals_list .meals_li_right .meal_line .pull_left .meal_name {\n  color: #495060;\n  font-weight: bold;\n  padding-right: .12rem;\n}\n.meals_box .meals_list .meals_li_right .meal_line .pull_left .marriage_sign {\n  background-color: #f0aad3;\n  font-size: .12rem;\n  color: #fff;\n  border-radius: 3px;\n  padding: 0 .03rem;\n}\n.meals_box .meals_list .meals_li_right .meal_introduce {\n  overflow: hidden;\n  text-overflow: ellipsis;\n  display: -webkit-box;\n  -webkit-box-orient: vertical;\n  -webkit-line-clamp: 2;\n  margin-top: .01rem;\n}\n.meals_box .meals_list .meals_li_right .meal_price {\n  color: #32c5bd;\n  margin-top: .01rem;\n  font-weight: bold;\n}\n.meals_box .meals_list .meals_li_right .meal_displayprice {\n  color: #bbbec4;\n  font-size: 14px;\n  font-weight: normal;\n  text-decoration: line-through;\n  margin-left: 5px;\n}\n.rebateAmount {\n  background: #f6f6f6;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  padding: .01rem .1rem;\n  margin-top: .08rem;\n}\n.never-remind {\n  text-align: left;\n}\n.never-remind input[type=\"checkbox\"] {\n  float: none;\n}\n", ""]);

        /***/ }),

    /***/ 76:
    /***/ (function(module, exports) {

        module.exports = window._;

        /***/ }),

    /***/ 81:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var React = __webpack_require__(3);

        var ReturnTop = React.createClass({
            displayName: 'ReturnTop',


            getInitialState: function getInitialState() {
                this.scrollHandler = this.scrollHandler.bind(this);
                return {
                    isScroll: false,
                    show: false
                };
            },
            timer: null,
            limitHeight: 800,
            scrollHandler: function scrollHandler() {
                var _this = this;

                var hideAfterScroll = this.props.hideAfterScroll,
                    scrollTop = $(window).scrollTop();

                clearTimeout(this.timer);
                if (scrollTop > this.limitHeight) {
                    this.setState({
                        show: true,
                        isScroll: hideAfterScroll ? true : false
                    }, function () {
                        if (_this.state.isScroll) {
                            _this.timer = setTimeout(function () {
                                _this.setState({
                                    isScroll: false
                                });
                            }, 100);
                        }
                    });
                } else {
                    this.setState({
                        show: false,
                        isScroll: false
                    });
                }
            },

            componentDidMount: function componentDidMount() {

                $(window).on('scroll', this.scrollHandler);

                /*
	        var limitHeight = 800;
	        $(window).scroll(() => {
	            if ($(window).scrollTop() > limitHeight && !this.state.show) {
	                this.setState({
	                    show: true
	                });
	            } else if ($(window).scrollTop() < limitHeight && this.state.show) {
	                this.setState({
	                    show: false
	                });
	            }
	        });
	        */
            },
            componentWillUnmount: function componentWillUnmount() {
                clearTimeout(this.timer);
                $(window).off('scroll', this.scrollHandler);
            },
            render: function render() {
                // if (!this.state.show) {
                //     return null;
                // }
                var iconStyle = {};
                if (!this.state.show) {
                    iconStyle.right = 0;
                    iconStyle.transform = 'translateX(110%)';
                } else {
                    if (this.props.hideAfterScroll && this.state.isScroll) {
                        iconStyle.right = 0;
                        iconStyle.transform = 'translateX(50%)';
                    }
                }

                return React.createElement('a', { href: 'javascript:scroll(0,0)', className: 'returntop-icon iconfont icon-fanhuidingbu2 mainbackground', style: iconStyle });
            }

        });
        ReturnTop.propTypes = {
            hideAfterScroll: React.PropTypes.bool
        };
        ReturnTop.defaultProps = {
            hideAfterScroll: true
        };

        module.exports = ReturnTop;

        /***/ }),

    /***/ 136:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _index = __webpack_require__(137);

        var _index2 = _interopRequireDefault(_index);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var NaireModal = _react2.default.createClass({
            displayName: 'NaireModal',
            questionnaireSubmit: function questionnaireSubmit(answers) {
                this.createNewNaire(answers);
            },
            createNewNaire: function createNewNaire(answers) {
                var _this = this;

                var _props = this.props,
                    hospitalId = _props.hospitalId,
                    surveyId = _props.surveyId,
                    orderNum = _props.orderNum;

                var crePms = {
                    surveyId: surveyId,
                    hospitalId: hospitalId
                };
                if (orderNum) crePms.orderNum = orderNum; // 如果有订单号，是订单关联的问卷，加上订单号
                $.ajax({
                    url: '/diagnosis/createAccountSurvey',
                    type: 'POST',
                    dataType: 'json',
                    data: crePms
                }).done(function (response) {
                    var accountSurveyId = response.id;
                    var orderNum = _this.props.orderNum;


                    var pms = {
                        answers: JSON.stringify(answers),
                        accountSurveyId: accountSurveyId
                    };
                    if (orderNum) pms.orderNum = orderNum; // 如果有订单号，是订单关联的问卷，加上订单号
                    $.ajax({
                        url: '/diagnosis/finishSurvey',
                        type: 'POST',
                        dataType: 'json',
                        data: pms
                    }).then(function (res) {
                        _this.props.onSaveDone();
                    });
                });
            },
            render: function render() {
                var _this2 = this;

                var _props2 = this.props,
                    hospitalId = _props2.hospitalId,
                    surveyId = _props2.surveyId;

                return _react2.default.createElement(
                    'div',
                    null,
                    _react2.default.createElement(
                        'div',
                        { className: 'naire-wrap' },
                        _react2.default.createElement(_index2.default, { onSubmit: function onSubmit(answers) {
                                _this2.questionnaireSubmit(answers);
                            }, hospitalId: hospitalId, surveyId: surveyId })
                    )
                );
            }
        });

        NaireModal.propTypes = {
            hospitalId: _react2.default.PropTypes.any,
            surveyId: _react2.default.PropTypes.any,
            orderNum: _react2.default.PropTypes.any
        };

        exports.default = NaireModal;

        /***/ }),

    /***/ 137:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        Object.defineProperty(exports, "__esModule", {
            value: true
        });

        var _button = __webpack_require__(38);

        var _button2 = _interopRequireDefault(_button);

        var _message = __webpack_require__(39);

        var _message2 = _interopRequireDefault(_message);

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        var _index = __webpack_require__(138);

        var _index2 = _interopRequireDefault(_index);

        __webpack_require__(141);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var dialog = _message2.default.dialog;

        var surveyType = TJ.getUrlParam('surveyType') || '';
        var IsHealthyConditionSurveyType = TJ.isHealthyConditionSurveyType(surveyType);
        var isIphone11 = /iphone/gi.test(navigator.userAgent) && window.screen.height === 896 && window.screen.width === 414;
        var changeTiming = void 0;
        var EpidemicQuestionnaire = _react2.default.createClass({
            displayName: 'EpidemicQuestionnaire',

            getInitialState: function getInitialState() {
                return {
                    surveyId: this.props.surveyId,
                    survey: {},
                    answerList: [],
                    hospitalId: this.props.hospitalId,
                    quesList: [],
                    questionLevel: ''
                };
            },
            componentWillMount: function componentWillMount() {
                this.getQuesList();
            },
            componentWillReceiveProps: function componentWillReceiveProps(nextProps) {
                var ans = nextProps.defaultAnswers;
                if (ans && ans.length > 0 && this.state.quesList.length > 0) {
                    this.setDefaultCheck(ans);
                }
            },


            // 特殊设置互相排斥的选项
            setCheckGroup: function setCheckGroup(list) {
                // 兼容答案为空的情况
                list = list.map(function (ques) {
                    ques.answers = ques.answers || [];
                    return ques;
                });

                list = list.map(function (ques) {
                    // 多选题,"无"和其它选项互斥
                    if (ques.type === 2) {
                        ques.answers = ques.answers.map(function (ans) {
                            if (ans.content === '无') {
                                ans.checkGroupId = 1;
                            } else {
                                ans.checkGroupId = 2;
                            }
                            return ans;
                        });
                    }
                    return ques;
                });
                return list;
            },
            getQuesList: function getQuesList() {
                var _this = this;

                var _state = this.state,
                    surveyId = _state.surveyId,
                    hospitalId = _state.hospitalId;

                $.ajax({
                    url: '/diagnosis/questions?hospitalId=' + hospitalId + '&surveyId=' + surveyId,
                    type: 'GET',
                    dataType: 'json'
                }).done(function (response) {
                    _this.setState({ quesList: _this.setCheckGroup(response.list), survey: response.survey, answerList: response.answers }, function () {
                        var cacheAnswer = localStorage.getItem('epidemicQuestionAnswer');
                        if (_this.props.defaultAnswers.length > 0 || cacheAnswer) {
                            _this.setDefaultCheck(_this.props.defaultAnswers || JSON.parse(cacheAnswer));
                        }
                    });
                });
            },
            setDefaultCheck: function setDefaultCheck(lastAnswers) {
                if (lastAnswers.length === 0) return;
                var quesList = this.state.quesList;

                var quesMap = TJ.arrayToHash(lastAnswers, 'questionId');
                quesList = this.setDefaultQues(quesList, quesMap);
                this.setState(quesList);
            },
            setDefaultQues: function setDefaultQues(quesList, quesMap) {
                var _this2 = this;

                quesList = quesList.map(function (que) {
                    var cacheQues = quesMap[que.id] || {};
                    // 文本题
                    if ([3, 4].indexOf(que.type) > -1) {
                        que.textAnswer = (cacheQues.answerContents || [])[0] || '';
                        return que;
                    }
                    que.answers = que.answers.map(function (ans) {
                        ans.checked = (cacheQues.answerIds || []).indexOf(ans.id) > -1;
                        if (ans.checked && ans.type === 2) {
                            // 选项附加输入框
                            que.showInput = ans.id;
                            que.textAnswer = cacheQues.answerContents ? cacheQues.answerContents[0] : '';
                        }

                        if (ans.childQuestions) {
                            ans.childQuestions = _this2.setDefaultQues(ans.childQuestions, quesMap);
                        }

                        return ans;
                    });
                    return que;
                });
                return quesList;
            },

            // 递归找到父问题，再设置输入内容
            setChildQuestionIpt: function setChildQuestionIpt(quesList, selectQues, inputVal, parentQues) {
                var _this3 = this;

                quesList = quesList.map(function (q) {
                    if (!q.answers) return q;
                    if (q.id === parentQues.id) {
                        q.answers = q.answers.map(function (ans) {
                            if (!ans.childQuestions) return ans;
                            ans.childQuestions = ans.childQuestions.map(function (cq) {
                                if (cq.id === selectQues.id) {
                                    cq.textAnswer = inputVal;
                                }
                                return cq;
                            });
                            return ans;
                        });
                    } else {
                        q.answers = q.answers.map(function (ans) {
                            if (!ans.childQuestions) return ans;
                            ans.childQuestions = _this3.setChildQuestionIpt(ans.childQuestions, selectQues, inputVal, parentQues);
                            return ans;
                        });
                    }
                    return q;
                });
                return quesList;
            },
            handleIpt: function handleIpt(e, selectQues, parentQues) {
                var _this4 = this;

                var quesList = this.state.quesList;

                var val = e.target.value.trim();
                if (parentQues) {
                    // 先找到父问题,再在父问题的答案中找到当前回答的子问题,设置它的选中状态
                    this.setChildQuestionIpt(quesList, selectQues, val, parentQues);
                } else {
                    quesList = quesList.map(function (q) {
                        if (q.id === selectQues.id) {
                            q.textAnswer = val;
                        }
                        return q;
                    });
                }

                this.setState(quesList, function () {
                    if (changeTiming) {
                        clearTimeout(changeTiming);
                    }
                    changeTiming = setTimeout(function () {
                        _this4.triggerChg(quesList);
                    }, 800);
                });
            },
            handleStar: function handleStar(score, selectQues, parentQues) {
                var event = { target: { value: score } };
                this.handleIpt(event, selectQues, parentQues);
            },

            // 递归找到父问题，设置选中
            setChildQuestionChecked: function setChildQuestionChecked(quesList, selectQues, selectAns, parentQues) {
                var _this5 = this;

                quesList = quesList.map(function (q) {
                    if (!q.answers) return q;
                    if (q.id === parentQues.id) {
                        q.answers = q.answers.map(function (ans) {
                            if (!ans.childQuestions) return ans;
                            ans.childQuestions = ans.childQuestions.map(function (cq) {
                                if (cq.id === selectQues.id) {
                                    cq = _this5.setQuestionChecked(cq, selectAns);
                                }
                                return cq;
                            });
                            return ans;
                        });
                    } else {
                        q.answers = q.answers.map(function (ans) {
                            if (!ans.childQuestions) return ans;
                            ans.childQuestions = _this5.setChildQuestionChecked(ans.childQuestions, selectQues, selectAns, parentQues);
                            return ans;
                        });
                    }
                    return q;
                });
                return quesList;
            },
            handleCheck: function handleCheck(event, selectQues, selectAns, parentQues) {
                var _this6 = this;

                event.stopPropagation();
                var quesList = this.state.quesList;

                if (parentQues) {
                    this.setChildQuestionChecked(quesList, selectQues, selectAns, parentQues);
                } else {
                    quesList = quesList.map(function (q) {
                        if (q.id === selectQues.id) {
                            q = _this6.setQuestionChecked(q, selectAns);
                        }
                        return q;
                    });
                }
                this.setState(quesList, function () {
                    _this6.triggerChg(quesList);
                });
            },
            triggerChg: function triggerChg(quesList) {
                var anss = this.assembleAnswer([], quesList);
                anss = anss.filter(function (ans) {
                    var hasAnswerId = ans.answerIds && ans.answerIds[0];
                    var hasAnsContent = ans.answerContents && ans.answerContents[0];
                    return hasAnswerId || hasAnsContent;
                });
                if (this.props.onChange) this.props.onChange(anss);
            },
            setQuestionChecked: function setQuestionChecked(ques, selectAns) {
                // 如果是单选,先清空之前的选择
                if (ques.type === 1) {
                    ques.answers = ques.answers.map(function (ite) {
                        ite.checked = false;
                        return ite;
                    });
                }

                // 如果是多选 && 即将选中 && 有划分"互相排斥"的组别.  比如当前选项和其它选项不能同时选择
                if (ques.type === 2 && !selectAns.checked && selectAns.checkGroupId) {
                    ques.answers = ques.answers.map(function (ans) {
                        if (selectAns.checkGroupId !== ans.checkGroupId) {
                            ans.checked = false;
                            // 对应的子题也取消选中
                            if (ans.childQuestions && ans.childQuestions.answers) {
                                ans.childQuestions.answers = ans.childQuestions.answers.map(function (childAns) {
                                    childAns.checked = false;
                                    return childAns;
                                });
                            }
                        }
                        return ans;
                    });
                }

                ques.answers = ques.answers.map(function (ans) {
                    if (ans.id === selectAns.id) {
                        ans.checked = !ans.checked;
                        // 如果是选择需要附加输入框的答案, 出现输入框, answer.type === 2
                        if (ques.answers.some(function (a) {
                            return a.type === 2;
                        })) {
                            if (ans.checked && ans.type === 2) {
                                ques.showInput = ans.id;
                            } else {
                                ques.showInput = '';
                                ques.textAnswer = '';
                            }
                        }
                    }
                    return ans;
                });

                return ques;
            },
            validate: function validate() {
                var errMsg = '';
                var quesList = this.state.quesList;

                var nullQues = [];
                this.getNullQues(quesList, nullQues);
                if (nullQues.length > 0) {
                    errMsg = '\u8BF7\u56DE\u7B54\u7B2C' + nullQues.join('、') + '\u9898';
                }
                return errMsg;
            },
            getNullQues: function getNullQues(quesList, nullQues, paIdx) {
                var _this7 = this;

                quesList.forEach(function (que, idx) {
                    var noAnswer = false;
                    if ([3, 4].indexOf(que.type) > -1) {
                        // 文本题
                        noAnswer = !que.textAnswer;
                    } else {
                        var checkAnsList = (que.answers || []).filter(function (ite) {
                            return ite.checked;
                        });
                        if (checkAnsList.length > 0) {
                            checkAnsList.forEach(function (ans) {
                                _this7.getNullQues(ans.childQuestions || [], nullQues, idx + 1);
                            });
                        }

                        noAnswer = checkAnsList.length === 0;
                    }
                    if (que.mustAnswer && noAnswer) {
                        nullQues.push(paIdx ? paIdx + '-' + (idx + 1) : idx + 1);
                    }
                });
            },
            assembleAnswer: function assembleAnswer(answerList, quesList) {
                var _this8 = this;

                quesList.forEach(function (item) {
                    var result = {};
                    result.questionId = item.id;
                    if ([3, 4].indexOf(item.type) > -1) {
                        // 文本问题
                        result.answerContents = [item.textAnswer || ''];
                        result.answerIds = [''];
                    } else {
                        var checkedAnsList = item.answers.filter(function (ite) {
                            return ite.checked;
                        });
                        result.answerIds = checkedAnsList.map(function (ans) {
                            return ans.id;
                        });
                        if (item.textAnswer) {
                            result.answerContents = [item.textAnswer];
                        }

                        // 如果有子问题，加上子问题及答案id
                        if (checkedAnsList.length > 0) {
                            checkedAnsList.map(function (an) {
                                if (an.childQuestions) {
                                    _this8.assembleAnswer(answerList, an.childQuestions);
                                }
                            });
                        }
                    }
                    answerList.push(result);
                });
                return answerList;
            },
            close: function close() {
                if (this.props.onClose) this.props.onClose();
            },
            submit: function submit() {
                var errors = this.validate();
                if (!!errors) {
                    return dialog.show({ message: errors });
                }
                var _state2 = this.state,
                    quesList = _state2.quesList,
                    surveyId = _state2.surveyId;

                var answers = [];
                answers = this.assembleAnswer(answers, quesList);

                // Storage.set('epidemicQuestionPassIn10', true, 10 * 60 * 1000) // 10分钟之内不用再答问卷
                // localStorage.setItem('epidemicQuestionAnswer', JSON.stringify(answers))
                // 如果是 健康情况调查 问卷，则跳过校验
                if (!IsHealthyConditionSurveyType && this.getAnswerAdvice(answers)) {
                    this.setState({ questionLevel: '您当前的情况不符合体检条件' });
                } else {
                    this.toNextPage(answers);
                }
            },
            toNextPage: function toNextPage(answers) {
                this.props.onSubmit(answers);
            },
            getAnswerAdvice: function getAnswerAdvice(selectAnswers) {
                var answerList = this.state.answerList;

                var ansMap = TJ.arrayToHash(answerList);
                var advice = '';
                selectAnswers.forEach(function (ques) {
                    ques.answerIds.forEach(function (ansId) {
                        if (ansMap[ansId] && ansMap[ansId].advice && ansMap[ansId].advice === '不可以体检') {
                            advice = ansMap[ansId].advice;
                        }
                    });
                });
                return advice;
            },
            goHome: function goHome() {
                window.location.href = TJ.tourl('/welcome');
            },
            renderQuestion: function renderQuestion(ques, idx, parentQues) {
                var _this9 = this;

                ques.series = idx + 1;
                return _react2.default.createElement(
                    'div',
                    { className: 'ques ' + (parentQues ? 'bdr-l bg-light-gray' : 'bg-wt'), key: idx },
                    _react2.default.createElement(
                        'div',
                        { className: 'f16 b tl' },
                        ques.mustAnswer && _react2.default.createElement(
                        'span',
                        { className: 'c-red mr5 b' },
                        '*'
                        ),
                        ' ',
                        parentQues && parentQues.series + '-',
                        idx + 1,
                        '. ',
                        ques.content,
                        ques.type === 2 && _react2.default.createElement(
                        'span',
                        { className: 'tag tag0 ml5' },
                        '\u591A\u9009'
                        )
                    ),
                    ques.type === 3 && _react2.default.createElement(
                    'div',
                    { className: 'mt10' },
                    _react2.default.createElement('input', {
                        className: 'mt-ipt',
                        type: 'text',
                        maxLength: '300',
                        value: ques.textAnswer,
                        onChange: function onChange(e) {
                            _this9.handleIpt(e, ques, parentQues);
                        },
                        placeholder: '请输入答案'
                    })
                    ),
                    ques.type === 4 && _react2.default.createElement(
                    'div',
                    { className: 'mt10' },
                    _react2.default.createElement(_index2.default, { onChange: function onChange(e) {
                            _this9.handleStar(e, ques, parentQues);
                        } })
                    ),
                    [1, 2].indexOf(ques.type) > -1 && _react2.default.createElement(
                    'div',
                    { className: 'mt10 tl' },
                    (ques.answers || []).map(function (ans, i) {
                        var showIpt = ques.showInput === ans.id;
                        return _react2.default.createElement(
                            'div',
                            { className: 'ans-wrap inline ' + (showIpt && 'pct100'), key: i },
                            ques.type === 1 && _react2.default.createElement(
                            'div',
                            { className: 'radio-box', onClick: function onClick(e) {
                                    _this9.handleCheck(e, ques, ans, parentQues);
                                } },
                            _react2.default.createElement('span', { className: 'radio-icon ' + (ans.checked && 'checked mainbackground') }),
                            _react2.default.createElement(
                                'span',
                                { className: 'ml5' },
                                ans.content
                            )
                            ),
                            ques.type === 2 && _react2.default.createElement(
                            'div',
                            { onClick: function onClick(e) {
                                    _this9.handleCheck(e, ques, ans, parentQues);
                                }, className: 'ans ' + (ans.checked ? 'mainbackground checked' : 'bg-wt') },
                            ans.content
                            ),
                            showIpt && _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement('input', {
                                className: 'mt-ipt',
                                type: 'text',
                                maxLength: '300',
                                value: ques.textAnswer,
                                onChange: function onChange(e) {
                                    _this9.handleIpt(e, ques, parentQues);
                                },
                                placeholder: '请输入内容'
                            })
                            ),
                            ans.checked && !!ans.tips && _react2.default.createElement(
                            'div',
                            { style: { color: 'red' } },
                            ' ',
                            ans.tips,
                            ' '
                            )
                        );
                    }),
                    (ques.answers || []).map(function (ans, i) {
                        return ans.checked && ans.childQuestions && _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement(
                                'div',
                                { className: 'c-gray tl' },
                                '\u8BF7\u56DE\u7B54\u4EE5\u4E0B\u5173\u8054\u95EE\u9898\uFF1A'
                            ),
                            ans.childQuestions.map(function (childQues, cidx) {
                                return _this9.renderQuestion(childQues, cidx, ques);
                            })
                        );
                    })
                    )
                );
            },
            render: function render() {
                var _this10 = this;

                var _state3 = this.state,
                    quesList = _state3.quesList,
                    questionLevel = _state3.questionLevel,
                    survey = _state3.survey;
                var _props = this.props,
                    showHeader = _props.showHeader,
                    showReturn = _props.showReturn;

                if (questionLevel !== '') {
                    return _react2.default.createElement(
                        'div',
                        null,
                        showHeader && _react2.default.createElement(
                        'div',
                        { className: 'p10 bdr-b hed tc' },
                        _react2.default.createElement(
                            'span',
                            { className: 'b f16' },
                            survey.title || '疫情问卷'
                        ),
                        _react2.default.createElement('a', { className: 'iconfont icon-shouye mt-header-icon-home fr', href: 'javascript:;', onClick: this.goHome })
                        ),
                        _react2.default.createElement(
                            'div',
                            { className: 'tc pt30 c-gray' },
                            questionLevel
                        )
                    );
                }
                return _react2.default.createElement(
                    'div',
                    { className: 'ques-wrap' },
                    showHeader && _react2.default.createElement(
                    'div',
                    { className: 'p10 bdr-b hed tc' },
                    _react2.default.createElement(
                        'span',
                        { className: 'b f16' },
                        survey.title || '疫情问卷'
                    ),
                    _react2.default.createElement('a', { className: 'iconfont icon-shouye mt-header-icon-home fr', href: 'javascript:;', onClick: this.goHome })
                    ),
                    _react2.default.createElement(
                        'div',
                        null,
                        quesList.map(function (ques, idx) {
                            return _this10.renderQuestion(ques, idx);
                        })
                    ),
                    _react2.default.createElement(
                        'div',
                        { className: 'flex-foot bdr-t' },
                        _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement(
                                _button2.default,
                                { type: 'primary', className: 'mainbackground', onClick: this.submit },
                                '\u63D0\u4EA4'
                            )
                        ),
                        showReturn && _react2.default.createElement(
                        'div',
                        null,
                        _react2.default.createElement(
                            _button2.default,
                            { onClick: this.close },
                            '\u53D6\u6D88'
                        )
                        )
                    ),
                    _react2.default.createElement(_message2.default, null)
                );
            }
        });

        EpidemicQuestionnaire.propTypes = {
            surveyId: _react2.default.PropTypes.any.isRequired,
            hospitalId: _react2.default.PropTypes.any,
            defaultAnswers: _react2.default.PropTypes.array,
            showHeader: _react2.default.PropTypes.bool,
            showReturn: _react2.default.PropTypes.bool,
            onSubmit: _react2.default.PropTypes.func
        };

        EpidemicQuestionnaire.defaultProps = {
            surveyId: 0,
            hospitalId: 0,
            showHeader: true,
            showReturn: false,
            defaultAnswers: []
        };

        exports.default = EpidemicQuestionnaire;

        /***/ }),

    /***/ 138:
    /***/ (function(module, exports, __webpack_require__) {

        "use strict";

        __webpack_require__(139);

        var React = __webpack_require__(3);


        var Rate = React.createClass({
            displayName: "Rate",

            getInitialState: function getInitialState() {
                return {
                    rate: 0
                };
            },

            componentDidMount: function componentDidMount() {},
            clickStar: function clickStar(index) {
                var _this = this;

                this.setState({ rate: index }, function () {
                    _this.props.onChange((index / 2).toFixed(1));
                });
            },


            render: function render() {
                var _this2 = this;

                return React.createElement(
                    "div",
                    { className: "rate-type" },
                    this.state.rate > 0 && React.createElement(
                    "div",
                    { className: "rates" },
                    this.state.rate / 2,
                    "\u5206"
                    ),
                    React.createElement(
                        "div",
                        { className: "rate-con" },
                        [1, 1, 1, 1, 1].map(function (i, index) {
                            return React.createElement(
                                "div",
                                { className: "part" },
                                React.createElement(
                                    "div",
                                    { className: "first", onClick: function onClick() {
                                            return _this2.clickStar(index * 2 + 1);
                                        } },
                                    React.createElement("i", { className: "iconfont icon-yikexing def" + (_this2.state.rate >= index * 2 + 1 ? ' star' : '') })
                                ),
                                React.createElement(
                                    "div",
                                    { className: "second", onClick: function onClick() {
                                            return _this2.clickStar((index + 1) * 2);
                                        } },
                                    React.createElement("i", { className: "iconfont icon-yikexing def" + (_this2.state.rate >= (index + 1) * 2 ? ' star' : '') })
                                )
                            );
                        })
                    )
                );
            }
        });

        module.exports = Rate;

        /***/ }),

    /***/ 139:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(140);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/starRate/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/starRate/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 140:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".rate-type .rates {\n  width: 100%;\n  font-weight: bold;\n  font-size: .16rem;\n  text-align: center;\n  margin-bottom: .12rem;\n  line-height: 1.2;\n}\n.rate-type .rate-con {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-pack: center;\n  -webkit-justify-content: center;\n      -ms-flex-pack: center;\n          justify-content: center;\n}\n.rate-type .rate-con .part {\n  margin-right: .2rem;\n  width: .24rem;\n  height: .24rem;\n  position: relative;\n}\n.rate-type .rate-con .part:last-child {\n  margin-right: 0;\n}\n.rate-type .rate-con .part .def {\n  color: #E9EAEC;\n  font-size: .24rem;\n}\n.rate-type .rate-con .part .star {\n  -webkit-text-fill-color: transparent;\n  -webkit-background-clip: text;\n          background-clip: text;\n  background-image: -webkit-gradient(linear, left top, right top, from(#FFD05E), to(#FFC339));\n  background-image: -webkit-linear-gradient(left, #FFD05E, #FFC339);\n  background-image: linear-gradient(to right, #FFD05E, #FFC339);\n}\n.rate-type .rate-con .part .first {\n  position: absolute;\n  left: 0;\n  top: 0;\n  width: 50%;\n  height: 100%;\n  overflow: hidden;\n}\n", ""]);

        /***/ }),

    /***/ 141:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(142);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/epidemicQuestionnaire/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/epidemicQuestionnaire/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 142:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".ques-wrap {\n  padding-bottom: .7rem;\n  background-color: #eee;\n}\n.ques {\n  padding: .2rem .1rem;\n}\n.ques + .ques {\n  margin-top: .1rem;\n}\n.ans-wrap:not(.inline) + .ans-wrap {\n  margin-top: .1rem;\n}\n.ans-wrap.inline {\n  display: inline-block;\n  margin-right: .1rem;\n  margin-top: .05rem;\n  min-width: .6rem;\n  vertical-align: top;\n}\n.ans {\n  position: relative;\n  display: inline-block;\n  border: 1px solid #d6d6d6;\n  border-radius: 5px;\n  padding: .06rem .1rem;\n}\n.ans.checked {\n  color: #fff;\n}\n.ans.checked .check-icon-wrap {\n  display: inline-block;\n}\n.hed {\n  background: #fff;\n}\n.hed .icon-shouye {\n  position: absolute;\n  right: .1rem;\n  background: #fff;\n  padding-left: .1rem;\n}\n.flex-foot {\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  padding: .1rem .1rem;\n  -webkit-box-pack: justify;\n  -webkit-justify-content: space-between;\n      -ms-flex-pack: justify;\n          justify-content: space-between;\n  position: fixed;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  font-size: .18rem;\n  text-align: center;\n  background: #fff;\n}\n.flex-foot > div {\n  -webkit-box-flex: 1;\n  -webkit-flex: 1;\n      -ms-flex: 1;\n          flex: 1;\n}\n.radio-box {\n  display: inline-block;\n  line-height: .3rem;\n}\n.radio-box + .radio-box {\n  margin-left: .1rem;\n}\n.naire-wrap {\n  position: fixed;\n  overflow: auto;\n  z-index: 10;\n  top: 0;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  background: #fff;\n  z-index: 100;\n}\n.mt-ipt {\n  width: 100%;\n  height: .4rem;\n  line-height: .4rem;\n  border: 1px solid #d6d6d6;\n  border-radius: 5px;\n  padding-left: .1rem;\n  font-size: .15rem;\n}\n", ""]);

        /***/ }),

    /***/ 147:
    /***/ (function(module, exports, __webpack_require__) {

        module.exports = function(cb) {
            __webpack_require__.e/* nsure */(16, function(require) {
                cb(__webpack_require__(82));
            });
        }

        /***/ }),

    /***/ 369:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        __webpack_require__(370);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        /**
         * 铭医，咨询医生
         */

        var MingyiShareBackBtn = _react2.default.createClass({
            displayName: 'MingyiShareBackBtn',

            getInitialState: function getInitialState() {
                return {};
            },

            toChat: function toChat() {
                $.getter('/getRebackUrl', { shareId: TJ.getUrlParam('myShareId') }).done(function (res) {
                    if (res.rebackUrl) {
                        window.location.href = res.rebackUrl;
                    }
                }).fail(function () {
                    dialog.show({ message: '分享失败' });
                });
            },
            render: function render() {
                var _this = this;

                return _react2.default.createElement(
                    'div',
                    null,
                    location.href.indexOf('myShareId') > -1 ? _react2.default.createElement(
                        'div',
                        null,
                        _react2.default.createElement(
                            'div',
                            { className: 'doc-chat', onClick: function onClick() {
                                    return _this.toChat();
                                } },
                            _react2.default.createElement('img', { src: '/mobile/images/mingyi-back-chat.png' })
                        )
                    ) : null
                );
            }
        });

        module.exports = MingyiShareBackBtn;

        /***/ }),

    /***/ 370:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(371);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/components/mingyiShareBackBtn/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/components/mingyiShareBackBtn/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 371:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".doc-chat {\n  position: fixed;\n  left: .1rem;\n  bottom: .6rem;\n  width: .5rem;\n  z-index: 9999;\n}\n.doc-chat .img {\n  width: 100%;\n}\n", ""]);

        /***/ }),

    /***/ 372:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        __webpack_require__(373);

        var React = __webpack_require__(3);


        var ReturnTop = React.createClass({
            displayName: 'ReturnTop',

            getInitialState: function getInitialState() {
                return {
                    show: false
                };
            },
            componentWillMount: function componentWillMount() {
                // 只有每天健康才有此活动
                if (TJ_PROFILE.site === '/mt') {
                    var myDate = TJ.format('yyyy-MM-dd', new Date());
                    if (myDate > '2019-03-31') {
                        // console.log('活动已结束')
                        return;
                    }
                    this.setState({ show: true });
                }
            },
            hideWindowAndTransfer: function hideWindowAndTransfer() {
                window.location = TJ.tourl('/activitytemp/a38');
            },


            render: function render() {
                if (!this.state.show) {
                    return null;
                }
                return React.createElement(
                    'div',
                    { className: 'activity38 f12', onClick: this.hideWindowAndTransfer },
                    React.createElement('img', { src: '/mobile/bg/38activity-floating-window.png' })
                );
            }
        });

        module.exports = ReturnTop;

        /***/ }),

    /***/ 373:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(374);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/style/activity38.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/style/activity38.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 374:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".activity38 {\n  width: 1rem;\n  height: 1rem;\n  border-radius: 50%;\n  position: fixed;\n  bottom: .6rem;\n  right: .1rem;\n  line-height: .5rem;\n  color: #fff;\n  text-align: center;\n}\n", ""]);

        /***/ }),

    /***/ 412:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

        var _reactDraggable = __webpack_require__(413);

        var _reactDraggable2 = _interopRequireDefault(_reactDraggable);

        var _Header = __webpack_require__(15);

        __webpack_require__(417);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        var React = __webpack_require__(3);

        var BackToHome2 = __webpack_require__(419);

        var Scan = React.createClass({
            displayName: 'Scan',

            getInitialState: function getInitialState() {
                return {
                    dragging: false
                };
            },
            onStart: function onStart() {
                this.setState({ dragging: true });
                $('body').addClass('oyh');
            },
            onStop: function onStop() {
                this.setState({ dragging: false });
                $('body').removeClass('oyh');
            },
            handlePreventTouchmoveWhenDrag: function handlePreventTouchmoveWhenDrag(event) {
                if (this.state.dragging) {
                    event.preventDefault();
                }
            },

            componentWillMount: function componentWillMount() {
                !this.props.hideAfterScroll && window.document.body.removeEventListener('touchmove', this.handlePreventTouchmoveWhenPanning, {
                    passive: false
                });
            },
            componentDidMount: function componentDidMount() {
                !this.props.hideAfterScroll && window.document.body.addEventListener('touchmove', this.handlePreventTouchmoveWhenDrag, {
                    passive: false
                });
            },
            toHome: function toHome() {
                window.location.href = TJ.tourl('/welcome');
            },

            render: function render() {
                if (!_Header.hideHeader) return null;
                if (this.props.hideAfterScroll) {
                    return React.createElement(BackToHome2, this.props);
                }
                var dragHandlers = { onStart: this.onStart, onStop: this.onStop };
                var prps = this.props;
                return React.createElement(
                    _reactDraggable2.default,
                    dragHandlers,
                    React.createElement(
                        'div',
                        _extends({ className: 'back-to-home mainbackground', onClick: this.toHome }, prps),
                        React.createElement(
                            'div',
                            null,
                            '\u56DE\u5230'
                        ),
                        React.createElement(
                            'div',
                            null,
                            '\u9996\u9875'
                        )
                    )
                );
            }
        });

        Scan.propTypes = {
            hideAfterScroll: React.PropTypes.bool
        };
        Scan.defaultProps = {
            hideAfterScroll: true
        };

        module.exports = Scan;

        /***/ }),

    /***/ 413:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        module.exports = __webpack_require__(414);

        /***/ }),

    /***/ 414:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var React = __webpack_require__(3);
        var emptyFunction = function emptyFunction() {};
        var assign = __webpack_require__(415);
        var classNames = __webpack_require__(416);

        //
        // Helpers. See Element definition below this section.
        //

        function createUIEvent(draggable) {
            // State changes are often (but not always!) async. We want the latest value.
            var state = draggable._pendingState || draggable.state;
            return {
                node: draggable.getDOMNode(),
                position: {
                    top: state.clientY,
                    left: state.clientX
                }
            };
        }

        function canDragY(draggable) {
            return draggable.props.axis === 'both' || draggable.props.axis === 'y';
        }

        function canDragX(draggable) {
            return draggable.props.axis === 'both' || draggable.props.axis === 'x';
        }

        function isFunction(func) {
            return typeof func === 'function' || Object.prototype.toString.call(func) === '[object Function]';
        }

        // @credits https://gist.github.com/rogozhnikoff/a43cfed27c41e4e68cdc
        function findInArray(array, callback) {
            for (var i = 0, length = array.length; i < length; i++) {
                if (callback.apply(callback, [array[i], i, array])) return array[i];
            }
        }

        function matchesSelector(el, selector) {
            var method = findInArray(['matches', 'webkitMatchesSelector', 'mozMatchesSelector', 'msMatchesSelector', 'oMatchesSelector'], function (method) {
                return isFunction(el[method]);
            });

            return el[method].call(el, selector);
        }

        // @credits: http://stackoverflow.com/questions/4817029/whats-the-best-way-to-detect-a-touch-screen-device-using-javascript/4819886#4819886
        /* Conditional to fix node server side rendering of component */
        if (typeof window === 'undefined') {
            // Do Node Stuff
            var isTouchDevice = false;
        } else {
            // Do Browser Stuff
            var isTouchDevice = 'ontouchstart' in window || // works on most browsers
                'onmsgesturechange' in window; // works on ie10 on ms surface
        }

        // look ::handleDragStart
        //function isMultiTouch(e) {
        //  return e.touches && Array.isArray(e.touches) && e.touches.length > 1
        //}

        /**
         * simple abstraction for dragging events names
         * */
        var dragEventFor = function () {
            var eventsFor = {
                touch: {
                    start: 'touchstart',
                    move: 'touchmove',
                    end: 'touchend'
                },
                mouse: {
                    start: 'mousedown',
                    move: 'mousemove',
                    end: 'mouseup'
                }
            };
            return eventsFor[isTouchDevice ? 'touch' : 'mouse'];
        }();

        /**
         * get {clientX, clientY} positions of control
         * */
        function getControlPosition(e) {
            var position = e.touches && e.touches[0] || e;
            return {
                clientX: position.clientX,
                clientY: position.clientY
            };
        }

        function addEvent(el, event, handler) {
            if (!el) {
                return;
            }
            if (el.attachEvent) {
                el.attachEvent('on' + event, handler);
            } else if (el.addEventListener) {
                el.addEventListener(event, handler, true);
            } else {
                el['on' + event] = handler;
            }
        }

        function removeEvent(el, event, handler) {
            if (!el) {
                return;
            }
            if (el.detachEvent) {
                el.detachEvent('on' + event, handler);
            } else if (el.removeEventListener) {
                el.removeEventListener(event, handler, true);
            } else {
                el['on' + event] = null;
            }
        }

        function snapToGrid(draggable, clientX, clientY) {
            var stateX = parseInt(draggable.state.clientX, 10);
            var stateY = parseInt(draggable.state.clientY, 10);
            var directionX = clientX < stateX ? -1 : 1;
            var directionY = clientY < stateY ? -1 : 1;

            clientX = Math.abs(clientX - stateX) >= draggable.props.grid[0] ? stateX + draggable.props.grid[0] * directionX : stateX;

            clientY = Math.abs(clientY - stateY) >= draggable.props.grid[1] ? stateY + draggable.props.grid[1] * directionY : stateY;

            return [clientX, clientY];
        }

        // Useful for preventing blue highlights all over everything when dragging.
        var userSelectStyle = {
            WebkitUserSelect: 'none',
            MozUserSelect: 'none',
            msUserSelect: 'none',
            OUserSelect: 'none',
            userSelect: 'none'
        };

        function createCSSTransform(style) {
            if (!style.x && !style.y) return {};
            // Replace unitless items with px
            var x = style.x + 'px';
            var y = style.y + 'px';
            return {
                transform: 'translate(' + x + ',' + y + ')',
                WebkitTransform: 'translate(' + x + ',' + y + ')',
                OTransform: 'translate(' + x + ',' + y + ')',
                msTransform: 'translate(' + x + ',' + y + ')',
                MozTransform: 'translate(' + x + ',' + y + ')'
            };
        }

        //
        // End Helpers.
        //

        //
        // Define <Draggable>
        //

        module.exports = React.createClass({
            displayName: 'Draggable',

            propTypes: {
                /**
                 * `axis` determines which axis the draggable can move.
                 *
                 * 'both' allows movement horizontally and vertically.
                 * 'x' limits movement to horizontal axis.
                 * 'y' limits movement to vertical axis.
                 *
                 * Defaults to 'both'.
                 */
                axis: React.PropTypes.oneOf(['both', 'x', 'y']),

                /**
                 * `handle` specifies a selector to be used as the handle that initiates drag.
                 *
                 * Example:
                 *
                 * ```jsx
                 *   var App = React.createClass({
                 *       render: function () {
                 *         return (
                 *            <Draggable handle=".handle">
                 *              <div>
                 *                  <div className="handle">Click me to drag</div>
                 *                  <div>This is some other content</div>
                 *              </div>
                 *           </Draggable>
                 *         );
                 *       }
                 *   });
                 * ```
                 */
                handle: React.PropTypes.string,

                /**
                 * `cancel` specifies a selector to be used to prevent drag initialization.
                 *
                 * Example:
                 *
                 * ```jsx
                 *   var App = React.createClass({
                 *       render: function () {
                 *           return(
                 *               <Draggable cancel=".cancel">
                 *                   <div>
                 *                     <div className="cancel">You can't drag from here</div>
                 *            <div>Dragging here works fine</div>
                 *                   </div>
                 *               </Draggable>
                 *           );
                 *       }
                 *   });
                 * ```
                 */
                cancel: React.PropTypes.string,

                /**
                 * `grid` specifies the x and y that dragging should snap to.
                 *
                 * Example:
                 *
                 * ```jsx
                 *   var App = React.createClass({
                 *       render: function () {
                 *           return (
                 *               <Draggable grid={[25, 25]}>
                 *                   <div>I snap to a 25 x 25 grid</div>
                 *               </Draggable>
                 *           );
                 *       }
                 *   });
                 * ```
                 */
                grid: React.PropTypes.arrayOf(React.PropTypes.number),

                /**
                 * `zIndex` specifies the zIndex to use while dragging.
                 *
                 * Example:
                 *
                 * ```jsx
                 *   var App = React.createClass({
                 *       render: function () {
                 *           return (
                 *               <Draggable zIndex={100}>
                 *                   <div>I have a zIndex</div>
                 *               </Draggable>
                 *           );
                 *       }
                 *   });
                 * ```
                 */
                zIndex: React.PropTypes.number,

                /**
                 * Called when dragging starts.
                 *
                 * Example:
                 *
                 * ```js
                 *  function (event, ui) {}
                 * ```
                 *
                 * `event` is the Event that was triggered.
                 * `ui` is an object:
                 *
                 * ```js
                 *  {
                 *    position: {top: 0, left: 0}
                 *  }
                 * ```
                 */
                onStart: React.PropTypes.func,

                /**
                 * Called while dragging.
                 *
                 * Example:
                 *
                 * ```js
                 *  function (event, ui) {}
                 * ```
                 *
                 * `event` is the Event that was triggered.
                 * `ui` is an object:
                 *
                 * ```js
                 *  {
                 *    position: {top: 0, left: 0}
                 *  }
                 * ```
                 */
                onDrag: React.PropTypes.func,

                /**
                 * Called when dragging stops.
                 *
                 * Example:
                 *
                 * ```js
                 *  function (event, ui) {}
                 * ```
                 *
                 * `event` is the Event that was triggered.
                 * `ui` is an object:
                 *
                 * ```js
                 *  {
                 *    position: {top: 0, left: 0}
                 *  }
                 * ```
                 */
                onStop: React.PropTypes.func,

                /**
                 * A workaround option which can be passed if onMouseDown needs to be accessed,
                 * since it'll always be blocked (due to that there's internal use of onMouseDown)
                 */
                onMouseDown: React.PropTypes.func
            },

            componentWillUnmount: function componentWillUnmount() {
                // Remove any leftover event handlers
                removeEvent(window, dragEventFor['move'], this.handleDrag);
                removeEvent(window, dragEventFor['end'], this.handleDragEnd);
            },

            getDefaultProps: function getDefaultProps() {
                return {
                    axis: 'both',
                    handle: null,
                    cancel: null,
                    grid: null,
                    zIndex: NaN,
                    onStart: emptyFunction,
                    onDrag: emptyFunction,
                    onStop: emptyFunction,
                    onMouseDown: emptyFunction
                };
            },

            getInitialState: function getInitialState() {
                return {
                    // Whether or not we are currently dragging.
                    dragging: false,

                    // Offset between start top/left and mouse top/left while dragging.
                    offsetX: 0, offsetY: 0,

                    // Current transform x and y.
                    clientX: 0, clientY: 0
                };
            },

            handleDragStart: function handleDragStart(e) {
                // todo: write right implementation to prevent multitouch drag
                // prevent multi-touch events
                // if (isMultiTouch(e)) {
                //     this.handleDragEnd.apply(e, arguments);
                //     return
                // }

                // Make it possible to attach event handlers on top of this one
                this.props.onMouseDown(e);

                // Short circuit if handle or cancel prop was provided and selector doesn't match
                if (this.props.handle && !matchesSelector(e.target, this.props.handle) || this.props.cancel && matchesSelector(e.target, this.props.cancel)) {
                    return;
                }

                var dragPoint = getControlPosition(e);

                // Initiate dragging. Set the current x and y as offsets
                // so we know how much we've moved during the drag. This allows us
                // to drag elements around even if they have been moved, without issue.
                this.setState({
                    dragging: true,
                    offsetX: dragPoint.clientX - this.state.clientX,
                    offsetY: dragPoint.clientY - this.state.clientY
                });

                // Call event handler
                this.props.onStart(e, createUIEvent(this));

                // Add event handlers
                addEvent(window, dragEventFor['move'], this.handleDrag);
                addEvent(window, dragEventFor['end'], this.handleDragEnd);
            },

            handleDragEnd: function handleDragEnd(e) {
                // Short circuit if not currently dragging
                if (!this.state.dragging) {
                    return;
                }

                // Turn off dragging
                this.setState({
                    dragging: false
                });

                // Call event handler
                this.props.onStop(e, createUIEvent(this));

                // Remove event handlers
                removeEvent(window, dragEventFor['move'], this.handleDrag);
                removeEvent(window, dragEventFor['end'], this.handleDragEnd);
            },

            handleDrag: function handleDrag(e) {
                var dragPoint = getControlPosition(e);

                // Calculate X and Y
                var clientX = dragPoint.clientX - this.state.offsetX;
                var clientY = dragPoint.clientY - this.state.offsetY;

                // Snap to grid if prop has been provided
                if (Array.isArray(this.props.grid)) {
                    var coords = snapToGrid(this, clientX, clientY);
                    clientX = coords[0], clientY = coords[1];
                }

                // Update transform
                this.setState({
                    clientX: clientX,
                    clientY: clientY
                });

                // Call event handler
                this.props.onDrag(e, createUIEvent(this));
            },

            render: function render() {
                // Create style object. We extend from existing styles so we don't
                // remove anything already set (like background, color, etc).
                var childStyle = this.props.children.props.style || {};

                // Add a CSS transform to move the element around. This allows us to move the element around
                // without worrying about whether or not it is relatively or absolutely positioned.
                // If the item you are dragging already has a transform set, wrap it in a <span> so <Draggable>
                // has a clean slate.
                var transform = createCSSTransform({
                    // Set left if horizontal drag is enabled
                    x: canDragX(this) ? this.state.clientX : 0,

                    // Set top if vertical drag is enabled
                    y: canDragY(this) ? this.state.clientY : 0
                });
                var style = assign({}, userSelectStyle, childStyle, transform);

                // Set zIndex if currently dragging and prop has been provided
                if (this.state.dragging && !isNaN(this.props.zIndex)) {
                    style.zIndex = this.props.zIndex;
                }

                var className = classNames(this.props.children.props.className || '', 'react-draggable', {
                    'react-draggable-dragging': this.state.dragging,
                    'react-draggable-dragged': this.state.dragged
                });

                // Reuse the child provided
                // This makes it flexible to use whatever element is wanted (div, ul, etc)
                return React.cloneElement(React.Children.only(this.props.children), {
                    style: style,
                    className: className,

                    onMouseDown: this.handleDragStart,
                    onTouchStart: function (ev) {
                        ev.preventDefault(); // prevent for scroll
                        return this.handleDragStart.apply(this, arguments);
                    }.bind(this),

                    onMouseUp: this.handleDragEnd,
                    onTouchEnd: this.handleDragEnd
                });
            }
        });

        /***/ }),

    /***/ 415:
    /***/ (function(module, exports) {

        'use strict';

        function ToObject(val) {
            if (val == null) {
                throw new TypeError('Object.assign cannot be called with null or undefined');
            }

            return Object(val);
        }

        module.exports = Object.assign || function (target, source) {
            var from;
            var keys;
            var to = ToObject(target);

            for (var s = 1; s < arguments.length; s++) {
                from = arguments[s];
                keys = Object.keys(Object(from));

                for (var i = 0; i < keys.length; i++) {
                    to[keys[i]] = from[keys[i]];
                }
            }

            return to;
        };

        /***/ }),

    /***/ 416:
    /***/ (function(module, exports, __webpack_require__) {

        var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;'use strict';

        var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

        /*!
	  Copyright (c) 2015 Jed Watson.
	  Licensed under the MIT License (MIT), see
	  http://jedwatson.github.io/classnames
	*/

        function classNames() {
            var classes = '';
            var arg;

            for (var i = 0; i < arguments.length; i++) {
                arg = arguments[i];
                if (!arg) {
                    continue;
                }

                if ('string' === typeof arg || 'number' === typeof arg) {
                    classes += ' ' + arg;
                } else if (Object.prototype.toString.call(arg) === '[object Array]') {
                    classes += ' ' + classNames.apply(null, arg);
                } else if ('object' === (typeof arg === 'undefined' ? 'undefined' : _typeof(arg))) {
                    for (var key in arg) {
                        if (!arg.hasOwnProperty(key) || !arg[key]) {
                            continue;
                        }
                        classes += ' ' + key;
                    }
                }
            }
            return classes.substr(1);
        }

        // safely export classNames for node / browserify
        if (typeof module !== 'undefined' && module.exports) {
            module.exports = classNames;
        }

        // safely export classNames for RequireJS
        if (true) {
            !(__WEBPACK_AMD_DEFINE_ARRAY__ = [], __WEBPACK_AMD_DEFINE_RESULT__ = function () {
                return classNames;
            }.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__), __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
        }

        /***/ }),

    /***/ 417:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(418);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/backToHome/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/backToHome/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 418:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".back-to-home {\n  position: fixed;\n  bottom: .2rem;\n  right: .16rem;\n  z-index: 10;\n  color: #fff;\n  border-radius: 50%;\n  -webkit-box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.01);\n          box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.01);\n  font-size: .13rem;\n  line-height: .15rem;\n  width: .5rem;\n  height: .5rem;\n  -webkit-box-sizing: border-box;\n     -moz-box-sizing: border-box;\n          box-sizing: border-box;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-orient: vertical;\n  -webkit-box-direction: normal;\n  -webkit-flex-direction: column;\n      -ms-flex-direction: column;\n          flex-direction: column;\n  -webkit-box-pack: center;\n  -webkit-justify-content: center;\n      -ms-flex-pack: center;\n          justify-content: center;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n}\n.oyh {\n  overflow-y: hidden;\n}\n", ""]);

        /***/ }),

    /***/ 419:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        __webpack_require__(420);

        var React = __webpack_require__(3);
        // import { hideHeader } from 'module_path/common/mt-react-ui/Header.jsx';


        var BackToHome2 = React.createClass({
            displayName: 'BackToHome2',


            getInitialState: function getInitialState() {
                this.scrollHandler = this.scrollHandler.bind(this);
                return {
                    isScroll: false
                    // show: false
                };
            },
            timer: null,
            limitHeight: 10,
            scrollHandler: function scrollHandler() {
                var _this = this;

                var hideAfterScroll = this.props.hideAfterScroll,
                    scrollTop = $(window).scrollTop();

                clearTimeout(this.timer);
                if (scrollTop > this.limitHeight) {
                    this.setState({
                        // show: true,
                        isScroll: hideAfterScroll ? true : false
                    }, function () {
                        if (_this.state.isScroll) {
                            _this.timer = setTimeout(function () {
                                _this.setState({
                                    isScroll: false
                                });
                            }, 100);
                        }
                    });
                } else {
                    this.setState({
                        // show: false,
                        isScroll: false
                    });
                }
            },
            toHome: function toHome() {
                window.location.href = TJ.tourl('/welcome');
            },

            componentDidMount: function componentDidMount() {
                $(window).on('scroll', this.scrollHandler);
            },
            componentWillUnmount: function componentWillUnmount() {
                clearTimeout(this.timer);
                $(window).off('scroll', this.scrollHandler);
            },
            render: function render() {
                // if (!hideHeader) {
                //   return null
                // }
                // if (!this.state.show) {
                //   return null;
                // }
                var bottom = this.props.bottom;

                var iconStyle = {
                    bottom: bottom
                };
                if (this.props.hideAfterScroll && this.state.isScroll) {
                    iconStyle.right = 0;
                    iconStyle.transform = 'translateX(50%)';
                }

                return React.createElement(
                    'a',
                    { href: 'javascript:;', onClick: this.toHome, className: 'returntop-icon backToHome2 mainbackground', style: iconStyle },
                    React.createElement(
                        'div',
                        null,
                        '\u56DE\u5230'
                    ),
                    React.createElement(
                        'div',
                        null,
                        '\u9996\u9875'
                    )
                );
            }

        });

        BackToHome2.propTypes = {
            hideAfterScroll: React.PropTypes.bool,
            bottom: React.PropTypes.string
        };
        BackToHome2.defaultProps = {
            hideAfterScroll: true,
            bottom: "0.64rem"
        };

        module.exports = BackToHome2;

        /***/ }),

    /***/ 420:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(421);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/backToHome2/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/backToHome2/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 421:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".returntop-icon.backToHome2 {\n  z-index: 11;\n  font-size: .11rem;\n  line-height: 1.2;\n  display: -webkit-box;\n  display: -webkit-flex;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-pack: center;\n  -webkit-justify-content: center;\n      -ms-flex-pack: center;\n          justify-content: center;\n  -webkit-box-orient: vertical;\n  -webkit-box-direction: normal;\n  -webkit-flex-direction: column;\n      -ms-flex-direction: column;\n          flex-direction: column;\n  -webkit-box-align: center;\n  -webkit-align-items: center;\n      -ms-flex-align: center;\n          align-items: center;\n}\n", ""]);

        /***/ }),

    /***/ 587:
    /***/ (function(module, exports, __webpack_require__) {

        'use strict';

        var _react = __webpack_require__(3);

        var _react2 = _interopRequireDefault(_react);

        __webpack_require__(588);

        function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

        /**
         * 铭医，咨询医生
         */

        var DocChat = _react2.default.createClass({
            displayName: 'DocChat',

            getInitialState: function getInitialState() {
                return {
                    origin: ''
                };
            },

            getDefaultProps: function getDefaultProps() {
                return {
                    type: 1,
                    origin: '来自每天健康的咨询'
                };
            },
            toChat: function toChat() {},
            render: function render() {
                return _react2.default.createElement('div', null);
            }
        });

        module.exports = DocChat;

        /***/ }),

    /***/ 588:
    /***/ (function(module, exports, __webpack_require__) {

        // style-loader: Adds some css to the DOM by adding a <style> tag

        // load the styles
        var content = __webpack_require__(589);
        if(typeof content === 'string') content = [[module.id, content, '']];
        // add the styles to the DOM
        var update = __webpack_require__(7)(content, {});
        // Hot Module Replacement
        if(false) {
            // When the styles change, update the <style> tags
            module.hot.accept("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/components/mingyiDocChat/index.less", function() {
                var newContent = require("!!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_css-loader@0.9.1@css-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_postcss-loader@1.3.3@postcss-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/node_modules/_less-loader@2.2.3@less-loader/index.js!/opt/jenkins_slave/workspace/Prod_Web_Build/mobile-site/app/module/common/components/mingyiDocChat/index.less");
                if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
                update(newContent);
            });
            // When the module is disposed, remove the <style> tags
            module.hot.dispose(function() { update(); });
        }

        /***/ }),

    /***/ 589:
    /***/ (function(module, exports, __webpack_require__) {

        exports = module.exports = __webpack_require__(6)();
        exports.push([module.id, ".doc-chat {\n  position: fixed;\n  left: .1rem;\n  bottom: .6rem;\n  width: .7rem;\n  z-index: 9999;\n}\n.doc-chat .img {\n  width: 100%;\n}\n.doc-chat1 {\n  position: fixed;\n  right: .1rem;\n  top: 2rem;\n  width: .7rem;\n  z-index: 9999;\n}\n.doc-chat1 .img {\n  width: 100%;\n}\n", ""]);

        /***/ })

    /******/ });