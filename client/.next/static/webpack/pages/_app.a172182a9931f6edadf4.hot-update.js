/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("pages/_app",{

/***/ "./services/user.services.ts":
/*!***********************************!*\
  !*** ./services/user.services.ts ***!
  \***********************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": function() { return /* binding */ UserServices; }\n/* harmony export */ });\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./node_modules/@babel/runtime/regenerator */ \"./node_modules/@babel/runtime/regenerator/index.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/asyncToGenerator */ \"./node_modules/@babel/runtime/helpers/esm/asyncToGenerator.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_classCallCheck__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/classCallCheck */ \"./node_modules/@babel/runtime/helpers/esm/classCallCheck.js\");\n/* harmony import */ var _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_createClass__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./node_modules/@babel/runtime/helpers/esm/createClass */ \"./node_modules/@babel/runtime/helpers/esm/createClass.js\");\n/* harmony import */ var _http__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../http */ \"./http/index.ts\");\n/* module decorator */ module = __webpack_require__.hmd(module);\n\n\n\n\n\n\nvar UserServices = /*#__PURE__*/function () {\n  function UserServices() {\n    (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_classCallCheck__WEBPACK_IMPORTED_MODULE_2__.default)(this, UserServices);\n  }\n\n  (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_createClass__WEBPACK_IMPORTED_MODULE_3__.default)(UserServices, null, [{\n    key: \"fetchUsers\",\n    value: function fetchUsers() {\n      return _http__WEBPACK_IMPORTED_MODULE_4__.default.get('/users');\n    }\n  }, {\n    key: \"logged\",\n    value: function () {\n      var _logged = (0,_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_helpers_esm_asyncToGenerator__WEBPACK_IMPORTED_MODULE_1__.default)( /*#__PURE__*/_Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default().mark(function _callee() {\n        return _Users_vitalik_Documents_big_projects_andreas_client_node_modules_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default().wrap(function _callee$(_context) {\n          while (1) {\n            switch (_context.prev = _context.next) {\n              case 0:\n                return _context.abrupt(\"return\", _http__WEBPACK_IMPORTED_MODULE_4__.default.post('/user/logged'));\n\n              case 1:\n              case \"end\":\n                return _context.stop();\n            }\n          }\n        }, _callee);\n      }));\n\n      function logged() {\n        return _logged.apply(this, arguments);\n      }\n\n      return logged;\n    }()\n  }, {\n    key: \"logout\",\n    value: function logout() {\n      localStorage.removeItem('token');\n    }\n  }, {\n    key: \"findRole\",\n    value: function findRole(role, user) {\n      var flag = false;\n\n      if (user.roles) {\n        user.roles.map(function (el, index) {\n          if (el.name !== 'admin') {\n            flag = true;\n          }\n        });\n      }\n\n      return flag;\n    }\n  }]);\n\n  return UserServices;\n}();\n\n\n\n;\n    var _a, _b;\n    // Legacy CSS implementations will `eval` browser code in a Node.js context\n    // to extract CSS. For backwards compatibility, we need to check we're in a\n    // browser context before continuing.\n    if (typeof self !== 'undefined' &&\n        // AMP / No-JS mode does not inject these helpers:\n        '$RefreshHelpers$' in self) {\n        var currentExports = module.__proto__.exports;\n        var prevExports = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevExports) !== null && _b !== void 0 ? _b : null;\n        // This cannot happen in MainTemplate because the exports mismatch between\n        // templating and execution.\n        self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n        // A module can be accepted automatically based on its exports, e.g. when\n        // it is a Refresh Boundary.\n        if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n            // Save the previous exports on update so we can compare the boundary\n            // signatures.\n            module.hot.dispose(function (data) {\n                data.prevExports = currentExports;\n            });\n            // Unconditionally accept an update to this module, we'll check if it's\n            // still a Refresh Boundary later.\n            module.hot.accept();\n            // This field is set when the previous version of this module was a\n            // Refresh Boundary, letting us know we need to check for invalidation or\n            // enqueue an update.\n            if (prevExports !== null) {\n                // A boundary can become ineligible if its exports are incompatible\n                // with the previous exports.\n                //\n                // For example, if you add/remove/change exports, we'll want to\n                // re-execute the importing modules, and force those components to\n                // re-render. Similarly, if you convert a class component to a\n                // function, we want to invalidate the boundary.\n                if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevExports, currentExports)) {\n                    module.hot.invalidate();\n                }\n                else {\n                    self.$RefreshHelpers$.scheduleUpdate();\n                }\n            }\n        }\n        else {\n            // Since we just executed the code for the module, it's possible that the\n            // new exports made it ineligible for being a boundary.\n            // We only care about the case when we were _previously_ a boundary,\n            // because we already accepted this update (accidental side effect).\n            var isNoLongerABoundary = prevExports !== null;\n            if (isNoLongerABoundary) {\n                module.hot.invalidate();\n            }\n        }\n    }\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vc2VydmljZXMvdXNlci5zZXJ2aWNlcy50cz8zNDQ3Il0sIm5hbWVzIjpbIlVzZXJTZXJ2aWNlcyIsIiRhcGkiLCJsb2NhbFN0b3JhZ2UiLCJyZW1vdmVJdGVtIiwicm9sZSIsInVzZXIiLCJmbGFnIiwicm9sZXMiLCJtYXAiLCJlbCIsImluZGV4IiwibmFtZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7O0FBQUE7O0lBS3FCQSxZOzs7Ozs7O2lDQUNrQztBQUNuRCxhQUFPQyw4Q0FBQSxDQUFrQixRQUFsQixDQUFQO0FBQ0Q7Ozs7Ozs7OztpREFHUUEsK0NBQUEsQ0FBVSxjQUFWLEM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs2QkFHYTtBQUNwQkMsa0JBQVksQ0FBQ0MsVUFBYixDQUF3QixPQUF4QjtBQUNEOzs7NkJBRWVDLEksRUFBY0MsSSxFQUFzQjtBQUNsRCxVQUFJQyxJQUFJLEdBQUcsS0FBWDs7QUFDQSxVQUFJRCxJQUFJLENBQUNFLEtBQVQsRUFBZ0I7QUFDZEYsWUFBSSxDQUFDRSxLQUFMLENBQVdDLEdBQVgsQ0FBZSxVQUFDQyxFQUFELEVBQUtDLEtBQUwsRUFBZTtBQUM1QixjQUFJRCxFQUFFLENBQUNFLElBQUgsS0FBWSxPQUFoQixFQUF5QjtBQUN2QkwsZ0JBQUksR0FBRyxJQUFQO0FBQ0Q7QUFDRixTQUpEO0FBS0Q7O0FBQ0QsYUFBT0EsSUFBUDtBQUNEIiwiZmlsZSI6Ii4vc2VydmljZXMvdXNlci5zZXJ2aWNlcy50cy5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCAkYXBpIGZyb20gXCIuLi9odHRwXCI7XG5pbXBvcnQgeyBBeGlvc1Jlc3BvbnNlIH0gZnJvbSBcImF4aW9zXCI7XG5pbXBvcnQgeyBBdXRoUmVzcG9uc2UgfSBmcm9tIFwiLi4vbW9kZWxzL3Jlc3BvbnNlL0F1dGhSZXNwb25zZVwiO1xuaW1wb3J0IHsgSVVzZXIgfSBmcm9tIFwiLi4vbW9kZWxzL0lVc2VyXCI7XG5cbmV4cG9ydCBkZWZhdWx0IGNsYXNzIFVzZXJTZXJ2aWNlcyB7XG4gIHN0YXRpYyBmZXRjaFVzZXJzKCk6IFByb21pc2U8QXhpb3NSZXNwb25zZTxJVXNlcltdPj4ge1xuICAgIHJldHVybiAkYXBpLmdldDxJVXNlcltdPignL3VzZXJzJyk7XG4gIH1cblxuICBzdGF0aWMgYXN5bmMgbG9nZ2VkKCk6IFByb21pc2U8YW55PiB7XG4gICAgcmV0dXJuICRhcGkucG9zdCgnL3VzZXIvbG9nZ2VkJyk7XG4gIH1cblxuICBzdGF0aWMgbG9nb3V0KCk6IHZvaWQge1xuICAgIGxvY2FsU3RvcmFnZS5yZW1vdmVJdGVtKCd0b2tlbicpO1xuICB9XG5cbiAgc3RhdGljIGZpbmRSb2xlKHJvbGU6IHN0cmluZywgdXNlcjogSVVzZXIpOiBib29sZWFuIHtcbiAgICBsZXQgZmxhZyA9IGZhbHNlO1xuICAgIGlmICh1c2VyLnJvbGVzKSB7XG4gICAgICB1c2VyLnJvbGVzLm1hcCgoZWwsIGluZGV4KSA9PiB7XG4gICAgICAgIGlmIChlbC5uYW1lICE9PSAnYWRtaW4nKSB7XG4gICAgICAgICAgZmxhZyA9IHRydWU7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cbiAgICByZXR1cm4gZmxhZztcbiAgfVxufVxuIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./services/user.services.ts\n");

/***/ })

});