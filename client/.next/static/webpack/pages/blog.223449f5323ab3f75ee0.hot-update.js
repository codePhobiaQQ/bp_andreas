/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("pages/blog",{

/***/ "./pages/blog.tsx":
/*!************************!*\
  !*** ./pages/blog.tsx ***!
  \************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"__N_SSP\": function() { return /* binding */ __N_SSP; }\n/* harmony export */ });\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"./node_modules/react/jsx-dev-runtime.js\");\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _hoc_LkDashboardGrid__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../hoc/LkDashboardGrid */ \"./hoc/LkDashboardGrid.tsx\");\n/* harmony import */ var _components_Blog__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../components/Blog */ \"./components/BlogEl.tsx\");\n/* module decorator */ module = __webpack_require__.hmd(module);\n\n\nvar _jsxFileName = \"/Users/vitalik/Documents/big_projects/andreas/client/pages/blog.tsx\",\n    _this = undefined,\n    _s = $RefreshSig$();\n\n\n\n\n\nvar Blog = function Blog(_ref) {\n  _s();\n\n  var blogs = _ref.blogs;\n  (0,react__WEBPACK_IMPORTED_MODULE_1__.useEffect)(function () {\n    console.log(blogs);\n  });\n  return /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_hoc_LkDashboardGrid__WEBPACK_IMPORTED_MODULE_2__.default, {\n    children: /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"main\", {\n      className: \"admin__main\",\n      children: blogs.map(function (blog, key) {\n        return /*#__PURE__*/(0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_components_Blog__WEBPACK_IMPORTED_MODULE_3__.default, {\n          blog: blog\n        }, void 0, false, {\n          fileName: _jsxFileName,\n          lineNumber: 19,\n          columnNumber: 9\n        }, _this);\n      })\n    }, void 0, false, {\n      fileName: _jsxFileName,\n      lineNumber: 17,\n      columnNumber: 5\n    }, _this)\n  }, void 0, false, {\n    fileName: _jsxFileName,\n    lineNumber: 16,\n    columnNumber: 10\n  }, _this);\n};\n\n_s(Blog, \"OD7bBpZva5O2jO+Puf00hKivP7c=\");\n\n_c = Blog;\nvar __N_SSP = true;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Blog);\n\nvar _c;\n\n$RefreshReg$(_c, \"Blog\");\n\n;\n    var _a, _b;\n    // Legacy CSS implementations will `eval` browser code in a Node.js context\n    // to extract CSS. For backwards compatibility, we need to check we're in a\n    // browser context before continuing.\n    if (typeof self !== 'undefined' &&\n        // AMP / No-JS mode does not inject these helpers:\n        '$RefreshHelpers$' in self) {\n        var currentExports = module.__proto__.exports;\n        var prevExports = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevExports) !== null && _b !== void 0 ? _b : null;\n        // This cannot happen in MainTemplate because the exports mismatch between\n        // templating and execution.\n        self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n        // A module can be accepted automatically based on its exports, e.g. when\n        // it is a Refresh Boundary.\n        if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n            // Save the previous exports on update so we can compare the boundary\n            // signatures.\n            module.hot.dispose(function (data) {\n                data.prevExports = currentExports;\n            });\n            // Unconditionally accept an update to this module, we'll check if it's\n            // still a Refresh Boundary later.\n            module.hot.accept();\n            // This field is set when the previous version of this module was a\n            // Refresh Boundary, letting us know we need to check for invalidation or\n            // enqueue an update.\n            if (prevExports !== null) {\n                // A boundary can become ineligible if its exports are incompatible\n                // with the previous exports.\n                //\n                // For example, if you add/remove/change exports, we'll want to\n                // re-execute the importing modules, and force those components to\n                // re-render. Similarly, if you convert a class component to a\n                // function, we want to invalidate the boundary.\n                if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevExports, currentExports)) {\n                    module.hot.invalidate();\n                }\n                else {\n                    self.$RefreshHelpers$.scheduleUpdate();\n                }\n            }\n        }\n        else {\n            // Since we just executed the code for the module, it's possible that the\n            // new exports made it ineligible for being a boundary.\n            // We only care about the case when we were _previously_ a boundary,\n            // because we already accepted this update (accidental side effect).\n            var isNoLongerABoundary = prevExports !== null;\n            if (isNoLongerABoundary) {\n                module.hot.invalidate();\n            }\n        }\n    }\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vcGFnZXMvYmxvZy50c3g/NzRhMCJdLCJuYW1lcyI6WyJCbG9nIiwiYmxvZ3MiLCJ1c2VFZmZlY3QiLCJjb25zb2xlIiwibG9nIiwibWFwIiwiYmxvZyIsImtleSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQTtBQUNBO0FBSUE7O0FBTUEsSUFBTUEsSUFBeUIsR0FBRyxTQUE1QkEsSUFBNEIsT0FBZTtBQUFBOztBQUFBLE1BQVpDLEtBQVksUUFBWkEsS0FBWTtBQUMvQ0Msa0RBQVMsQ0FBQyxZQUFNO0FBQ2RDLFdBQU8sQ0FBQ0MsR0FBUixDQUFZSCxLQUFaO0FBQ0QsR0FGUSxDQUFUO0FBR0Esc0JBQU8sOERBQUMseURBQUQ7QUFBQSwyQkFDTDtBQUFNLGVBQVMsRUFBQyxhQUFoQjtBQUFBLGdCQUNHQSxLQUFLLENBQUNJLEdBQU4sQ0FBVSxVQUFDQyxJQUFELEVBQU9DLEdBQVA7QUFBQSw0QkFDVCw4REFBQyxxREFBRDtBQUFRLGNBQUksRUFBRUQ7QUFBZDtBQUFBO0FBQUE7QUFBQTtBQUFBLGlCQURTO0FBQUEsT0FBVjtBQURIO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFESztBQUFBO0FBQUE7QUFBQTtBQUFBLFdBQVA7QUFPRCxDQVhEOztHQUFNTixJOztLQUFBQSxJOztBQWFOLCtEQUFlQSxJQUFmIiwiZmlsZSI6Ii4vcGFnZXMvYmxvZy50c3guanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgUmVhY3QsIHt1c2VFZmZlY3R9IGZyb20gXCJyZWFjdFwiO1xuaW1wb3J0IExrRGFzaGJvYXJkR3JpZCBmcm9tIFwiLi4vaG9jL0xrRGFzaGJvYXJkR3JpZFwiO1xuaW1wb3J0IHsgSUJsb2cgfSBmcm9tIFwiLi4vbW9kZWxzL0lCbG9nXCI7XG5pbXBvcnQgQmxvZ1NlcnZpY2VzIGZyb20gXCIuLi9zZXJ2aWNlcy9ibG9nLnNlcnZpY2VzXCI7XG5pbXBvcnQge05leHRQYWdlfSBmcm9tIFwibmV4dFwiO1xuaW1wb3J0IEJsb2dFbCBmcm9tIFwiLi4vY29tcG9uZW50cy9CbG9nXCJcblxuaW50ZXJmYWNlIEJsb2dQcm9wcyB7XG4gIGJsb2dzOiBJQmxvZ1tdO1xufVxuXG5jb25zdCBCbG9nOiBOZXh0UGFnZTxCbG9nUHJvcHM+ID0gKHsgYmxvZ3MgfSkgPT4ge1xuICB1c2VFZmZlY3QoKCkgPT4ge1xuICAgIGNvbnNvbGUubG9nKGJsb2dzKTtcbiAgfSlcbiAgcmV0dXJuIDxMa0Rhc2hib2FyZEdyaWQ+XG4gICAgPG1haW4gY2xhc3NOYW1lPVwiYWRtaW5fX21haW5cIj5cbiAgICAgIHtibG9ncy5tYXAoKGJsb2csIGtleSkgPT4gKFxuICAgICAgICA8QmxvZ0VsIGJsb2c9e2Jsb2d9IC8+XG4gICAgICApKX1cbiAgICA8L21haW4+XG4gIDwvTGtEYXNoYm9hcmRHcmlkPjtcbn07XG5cbmV4cG9ydCBkZWZhdWx0IEJsb2c7XG5cbmV4cG9ydCBhc3luYyBmdW5jdGlvbiBnZXRTZXJ2ZXJTaWRlUHJvcHMoKSB7XG4gIGNvbnN0IGJsb2dzOiBJQmxvZ1tdID0gYXdhaXQgQmxvZ1NlcnZpY2VzLmdldEFsbCgpIHx8IFtdO1xuICByZXR1cm4ge1xuICAgIHByb3BzOiB7IGJsb2dzIH0sXG4gIH07XG59Il0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./pages/blog.tsx\n");

/***/ })

});