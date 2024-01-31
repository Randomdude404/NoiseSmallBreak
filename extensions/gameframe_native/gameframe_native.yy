{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "gameframe_native",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 3035426170322550982,
  "date": "2019-12-12T01:34:29",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.0.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"gameframe.dll","constants":[],"copyToTargets":64,"filename":"gameframe.dll","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_mouse_in_window_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_mouse_in_window_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_init_raw_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_init_raw_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_syscommand_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_syscommand_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_monitors_1_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_get_monitors_1_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_double_click_time_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_get_double_click_time_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_is_natively_minimized_raw","argCount":2,"args":[
            1,
            2,
          ],"documentation":"","externalName":"gameframe_is_natively_minimized_raw","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_set_shadow","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"gameframe_set_shadow","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_shadow","argCount":0,"args":[],"documentation":"","externalName":"gameframe_get_shadow","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_monitors_2","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"gameframe_get_monitors_2","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_check_native_extension","argCount":0,"args":[],"documentation":"","externalName":"gameframe_check_native_extension","help":"","hidden":true,"kind":11,"returnType":2,},
      ],"init":"","kind":1,"order":[
        {"name":"gameframe_mouse_in_window_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_init_raw_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_syscommand_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_monitors_1_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_double_click_time_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_is_natively_minimized_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_set_shadow","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_shadow","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_monitors_2","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_check_native_extension","path":"extensions/gameframe_native/gameframe_native.yy",},
      ],"origname":"extensions\\gameframe.dll","ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"gameframe_x64.dll","TargetMask":6,},
      ],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"gameframe_native.gml","constants":[],"copyToTargets":9223372036854775807,"filename":"gameframe_native.gml","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_init_native","argCount":0,"args":[],"documentation":"","externalName":"gameframe_init_native","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_monitors","argCount":-1,"args":[],"documentation":"","externalName":"gameframe_get_monitors","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_prepare_buffer","argCount":1,"args":[],"documentation":"","externalName":"gameframe_prepare_buffer","help":"","hidden":true,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_buffer_read_chars","argCount":2,"args":[],"documentation":"","externalName":"gameframe_buffer_read_chars","help":"","hidden":true,"kind":11,"returnType":2,},
      ],"init":"gameframe_init_native","kind":2,"order":[
        {"name":"gameframe_init_native","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_monitors","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_prepare_buffer","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_buffer_read_chars","path":"extensions/gameframe_native/gameframe_native.yy",},
      ],"origname":"extensions\\gml.gml","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"autogen.gml","constants":[],"copyToTargets":-1,"filename":"autogen.gml","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_mouse_in_window","argCount":0,"args":[],"documentation":"","externalName":"gameframe_mouse_in_window","help":"gameframe_mouse_in_window()->bool","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_init_raw","argCount":0,"args":[],"documentation":"","externalName":"gameframe_init_raw","help":"gameframe_init_raw()","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_syscommand","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"gameframe_syscommand","help":"gameframe_syscommand(_sc:number)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_monitors_1","argCount":0,"args":[],"documentation":"","externalName":"gameframe_get_monitors_1","help":"gameframe_get_monitors_1()->int","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_get_double_click_time","argCount":0,"args":[],"documentation":"","externalName":"gameframe_get_double_click_time","help":"gameframe_get_double_click_time()->int","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"gameframe_is_natively_minimized","argCount":0,"args":[],"documentation":"","externalName":"gameframe_is_natively_minimized","help":"gameframe_is_natively_minimized()->bool","hidden":false,"kind":2,"returnType":2,},
      ],"init":"","kind":2,"order":[
        {"name":"gameframe_mouse_in_window","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_init_raw","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_syscommand","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_monitors_1","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_get_double_click_time","path":"extensions/gameframe_native/gameframe_native.yy",},
        {"name":"gameframe_is_natively_minimized","path":"extensions/gameframe_native/gameframe_native.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": true,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "Proprietary",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "gameframe",
    "path": "folders/Extensions/gameframe.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": 113497714299118,
  "tvosclassname": "",
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": "",
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}