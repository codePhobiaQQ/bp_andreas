/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("pages/home",{

/***/ "./components/find/FindWindow.tsx":
/*!****************************************!*\
  !*** ./components/find/FindWindow.tsx ***!
  \****************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"./node_modules/react/jsx-dev-runtime.js\");\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./node_modules/@babel/runtime/regenerator */ \"./node_modules/@babel/runtime/regenerator/index.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/asyncToGenerator */ \"./node_modules/@babel/runtime/helpers/esm/asyncToGenerator.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_3__);\n/* harmony import */ var _UI_Close__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../UI/Close */ \"./components/UI/Close.tsx\");\n/* harmony import */ var _FindLine__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./FindLine */ \"./components/find/FindLine.tsx\");\n/* harmony import */ var _services_lifeSearch_services__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../services/lifeSearch.services */ \"./services/lifeSearch.services.ts\");\n/* harmony import */ var _FindResult__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./FindResult */ \"./components/find/FindResult.tsx\");\n/* module decorator */ module = __webpack_require__.hmd(module);\n\n\n\n\nvar _jsxFileName = \"/Users/vitalik/Documents/big_projects/andreas/client/components/find/FindWindow.tsx\",\n    _this = undefined,\n    _s = $RefreshSig$();\n\n\n\n\n\n\n\nvar FindWindow = function FindWindow(_ref) {\n  _s();\n\n  var onClick = _ref.onClick;\n\n  var _useState = (0,react__WEBPACK_IMPORTED_MODULE_3__.useState)(\"\"),\n      findWord = _useState[0],\n      setFindWord = _useState[1];\n\n  var AllData;\n\n  var _useState2 = (0,react__WEBPACK_IMPORTED_MODULE_3__.useState)([]),\n      Result = _useState2[0],\n      setResult = _useState2[1];\n\n  var flag = 0;\n\n  var getData = /*#__PURE__*/function () {\n    var _ref2 = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__.default)( /*#__PURE__*/_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().mark(function _callee() {\n      var video;\n      return _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().wrap(function _callee$(_context) {\n        while (1) {\n          switch (_context.prev = _context.next) {\n            case 0:\n              _context.next = 2;\n              return _services_lifeSearch_services__WEBPACK_IMPORTED_MODULE_6__.default.findAllData();\n\n            case 2:\n              video = _context.sent;\n              return _context.abrupt(\"return\", video);\n\n            case 4:\n            case \"end\":\n              return _context.stop();\n          }\n        }\n      }, _callee);\n    }));\n\n    return function getData() {\n      return _ref2.apply(this, arguments);\n    };\n  }();\n\n  var searchData = function searchData(word) {\n    return AllData.title.map(function (name, index) {\n      if (name.toLowerCase().includes(word.toLowerCase())) {\n        return {\n          title: name,\n          id: AllData.id[index],\n          image: AllData.image[index][0].url\n        };\n      }\n    }).filter(function (el) {\n      return el !== undefined;\n    });\n  };\n\n  var onChangeFind = /*#__PURE__*/function () {\n    var _ref3 = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_2__.default)( /*#__PURE__*/_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().mark(function _callee2(word) {\n      return _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_1___default().wrap(function _callee2$(_context2) {\n        while (1) {\n          switch (_context2.prev = _context2.next) {\n            case 0:\n              setFindWord(word);\n\n              if (!(!Object.keys(getData).length && !flag)) {\n                _context2.next = 6;\n                break;\n              }\n\n              _context2.next = 4;\n              return getData();\n\n            case 4:\n              AllData = _context2.sent;\n              flag = 1;\n\n            case 6:\n              setResult(searchData(word));\n\n            case 7:\n            case \"end\":\n              return _context2.stop();\n          }\n        }\n      }, _callee2);\n    }));\n\n    return function onChangeFind(_x) {\n      return _ref3.apply(this, arguments);\n    };\n  }();\n\n  return /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n    className: \"findWindow\",\n    children: [/*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_UI_Close__WEBPACK_IMPORTED_MODULE_4__.default, {\n      CloseClick: onClick\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 47,\n      columnNumber: 7\n    }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_FindLine__WEBPACK_IMPORTED_MODULE_5__.default, {\n      onChangeFind: onChangeFind,\n      value: findWord\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 48,\n      columnNumber: 7\n    }, _this), /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_FindResult__WEBPACK_IMPORTED_MODULE_7__.default, {\n      setIsFind: onClick,\n      videos: Result\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 49,\n      columnNumber: 7\n    }, _this)]\n  }, void 0, true, {\n    fileName: _jsxFileName,\n    lineNumber: 46,\n    columnNumber: 5\n  }, _this);\n};\n\n_s(FindWindow, \"5AIjw/LRjlMRKzT0BbrWrU08bAs=\");\n\n_c = FindWindow;\n/* harmony default export */ __webpack_exports__[\"default\"] = (FindWindow);\n\nvar _c;\n\n$RefreshReg$(_c, \"FindWindow\");\n\n;\n    var _a, _b;\n    // Legacy CSS implementations will `eval` browser code in a Node.js context\n    // to extract CSS. For backwards compatibility, we need to check we're in a\n    // browser context before continuing.\n    if (typeof self !== 'undefined' &&\n        // AMP / No-JS mode does not inject these helpers:\n        '$RefreshHelpers$' in self) {\n        var currentExports = module.__proto__.exports;\n        var prevExports = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevExports) !== null && _b !== void 0 ? _b : null;\n        // This cannot happen in MainTemplate because the exports mismatch between\n        // templating and execution.\n        self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n        // A module can be accepted automatically based on its exports, e.g. when\n        // it is a Refresh Boundary.\n        if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n            // Save the previous exports on update so we can compare the boundary\n            // signatures.\n            module.hot.dispose(function (data) {\n                data.prevExports = currentExports;\n            });\n            // Unconditionally accept an update to this module, we'll check if it's\n            // still a Refresh Boundary later.\n            module.hot.accept();\n            // This field is set when the previous version of this module was a\n            // Refresh Boundary, letting us know we need to check for invalidation or\n            // enqueue an update.\n            if (prevExports !== null) {\n                // A boundary can become ineligible if its exports are incompatible\n                // with the previous exports.\n                //\n                // For example, if you add/remove/change exports, we'll want to\n                // re-execute the importing modules, and force those components to\n                // re-render. Similarly, if you convert a class component to a\n                // function, we want to invalidate the boundary.\n                if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevExports, currentExports)) {\n                    module.hot.invalidate();\n                }\n                else {\n                    self.$RefreshHelpers$.scheduleUpdate();\n                }\n            }\n        }\n        else {\n            // Since we just executed the code for the module, it's possible that the\n            // new exports made it ineligible for being a boundary.\n            // We only care about the case when we were _previously_ a boundary,\n            // because we already accepted this update (accidental side effect).\n            var isNoLongerABoundary = prevExports !== null;\n            if (isNoLongerABoundary) {\n                module.hot.invalidate();\n            }\n        }\n    }\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vY29tcG9uZW50cy9maW5kL0ZpbmRXaW5kb3cudHN4PzMyNDYiXSwibmFtZXMiOlsiRmluZFdpbmRvdyIsIm9uQ2xpY2siLCJ1c2VTdGF0ZSIsImZpbmRXb3JkIiwic2V0RmluZFdvcmQiLCJBbGxEYXRhIiwiUmVzdWx0Iiwic2V0UmVzdWx0IiwiZmxhZyIsImdldERhdGEiLCJsaWZlU2VhcmNoU2VydmljZXMiLCJ2aWRlbyIsInNlYXJjaERhdGEiLCJ3b3JkIiwidGl0bGUiLCJtYXAiLCJuYW1lIiwiaW5kZXgiLCJ0b0xvd2VyQ2FzZSIsImluY2x1ZGVzIiwiaWQiLCJpbWFnZSIsInVybCIsImZpbHRlciIsImVsIiwidW5kZWZpbmVkIiwib25DaGFuZ2VGaW5kIiwiT2JqZWN0Iiwia2V5cyIsImxlbmd0aCJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFNQSxJQUFNQSxVQUFVLEdBQUcsU0FBYkEsVUFBYSxPQUEwQjtBQUFBOztBQUFBLE1BQXhCQyxPQUF3QixRQUF4QkEsT0FBd0I7O0FBQUEsa0JBQ1hDLCtDQUFRLENBQVMsRUFBVCxDQURHO0FBQUEsTUFDcENDLFFBRG9DO0FBQUEsTUFDMUJDLFdBRDBCOztBQUUzQyxNQUFJQyxPQUFKOztBQUYyQyxtQkFHZkgsK0NBQVEsQ0FBZSxFQUFmLENBSE87QUFBQSxNQUdwQ0ksTUFIb0M7QUFBQSxNQUc1QkMsU0FINEI7O0FBSTNDLE1BQUlDLElBQUksR0FBRyxDQUFYOztBQUVBLE1BQU1DLE9BQU87QUFBQSw0VEFBRztBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBLHFCQUNNQyw4RUFBQSxFQUROOztBQUFBO0FBQ1JDLG1CQURRO0FBQUEsK0NBRVBBLEtBRk87O0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUEsS0FBSDs7QUFBQSxvQkFBUEYsT0FBTztBQUFBO0FBQUE7QUFBQSxLQUFiOztBQUtBLE1BQU1HLFVBQVUsR0FBRyxTQUFiQSxVQUFhLENBQUNDLElBQUQsRUFBZ0M7QUFDakQsV0FBT1IsT0FBTyxDQUFDUyxLQUFSLENBQWNDLEdBQWQsQ0FBa0IsVUFBQ0MsSUFBRCxFQUFlQyxLQUFmLEVBQWlDO0FBQ3hELFVBQUlELElBQUksQ0FBQ0UsV0FBTCxHQUFtQkMsUUFBbkIsQ0FBNEJOLElBQUksQ0FBQ0ssV0FBTCxFQUE1QixDQUFKLEVBQXFEO0FBQ25ELGVBQU87QUFDTEosZUFBSyxFQUFFRSxJQURGO0FBRUxJLFlBQUUsRUFBRWYsT0FBTyxDQUFDZSxFQUFSLENBQVdILEtBQVgsQ0FGQztBQUdMSSxlQUFLLEVBQUdoQixPQUFPLENBQUNnQixLQUFSLENBQWNKLEtBQWQsQ0FBRCxDQUF1QixDQUF2QixFQUEwQks7QUFINUIsU0FBUDtBQUtEO0FBQ0YsS0FSTSxFQVFKQyxNQVJJLENBUUcsVUFBQ0MsRUFBRCxFQUFvQjtBQUM1QixhQUFRQSxFQUFFLEtBQUtDLFNBQWY7QUFDRCxLQVZNLENBQVA7QUFXRCxHQVpEOztBQWNBLE1BQU1DLFlBQVk7QUFBQSw0VEFBRyxrQkFBT2IsSUFBUDtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQ25CVCx5QkFBVyxDQUFDUyxJQUFELENBQVg7O0FBRG1CLG9CQUVmLENBQUNjLE1BQU0sQ0FBQ0MsSUFBUCxDQUFZbkIsT0FBWixFQUFxQm9CLE1BQXRCLElBQWdDLENBQUNyQixJQUZsQjtBQUFBO0FBQUE7QUFBQTs7QUFBQTtBQUFBLHFCQUdEQyxPQUFPLEVBSE47O0FBQUE7QUFHakJKLHFCQUhpQjtBQUlqQkcsa0JBQUksR0FBRyxDQUFQOztBQUppQjtBQU1uQkQsdUJBQVMsQ0FBQ0ssVUFBVSxDQUFDQyxJQUFELENBQVgsQ0FBVDs7QUFObUI7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUEsS0FBSDs7QUFBQSxvQkFBWmEsWUFBWTtBQUFBO0FBQUE7QUFBQSxLQUFsQjs7QUFTQSxzQkFDRTtBQUFLLGFBQVMsRUFBQyxZQUFmO0FBQUEsNEJBQ0UsOERBQUMsOENBQUQ7QUFBTyxnQkFBVSxFQUFFekI7QUFBbkI7QUFBQTtBQUFBO0FBQUE7QUFBQSxhQURGLGVBRUUsOERBQUMsOENBQUQ7QUFBVSxrQkFBWSxFQUFFeUIsWUFBeEI7QUFBc0MsV0FBSyxFQUFFdkI7QUFBN0M7QUFBQTtBQUFBO0FBQUE7QUFBQSxhQUZGLGVBR0UsOERBQUMsZ0RBQUQ7QUFBWSxlQUFTLEVBQUVGLE9BQXZCO0FBQWdDLFlBQU0sRUFBRUs7QUFBeEM7QUFBQTtBQUFBO0FBQUE7QUFBQSxhQUhGO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQSxXQURGO0FBT0QsQ0F6Q0Q7O0dBQU1OLFU7O0tBQUFBLFU7QUEyQ04sK0RBQWVBLFVBQWYiLCJmaWxlIjoiLi9jb21wb25lbnRzL2ZpbmQvRmluZFdpbmRvdy50c3guanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgUmVhY3QsIHt1c2VFZmZlY3QsIHVzZU1lbW8sIHVzZVN0YXRlfSBmcm9tICdyZWFjdCdcbmltcG9ydCBDbG9zZSBmcm9tIFwiLi4vVUkvQ2xvc2VcIjtcbmltcG9ydCBGaW5kTGluZSBmcm9tIFwiLi9GaW5kTGluZVwiO1xuaW1wb3J0IGxpZmVTZWFyY2hTZXJ2aWNlcyBmcm9tIFwiLi4vLi4vc2VydmljZXMvbGlmZVNlYXJjaC5zZXJ2aWNlc1wiO1xuaW1wb3J0IEZpbmRSZXN1bHQsIHtWaWRlb0ZpbmRJfSBmcm9tIFwiLi9GaW5kUmVzdWx0XCI7XG5cbmludGVyZmFjZSBGaW5kUHJvcHMge1xuICBvbkNsaWNrOiBSZWFjdC5EaXNwYXRjaDxSZWFjdC5TZXRTdGF0ZUFjdGlvbjxib29sZWFuPj47XG59XG5cbmNvbnN0IEZpbmRXaW5kb3cgPSAoe29uQ2xpY2t9OiBGaW5kUHJvcHMpID0+IHtcbiAgY29uc3QgW2ZpbmRXb3JkLCBzZXRGaW5kV29yZF0gPSB1c2VTdGF0ZTxzdHJpbmc+KFwiXCIpXG4gIGxldCBBbGxEYXRhOiBhbnk7XG4gIGNvbnN0IFtSZXN1bHQsIHNldFJlc3VsdF0gPSB1c2VTdGF0ZTxWaWRlb0ZpbmRJW10+KFtdKVxuICBsZXQgZmxhZyA9IDA7XG5cbiAgY29uc3QgZ2V0RGF0YSA9IGFzeW5jICgpID0+IHtcbiAgICBjb25zdCB2aWRlbyA9IGF3YWl0IGxpZmVTZWFyY2hTZXJ2aWNlcy5maW5kQWxsRGF0YSgpO1xuICAgIHJldHVybiB2aWRlbztcbiAgfVxuXG4gIGNvbnN0IHNlYXJjaERhdGEgPSAod29yZDogc3RyaW5nKTogVmlkZW9GaW5kSVtdID0+IHtcbiAgICByZXR1cm4gQWxsRGF0YS50aXRsZS5tYXAoKG5hbWU6IHN0cmluZywgaW5kZXg6IG51bWJlcikgPT4ge1xuICAgICAgaWYgKG5hbWUudG9Mb3dlckNhc2UoKS5pbmNsdWRlcyh3b3JkLnRvTG93ZXJDYXNlKCkpKSB7XG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgdGl0bGU6IG5hbWUsXG4gICAgICAgICAgaWQ6IEFsbERhdGEuaWRbaW5kZXhdLFxuICAgICAgICAgIGltYWdlOiAoQWxsRGF0YS5pbWFnZVtpbmRleF0pWzBdLnVybCxcbiAgICAgICAgfTtcbiAgICAgIH1cbiAgICB9KS5maWx0ZXIoKGVsOiBWaWRlb0ZpbmRJKSA9PiB7XG4gICAgICByZXR1cm4gKGVsICE9PSB1bmRlZmluZWQpO1xuICAgIH0pXG4gIH1cblxuICBjb25zdCBvbkNoYW5nZUZpbmQgPSBhc3luYyAod29yZDogc3RyaW5nKSA9PiB7XG4gICAgc2V0RmluZFdvcmQod29yZCk7XG4gICAgaWYgKCFPYmplY3Qua2V5cyhnZXREYXRhKS5sZW5ndGggJiYgIWZsYWcpIHtcbiAgICAgIEFsbERhdGEgPSBhd2FpdCBnZXREYXRhKCk7XG4gICAgICBmbGFnID0gMTtcbiAgICB9XG4gICAgc2V0UmVzdWx0KHNlYXJjaERhdGEod29yZCkpO1xuICB9XG5cbiAgcmV0dXJuIChcbiAgICA8ZGl2IGNsYXNzTmFtZT1cImZpbmRXaW5kb3dcIj5cbiAgICAgIDxDbG9zZSBDbG9zZUNsaWNrPXtvbkNsaWNrfSAvPlxuICAgICAgPEZpbmRMaW5lIG9uQ2hhbmdlRmluZD17b25DaGFuZ2VGaW5kfSB2YWx1ZT17ZmluZFdvcmR9IC8+XG4gICAgICA8RmluZFJlc3VsdCBzZXRJc0ZpbmQ9e29uQ2xpY2t9IHZpZGVvcz17UmVzdWx0fSAvPlxuICAgIDwvZGl2PlxuICApO1xufTtcblxuZXhwb3J0IGRlZmF1bHQgRmluZFdpbmRvdzsiXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./components/find/FindWindow.tsx\n");

/***/ })

});