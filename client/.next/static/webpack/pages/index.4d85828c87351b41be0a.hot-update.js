/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("pages/index",{

/***/ "./node_modules/@babel/runtime/helpers/esm/taggedTemplateLiteral.js":
/*!**************************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/esm/taggedTemplateLiteral.js ***!
  \**************************************************************************/
/***/ (function(__unused_webpack___webpack_module__, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": function() { return /* binding */ _taggedTemplateLiteral; }\n/* harmony export */ });\nfunction _taggedTemplateLiteral(strings, raw) {\n  if (!raw) {\n    raw = strings.slice(0);\n  }\n\n  return Object.freeze(Object.defineProperties(strings, {\n    raw: {\n      value: Object.freeze(raw)\n    }\n  }));\n}//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vbm9kZV9tb2R1bGVzL0BiYWJlbC9ydW50aW1lL2hlbHBlcnMvZXNtL3RhZ2dlZFRlbXBsYXRlTGl0ZXJhbC5qcz84Nzg1Il0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7QUFBZTtBQUNmO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLEdBQUc7QUFDSCIsImZpbGUiOiIuL25vZGVfbW9kdWxlcy9AYmFiZWwvcnVudGltZS9oZWxwZXJzL2VzbS90YWdnZWRUZW1wbGF0ZUxpdGVyYWwuanMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgZGVmYXVsdCBmdW5jdGlvbiBfdGFnZ2VkVGVtcGxhdGVMaXRlcmFsKHN0cmluZ3MsIHJhdykge1xuICBpZiAoIXJhdykge1xuICAgIHJhdyA9IHN0cmluZ3Muc2xpY2UoMCk7XG4gIH1cblxuICByZXR1cm4gT2JqZWN0LmZyZWV6ZShPYmplY3QuZGVmaW5lUHJvcGVydGllcyhzdHJpbmdzLCB7XG4gICAgcmF3OiB7XG4gICAgICB2YWx1ZTogT2JqZWN0LmZyZWV6ZShyYXcpXG4gICAgfVxuICB9KSk7XG59Il0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./node_modules/@babel/runtime/helpers/esm/taggedTemplateLiteral.js\n");

/***/ }),

/***/ "./components/auth.tsx":
/*!*****************************!*\
  !*** ./components/auth.tsx ***!
  \*****************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"./node_modules/react/jsx-dev-runtime.js\");\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./node_modules/@babel/runtime/regenerator */ \"./node_modules/@babel/runtime/regenerator/index.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/asyncToGenerator */ \"./node_modules/@babel/runtime/helpers/esm/asyncToGenerator.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_taggedTemplateLiteral__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/taggedTemplateLiteral */ \"./node_modules/@babel/runtime/helpers/esm/taggedTemplateLiteral.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_4__);\n/* harmony import */ var react_bootstrap__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! react-bootstrap */ \"./node_modules/react-bootstrap/esm/index.js\");\n/* harmony import */ var next_image__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! next/image */ \"./node_modules/next/image.js\");\n/* harmony import */ var next_image__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(next_image__WEBPACK_IMPORTED_MODULE_5__);\n/* harmony import */ var _authTabs_RegistrationTab__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./authTabs/RegistrationTab */ \"./components/authTabs/RegistrationTab.tsx\");\n/* harmony import */ var _authTabs_LoginTab__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./authTabs/LoginTab */ \"./components/authTabs/LoginTab.tsx\");\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! react-redux */ \"./node_modules/react-redux/es/index.js\");\n/* harmony import */ var _redux_slices_UserSlice__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ../redux/slices/UserSlice */ \"./redux/slices/UserSlice.ts\");\n/* harmony import */ var _services_auth_services__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ../services/auth.services */ \"./services/auth.services.ts\");\n/* harmony import */ var next_router__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! next/router */ \"./node_modules/next/router.js\");\n/* harmony import */ var next_router__WEBPACK_IMPORTED_MODULE_11___default = /*#__PURE__*/__webpack_require__.n(next_router__WEBPACK_IMPORTED_MODULE_11__);\n/* harmony import */ var react_spinners__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! react-spinners */ \"./node_modules/react-spinners/index.js\");\n/* harmony import */ var react_spinners__WEBPACK_IMPORTED_MODULE_12___default = /*#__PURE__*/__webpack_require__.n(react_spinners__WEBPACK_IMPORTED_MODULE_12__);\n/* module decorator */ module = __webpack_require__.hmd(module);\n\n\n\n\n\nvar _jsxFileName = \"/Users/vitalik/Documents/big_projects/andreas/client/components/auth.tsx\",\n    _this = undefined,\n    _s = $RefreshSig$();\n\nfunction _templateObject() {\n  var data = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_taggedTemplateLiteral__WEBPACK_IMPORTED_MODULE_3__.default)([\"\\n    display: block;\\n    margin: 0 auto;\\n  \"]);\n\n  _templateObject = function _templateObject() {\n    return data;\n  };\n\n  return data;\n}\n\n\n\n\n\n\n\n\n\n\n\n\nvar Auth = function Auth(props) {\n  _s();\n\n  var _useState = (0,react__WEBPACK_IMPORTED_MODULE_4__.useState)(true),\n      loading = _useState[0],\n      setLoadingPre = _useState[1];\n\n  var dispatch = (0,react_redux__WEBPACK_IMPORTED_MODULE_8__.useDispatch)();\n  var route = (0,next_router__WEBPACK_IMPORTED_MODULE_11__.useRouter)();\n  var override = css(_templateObject());\n\n  var loginAction = /*#__PURE__*/function () {\n    var _ref2 = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__.default)( /*#__PURE__*/_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().mark(function _callee(_ref) {\n      var email, password, response, user;\n      return _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().wrap(function _callee$(_context) {\n        while (1) {\n          switch (_context.prev = _context.next) {\n            case 0:\n              email = _ref.email, password = _ref.password;\n              _context.prev = 1;\n              dispatch(setLoadingPre(true));\n              _context.next = 5;\n              return _services_auth_services__WEBPACK_IMPORTED_MODULE_10__.default.login(email, password);\n\n            case 5:\n              response = _context.sent;\n              user = response.data.user;\n              dispatch((0,_redux_slices_UserSlice__WEBPACK_IMPORTED_MODULE_9__.setUser)(user));\n              route.push(\"/home\");\n              dispatch(setLoadingPre(false));\n              return _context.abrupt(\"return\", user);\n\n            case 13:\n              _context.prev = 13;\n              _context.t0 = _context[\"catch\"](1);\n              dispatch(setLoadingPre(false));\n              console.log(_context.t0);\n              return _context.abrupt(\"return\", _context.t0);\n\n            case 18:\n            case \"end\":\n              return _context.stop();\n          }\n        }\n      }, _callee, null, [[1, 13]]);\n    }));\n\n    return function loginAction(_x) {\n      return _ref2.apply(this, arguments);\n    };\n  }();\n\n  var registration1 = /*#__PURE__*/function () {\n    var _ref3 = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__.default)( /*#__PURE__*/_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().mark(function _callee2(data) {\n      var user;\n      return _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().wrap(function _callee2$(_context2) {\n        while (1) {\n          switch (_context2.prev = _context2.next) {\n            case 0:\n              _context2.prev = 0;\n              setLoadingPre(true);\n              _context2.next = 4;\n              return _services_auth_services__WEBPACK_IMPORTED_MODULE_10__.default.registration(data.email, data.password, data.name);\n\n            case 4:\n              user = _context2.sent;\n              console.log(user); // login1({ email: user.email, password: data.password })\n\n              setTimeout(function () {\n                return setLoadingPre(false);\n              }, 500);\n              return _context2.abrupt(\"return\", user);\n\n            case 10:\n              _context2.prev = 10;\n              _context2.t0 = _context2[\"catch\"](0);\n              console.log(_context2.t0.messge);\n              setTimeout(function () {\n                return setLoadingPre(false);\n              }, 500);\n\n            case 14:\n            case \"end\":\n              return _context2.stop();\n          }\n        }\n      }, _callee2, null, [[0, 10]]);\n    }));\n\n    return function registration1(_x2) {\n      return _ref3.apply(this, arguments);\n    };\n  }();\n\n  return /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n    className: \"auth\",\n    children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"img\", {\n      onClick: function onClick() {\n        return props.setAuthVisible(false);\n      },\n      src: \"/assets/svg/close.svg\",\n      width: 30,\n      height: 30,\n      alt: \"close\",\n      className: \"close\"\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 74,\n      columnNumber: 7\n    }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n      className: \"auth__content\",\n      children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"h3\", {\n        children: \"Your text, Andy!\"\n      }, void 0, false, {\n        fileName: _jsxFileName,\n        lineNumber: 83,\n        columnNumber: 9\n      }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"p\", {\n        children: \"Write us whatever you want. We will answer to you as fast as possible.\"\n      }, void 0, false, {\n        fileName: _jsxFileName,\n        lineNumber: 84,\n        columnNumber: 9\n      }, _this), loading ? /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_spinners__WEBPACK_IMPORTED_MODULE_12__.RingLoader, {\n        color: \"#5779F0\",\n        size: 150\n      }, void 0, false, {\n        fileName: _jsxFileName,\n        lineNumber: 88,\n        columnNumber: 13\n      }, _this) : /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Tab.Container, {\n        id: \"left-tabs-example\",\n        defaultActiveKey: \"SingIn\",\n        children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav, {\n          variant: \"pills\",\n          children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Item, {\n            children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Link, {\n              eventKey: \"SingIn\",\n              children: \"Sing in\"\n            }, void 0, false, {\n              fileName: _jsxFileName,\n              lineNumber: 92,\n              columnNumber: 17\n            }, _this)\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 91,\n            columnNumber: 15\n          }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Item, {\n            children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Link, {\n              eventKey: \"Register\",\n              children: \"Register\"\n            }, void 0, false, {\n              fileName: _jsxFileName,\n              lineNumber: 95,\n              columnNumber: 17\n            }, _this)\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 94,\n            columnNumber: 15\n          }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Item, {\n            children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Nav.Link, {\n              eventKey: \"Test\",\n              children: \"Test\"\n            }, void 0, false, {\n              fileName: _jsxFileName,\n              lineNumber: 98,\n              columnNumber: 17\n            }, _this)\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 97,\n            columnNumber: 15\n          }, _this)]\n        }, void 0, true, {\n          fileName: _jsxFileName,\n          lineNumber: 90,\n          columnNumber: 13\n        }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Tab.Content, {\n          children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Tab.Pane, {\n            eventKey: \"SingIn\",\n            children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_authTabs_LoginTab__WEBPACK_IMPORTED_MODULE_7__.default, {\n              loginAction: loginAction\n            }, void 0, false, {\n              fileName: _jsxFileName,\n              lineNumber: 105,\n              columnNumber: 15\n            }, _this)\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 104,\n            columnNumber: 13\n          }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Tab.Pane, {\n            eventKey: \"Register\",\n            children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_authTabs_RegistrationTab__WEBPACK_IMPORTED_MODULE_6__.default, {\n              registration1: registration1\n            }, void 0, false, {\n              fileName: _jsxFileName,\n              lineNumber: 109,\n              columnNumber: 15\n            }, _this)\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 108,\n            columnNumber: 13\n          }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_bootstrap__WEBPACK_IMPORTED_MODULE_13__.Tab.Pane, {\n            eventKey: \"Test\",\n            children: \"ahahah3\"\n          }, void 0, false, {\n            fileName: _jsxFileName,\n            lineNumber: 112,\n            columnNumber: 13\n          }, _this)]\n        }, void 0, true, {\n          fileName: _jsxFileName,\n          lineNumber: 103,\n          columnNumber: 11\n        }, _this)]\n      }, void 0, true, {\n        fileName: _jsxFileName,\n        lineNumber: 89,\n        columnNumber: 14\n      }, _this)]\n    }, void 0, true, {\n      fileName: _jsxFileName,\n      lineNumber: 82,\n      columnNumber: 7\n    }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n      className: \"auth__img\",\n      children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)((next_image__WEBPACK_IMPORTED_MODULE_5___default()), {\n        src: \"/assets/img/auth-img.png\",\n        width: 475,\n        height: 613,\n        alt: \"andreas\"\n      }, void 0, false, {\n        fileName: _jsxFileName,\n        lineNumber: 118,\n        columnNumber: 9\n      }, _this)\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 117,\n      columnNumber: 7\n    }, _this)]\n  }, void 0, true, {\n    fileName: _jsxFileName,\n    lineNumber: 73,\n    columnNumber: 5\n  }, _this);\n};\n\n_s(Auth, \"miD2ADQT1JbTe+HEtTNoalJgr+Y=\", false, function () {\n  return [react_redux__WEBPACK_IMPORTED_MODULE_8__.useDispatch, next_router__WEBPACK_IMPORTED_MODULE_11__.useRouter];\n});\n\n_c = Auth;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Auth);\n\nvar _c;\n\n$RefreshReg$(_c, \"Auth\");\n\n;\n    var _a, _b;\n    // Legacy CSS implementations will `eval` browser code in a Node.js context\n    // to extract CSS. For backwards compatibility, we need to check we're in a\n    // browser context before continuing.\n    if (typeof self !== 'undefined' &&\n        // AMP / No-JS mode does not inject these helpers:\n        '$RefreshHelpers$' in self) {\n        var currentExports = module.__proto__.exports;\n        var prevExports = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevExports) !== null && _b !== void 0 ? _b : null;\n        // This cannot happen in MainTemplate because the exports mismatch between\n        // templating and execution.\n        self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n        // A module can be accepted automatically based on its exports, e.g. when\n        // it is a Refresh Boundary.\n        if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n            // Save the previous exports on update so we can compare the boundary\n            // signatures.\n            module.hot.dispose(function (data) {\n                data.prevExports = currentExports;\n            });\n            // Unconditionally accept an update to this module, we'll check if it's\n            // still a Refresh Boundary later.\n            module.hot.accept();\n            // This field is set when the previous version of this module was a\n            // Refresh Boundary, letting us know we need to check for invalidation or\n            // enqueue an update.\n            if (prevExports !== null) {\n                // A boundary can become ineligible if its exports are incompatible\n                // with the previous exports.\n                //\n                // For example, if you add/remove/change exports, we'll want to\n                // re-execute the importing modules, and force those components to\n                // re-render. Similarly, if you convert a class component to a\n                // function, we want to invalidate the boundary.\n                if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevExports, currentExports)) {\n                    module.hot.invalidate();\n                }\n                else {\n                    self.$RefreshHelpers$.scheduleUpdate();\n                }\n            }\n        }\n        else {\n            // Since we just executed the code for the module, it's possible that the\n            // new exports made it ineligible for being a boundary.\n            // We only care about the case when we were _previously_ a boundary,\n            // because we already accepted this update (accidental side effect).\n            var isNoLongerABoundary = prevExports !== null;\n            if (isNoLongerABoundary) {\n                module.hot.invalidate();\n            }\n        }\n    }\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vY29tcG9uZW50cy9hdXRoLnRzeD82OTlmIl0sIm5hbWVzIjpbIkF1dGgiLCJwcm9wcyIsInVzZVN0YXRlIiwibG9hZGluZyIsInNldExvYWRpbmdQcmUiLCJkaXNwYXRjaCIsInVzZURpc3BhdGNoIiwicm91dGUiLCJ1c2VSb3V0ZXIiLCJvdmVycmlkZSIsImNzcyIsImxvZ2luQWN0aW9uIiwiZW1haWwiLCJwYXNzd29yZCIsIkF1dGhTZXJ2aWNlcyIsInJlc3BvbnNlIiwidXNlciIsImRhdGEiLCJzZXRVc2VyIiwicHVzaCIsImNvbnNvbGUiLCJsb2ciLCJyZWdpc3RyYXRpb24xIiwibmFtZSIsInNldFRpbWVvdXQiLCJtZXNzZ2UiLCJzZXRBdXRoVmlzaWJsZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFFQTtBQUNBO0FBQ0E7QUFDQTs7QUFpQkEsSUFBTUEsSUFBSSxHQUFHLFNBQVBBLElBQU8sQ0FBQ0MsS0FBRCxFQUFrQjtBQUFBOztBQUFBLGtCQUVJQywrQ0FBUSxDQUFDLElBQUQsQ0FGWjtBQUFBLE1BRXRCQyxPQUZzQjtBQUFBLE1BRWJDLGFBRmE7O0FBRzdCLE1BQU1DLFFBQVEsR0FBR0Msd0RBQVcsRUFBNUI7QUFDQSxNQUFNQyxLQUFLLEdBQUdDLHVEQUFTLEVBQXZCO0FBRUEsTUFBTUMsUUFBUSxHQUFHQyxHQUFILG1CQUFkOztBQUtBLE1BQU1DLFdBQVc7QUFBQSw0VEFBRztBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBUUMsbUJBQVIsUUFBUUEsS0FBUixFQUFlQyxRQUFmLFFBQWVBLFFBQWY7QUFBQTtBQUVoQlIsc0JBQVEsQ0FBQ0QsYUFBYSxDQUFDLElBQUQsQ0FBZCxDQUFSO0FBRmdCO0FBQUEscUJBSU9VLG1FQUFBLENBQW1CRixLQUFuQixFQUEwQkMsUUFBMUIsQ0FKUDs7QUFBQTtB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OlsiaW1wb3J0IFJlYWN0LCB7IERpc3BhdGNoLCB1c2VTdGF0ZSB9IGZyb20gXCJyZWFjdFwiO1xuaW1wb3J0IHsgTmF2LCBUYWIgfSBmcm9tIFwicmVhY3QtYm9vdHN0cmFwXCI7XG5pbXBvcnQgSW1hZ2UgZnJvbSBcIm5leHQvaW1hZ2VcIjtcbmltcG9ydCBSZWdpc3RyYXRpb25UYWIgZnJvbSBcIi4vYXV0aFRhYnMvUmVnaXN0cmF0aW9uVGFiXCI7XG5pbXBvcnQgTG9naW5UYWIgZnJvbSBcIi4vYXV0aFRhYnMvTG9naW5UYWJcIjtcbmltcG9ydCB7IHVzZURpc3BhdGNoIH0gZnJvbSBcInJlYWN0LXJlZHV4XCI7XG5pbXBvcnQgeyBJVXNlciB9IGZyb20gXCIuLi9tb2RlbHMvSVVzZXJcIjtcbmltcG9ydCB7IHNldFVzZXIgfSBmcm9tIFwiLi4vcmVkdXgvc2xpY2VzL1VzZXJTbGljZVwiO1xuaW1wb3J0IEF1dGhTZXJ2aWNlcyBmcm9tIFwiLi4vc2VydmljZXMvYXV0aC5zZXJ2aWNlc1wiO1xuaW1wb3J0IHsgdXNlUm91dGVyIH0gZnJvbSBcIm5leHQvcm91dGVyXCI7XG5pbXBvcnQgeyBSaW5nTG9hZGVyIH0gZnJvbSBcInJlYWN0LXNwaW5uZXJzXCI7XG5cbmludGVyZmFjZSBJQXV0aCB7XG4gIHNldEF1dGhWaXNpYmxlOiBEaXNwYXRjaDxSZWFjdC5TZXRTdGF0ZUFjdGlvbjxib29sZWFuPj47XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgSUxvZ2luVGFiIHtcbiAgZW1haWw6IHN0cmluZztcbiAgcGFzc3dvcmQ6IHN0cmluZztcbn1cblxuaW50ZXJmYWNlIElSZWdpc3RyYXRpb25UYWIge1xuICBlbWFpbDogc3RyaW5nO1xuICBwYXNzd29yZDogc3RyaW5nO1xuICBuYW1lOiBzdHJpbmc7XG59XG5cbmNvbnN0IEF1dGggPSAocHJvcHM6IElBdXRoKSA9PiB7XG5cbiAgY29uc3QgW2xvYWRpbmcsIHNldExvYWRpbmdQcmVdID0gdXNlU3RhdGUodHJ1ZSk7XG4gIGNvbnN0IGRpc3BhdGNoID0gdXNlRGlzcGF0Y2goKTtcbiAgY29uc3Qgcm91dGUgPSB1c2VSb3V0ZXIoKTtcblxuICBjb25zdCBvdmVycmlkZSA9IGNzc2BcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBtYXJnaW46IDAgYXV0bztcbiAgYDtcblxuICBjb25zdCBsb2dpbkFjdGlvbiA9IGFzeW5jICh7ZW1haWwsIHBhc3N3b3JkfTogSUxvZ2luVGFiKTogUHJvbWlzZTxJVXNlcj4gPT4ge1xuICAgIHRyeSB7XG4gICAgICBkaXNwYXRjaChzZXRMb2FkaW5nUHJlKHRydWUpKTtcblxuICAgICAgY29uc3QgcmVzcG9uc2UgPSBhd2FpdCBBdXRoU2VydmljZXMubG9naW4oZW1haWwsIHBhc3N3b3JkKTtcbiAgICAgIGNvbnN0IHVzZXI6IElVc2VyID0gcmVzcG9uc2UuZGF0YS51c2VyO1xuICAgICAgZGlzcGF0Y2goc2V0VXNlcih1c2VyKSk7XG4gICAgICByb3V0ZS5wdXNoKFwiL2hvbWVcIik7XG5cbiAgICAgIGRpc3BhdGNoKHNldExvYWRpbmdQcmUoZmFsc2UpKTtcbiAgICAgIHJldHVybiB1c2VyO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGRpc3BhdGNoKHNldExvYWRpbmdQcmUoZmFsc2UpKTtcbiAgICAgIGNvbnNvbGUubG9nKGUpO1xuICAgICAgcmV0dXJuIGU7XG4gICAgfVxuICB9O1xuXG5cbiAgY29uc3QgcmVnaXN0cmF0aW9uMSA9IGFzeW5jIChkYXRhOiBJUmVnaXN0cmF0aW9uVGFiKSA9PiB7XG4gICAgdHJ5IHtcbiAgICAgIHNldExvYWRpbmdQcmUodHJ1ZSk7XG4gICAgICBjb25zdCB1c2VyID0gYXdhaXQgQXV0aFNlcnZpY2VzLnJlZ2lzdHJhdGlvbihkYXRhLmVtYWlsLCBkYXRhLnBhc3N3b3JkLCBkYXRhLm5hbWUpO1xuICAgICAgY29uc29sZS5sb2codXNlcik7XG4gICAgICAvLyBsb2dpbjEoeyBlbWFpbDogdXNlci5lbWFpbCwgcGFzc3dvcmQ6IGRhdGEucGFzc3dvcmQgfSlcbiAgICAgIHNldFRpbWVvdXQoKCkgPT4gc2V0TG9hZGluZ1ByZShmYWxzZSksIDUwMCk7XG4gICAgICByZXR1cm4gdXNlcjtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICBjb25zb2xlLmxvZyhlLm1lc3NnZSk7XG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHNldExvYWRpbmdQcmUoZmFsc2UpLCA1MDApO1xuICAgIH1cbiAgfTtcblxuICByZXR1cm4gKFxuICAgIDxkaXYgY2xhc3NOYW1lPVwiYXV0aFwiPlxuICAgICAgPGltZ1xuICAgICAgICBvbkNsaWNrPXsoKSA9PiBwcm9wcy5zZXRBdXRoVmlzaWJsZShmYWxzZSl9XG4gICAgICAgIHNyYz1cIi9hc3NldHMvc3ZnL2Nsb3NlLnN2Z1wiXG4gICAgICAgIHdpZHRoPXszMH1cbiAgICAgICAgaGVpZ2h0PXszMH1cbiAgICAgICAgYWx0PVwiY2xvc2VcIlxuICAgICAgICBjbGFzc05hbWU9XCJjbG9zZVwiXG4gICAgICAvPlxuICAgICAgPGRpdiBjbGFzc05hbWU9XCJhdXRoX19jb250ZW50XCI+XG4gICAgICAgIDxoMz5Zb3VyIHRleHQsIEFuZHkhPC9oMz5cbiAgICAgICAgPHA+XG4gICAgICAgICAgV3JpdGUgdXMgd2hhdGV2ZXIgeW91IHdhbnQuIFdlIHdpbGwgYW5zd2VyIHRvIHlvdSBhcyBmYXN0IGFzIHBvc3NpYmxlLlxuICAgICAgICA8L3A+XG4gICAgICAgIHtsb2FkaW5nXG4gICAgICAgICAgPyA8UmluZ0xvYWRlciBjb2xvcj17XCIjNTc3OUYwXCJ9IHNpemU9ezE1MH0gLz5cbiAgICAgICAgICA6ICg8VGFiLkNvbnRhaW5lciBpZD1cImxlZnQtdGFicy1leGFtcGxlXCIgZGVmYXVsdEFjdGl2ZUtleT1cIlNpbmdJblwiPlxuICAgICAgICAgICAgPE5hdiB2YXJpYW50PVwicGlsbHNcIj5cbiAgICAgICAgICAgICAgPE5hdi5JdGVtPlxuICAgICAgICAgICAgICAgIDxOYXYuTGluayBldmVudEtleT1cIlNpbmdJblwiPlNpbmcgaW48L05hdi5MaW5rPlxuICAgICAgICAgICAgICA8L05hdi5JdGVtPlxuICAgICAgICAgICAgICA8TmF2Lkl0ZW0+XG4gICAgICAgICAgICAgICAgPE5hdi5MaW5rIGV2ZW50S2V5PVwiUmVnaXN0ZXJcIj5SZWdpc3RlcjwvTmF2Lkxpbms+XG4gICAgICAgICAgICAgIDwvTmF2Lkl0ZW0+XG4gICAgICAgICAgICAgIDxOYXYuSXRlbT5cbiAgICAgICAgICAgICAgICA8TmF2LkxpbmsgZXZlbnRLZXk9XCJUZXN0XCI+VGVzdDwvTmF2Lkxpbms+XG4gICAgICAgICAgICAgIDwvTmF2Lkl0ZW0+XG4gICAgICAgICAgICA8L05hdj5cblxuXG4gICAgICAgICAgPFRhYi5Db250ZW50PlxuICAgICAgICAgICAgPFRhYi5QYW5lIGV2ZW50S2V5PVwiU2luZ0luXCI+XG4gICAgICAgICAgICAgIDxMb2dpblRhYiBsb2dpbkFjdGlvbj17bG9naW5BY3Rpb259IC8+XG4gICAgICAgICAgICA8L1RhYi5QYW5lPlxuXG4gICAgICAgICAgICA8VGFiLlBhbmUgZXZlbnRLZXk9XCJSZWdpc3RlclwiPlxuICAgICAgICAgICAgICA8UmVnaXN0cmF0aW9uVGFiIHJlZ2lzdHJhdGlvbjE9e3JlZ2lzdHJhdGlvbjF9IC8+XG4gICAgICAgICAgICA8L1RhYi5QYW5lPlxuXG4gICAgICAgICAgICA8VGFiLlBhbmUgZXZlbnRLZXk9XCJUZXN0XCI+YWhhaGFoMzwvVGFiLlBhbmU+XG5cbiAgICAgICAgICA8L1RhYi5Db250ZW50PlxuICAgICAgICA8L1RhYi5Db250YWluZXI+KX1cbiAgICAgIDwvZGl2PlxuICAgICAgPGRpdiBjbGFzc05hbWU9XCJhdXRoX19pbWdcIj5cbiAgICAgICAgPEltYWdlXG4gICAgICAgICAgc3JjPVwiL2Fzc2V0cy9pbWcvYXV0aC1pbWcucG5nXCJcbiAgICAgICAgICB3aWR0aD17NDc1fVxuICAgICAgICAgIGhlaWdodD17NjEzfVxuICAgICAgICAgIGFsdD1cImFuZHJlYXNcIlxuICAgICAgICAvPlxuICAgICAgPC9kaXY+XG4gICAgPC9kaXY+XG4gICk7XG59O1xuXG5leHBvcnQgZGVmYXVsdCBBdXRoO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./components/auth.tsx\n");

/***/ })

});