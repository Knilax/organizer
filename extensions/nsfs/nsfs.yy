{
    "id": "363c9f2d-7c3a-4f76-a8ef-1ad8ec2c7364",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "nsfs",
    "IncludedResources": [
        "Sprites\\spr_nsfs_demo_white32",
        "Scripts\\demo-scripts\\demo_button",
        "Scripts\\demo-scripts\\demo_trace",
        "Scripts\\demo-scripts\\demo_prompt",
        "Scripts\\demo-scripts\\demo_param",
        "Scripts\\demo-scripts\\demo_sfmt",
        "Scripts\\demo-scripts\\demo_status",
        "Fonts\\fnt_nsfs_demo",
        "Objects\\obj_nsfs_demo",
        "Rooms\\rm_nsfs_demo",
        "Included Files\\nsfs-doc.html"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554163798254,
    "date": "2019-08-24 08:01:57",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "6c0171d1-2476-4b35-8fc9-b2f64cbad88f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "nsfs.dll",
            "final": "",
            "functions": [
                {
                    "id": "ec1206c4-f620-4b6b-b2d0-16fc166fe983",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_get_status",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_get_status",
                    "returnType": 2
                },
                {
                    "id": "a80ff76c-b50c-4350-9382-22336edc0c88",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_get_directory",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_get_directory",
                    "returnType": 1
                },
                {
                    "id": "291bd332-cebe-423f-b699-56a58972a5c5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "nsfs_set_directory",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_set_directory",
                    "returnType": 2
                },
                {
                    "id": "37a6ec14-64a3-472c-9fdf-f9683142fc5f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_init_raw",
                    "returnType": 2
                },
                {
                    "id": "2df5a6d9-4ed3-4ab3-a58d-f313c8404191",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_get_attributes_ns",
                    "help": "file_get_attributes_ns(path) : returned values as per https:\/\/msdn.microsoft.com\/en-us\/library\/windows\/desktop\/gg258117(v=vs.85).aspx",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_get_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "26f0c0a9-2208-4603-ab95-df1fdc6bae89",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_set_attributes_ns",
                    "help": "file_set_attributes_ns(path, flags) : flags as per https:\/\/msdn.microsoft.com\/en-us\/library\/windows\/desktop\/gg258117(v=vs.85).aspx",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_set_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "6d35c8d5-9224-405e-bcc9-f4c798c5e995",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_get_size_ns",
                    "help": "file_get_size_ns(path) : Returns size of the given file, in bytes.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_get_size_ns",
                    "returnType": 2
                },
                {
                    "id": "6d34d954-9b89-4900-aac3-9c36c76e793b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists_ns",
                    "help": "file_exists_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_exists_ns",
                    "returnType": 2
                },
                {
                    "id": "39cfdbcc-a6ed-4d49-ba26-ceec776513f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists_ns",
                    "help": "directory_exists_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_exists_ns",
                    "returnType": 2
                },
                {
                    "id": "365a9540-8a46-471e-bf44-666d2590eedb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete_ns",
                    "help": "file_delete_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_delete_ns",
                    "returnType": 2
                },
                {
                    "id": "2d0f5d82-06ab-4f3d-bc81-d88618f6bf3c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_create_ns",
                    "help": "directory_create_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_create_ns",
                    "returnType": 2
                },
                {
                    "id": "83428fe0-1260-4da5-910d-6b5fdbc54a07",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_delete_ns",
                    "help": "directory_delete_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_delete_ns",
                    "returnType": 2
                },
                {
                    "id": "ec294bd3-743d-4f1b-bfef-ca275598af05",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy_ns",
                    "help": "file_copy_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_copy_ns",
                    "returnType": 2
                },
                {
                    "id": "59ee10ef-d31b-4dcc-b4c8-18d5a381d915",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_copy_ns",
                    "help": "directory_copy_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_copy_ns",
                    "returnType": 2
                },
                {
                    "id": "369a2395-dff9-4791-bcfe-6602f41691db",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename_ns",
                    "help": "file_rename_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_rename_ns",
                    "returnType": 2
                },
                {
                    "id": "673ad878-74d2-427b-8bc5-36f76e73bf2d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_rename_ns",
                    "help": "directory_rename_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_rename_ns",
                    "returnType": 2
                },
                {
                    "id": "2dab6cfa-895c-4dd0-b0bf-1609d0dd0414",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_move_ns",
                    "help": "file_move_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_move_ns",
                    "returnType": 2
                },
                {
                    "id": "c0811af6-1d9a-4978-9cf0-5bcdeab24b2b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_move_ns",
                    "help": "directory_move_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_move_ns",
                    "returnType": 2
                },
                {
                    "id": "42b65aad-6073-4761-a54c-db416aadec4d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_find_first_ns",
                    "help": "file_find_first_ns(mask)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_first_ns",
                    "returnType": 1
                },
                {
                    "id": "89a8a62c-321e-42dc-9e9b-1c0e9c4eaf4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_next_ns",
                    "help": "file_find_next_ns()",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_next_ns",
                    "returnType": 1
                },
                {
                    "id": "d7c42f3d-1210-4c12-8983-add21e976928",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_close_ns",
                    "help": "file_find_close_ns()",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_close_ns",
                    "returnType": 2
                },
                {
                    "id": "cbe660da-e131-4887-abc9-401b43cf7ebb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_attributes_ns",
                    "help": "file_find_attributes_ns() : Returns the attributes of the current file in file_find",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "d820dae4-5ddc-44c3-8ffc-4f97ba716774",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_size_ns",
                    "help": "file_find_size_ns() : Returns the size (in bytes) of the current file in file_find",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_size_ns",
                    "returnType": 2
                },
                {
                    "id": "44451514-2de4-4a53-b5da-adab1afd77b9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_read_ns",
                    "help": "file_text_open_read_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_read_ns",
                    "returnType": 2
                },
                {
                    "id": "23457875-d335-4ea4-bb05-1988f1e28924",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_write_ns",
                    "help": "file_text_open_write_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_write_ns",
                    "returnType": 2
                },
                {
                    "id": "928835be-507d-4f02-b76e-aa9039cb0240",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_append_ns",
                    "help": "file_text_open_append_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_append_ns",
                    "returnType": 2
                },
                {
                    "id": "45578702-bb28-43a4-a883-6a614d1d0a02",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_close_ns",
                    "help": "file_text_close_ns(fileid)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_close_ns",
                    "returnType": 2
                },
                {
                    "id": "1cac5ad2-16a6-43ce-b9d5-8ca9e7875e71",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_eof_ns",
                    "help": "file_text_eof_ns(fileid)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_eof_ns",
                    "returnType": 2
                },
                {
                    "id": "57cf5377-4636-4f40-b2bd-5b65afd8c457",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_read_line_ns",
                    "help": "file_text_read_line_ns(fileid) : Reads the next line from a file, skips line separators after it.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_read_line_ns",
                    "returnType": 1
                },
                {
                    "id": "044a266f-7db8-45ef-ac20-31fb742ae032",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_text_write_line_ns",
                    "help": "file_text_write_line_ns(fileid, text) : Writes a line and line separators into a file.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_write_line_ns",
                    "returnType": 2
                },
                {
                    "id": "4ed69eab-8320-48b7-a4ac-175900e3de7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "buffer_load_ns_raw1",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns_raw1",
                    "returnType": 2
                },
                {
                    "id": "3c402443-8044-4420-a79f-bb82401d7435",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "buffer_load_ns_raw2",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns_raw2",
                    "returnType": 2
                },
                {
                    "id": "bccf0845-d2f8-4a8c-ac64-8f3235e76ff8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        2,
                        2
                    ],
                    "externalName": "buffer_save_ns_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ns_raw",
                    "returnType": 2
                },
                {
                    "id": "42aedbce-9e79-4d53-8570-9397dc8849a7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "string_load_ns",
                    "help": "string_load_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "string_load_ns",
                    "returnType": 1
                },
                {
                    "id": "6b62d49c-297e-4d45-9470-73ed84900a5d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "string_save_ns",
                    "help": "string_save_ns(str, path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "string_save_ns",
                    "returnType": 2
                },
                {
                    "id": "1f337ebb-fea0-43e6-90d8-e5c1d3504d24",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "string_codepage",
                    "help": "string_codepage(str, codepage_from, codepage_to) : Converts a string between codepages. From\/to can be set to -1 for UTF-8",
                    "hidden": false,
                    "kind": 11,
                    "name": "string_codepage",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\nsfs.dll",
            "uncompress": false
        },
        {
            "id": "762cf6e1-346c-4220-9235-6bb434b43546",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "2019c7c4-adb6-476d-bef2-aea8ba45f094",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "nsfs_status",
                    "hidden": false,
                    "value": "nsfs_get_status()"
                },
                {
                    "id": "65a19503-f65c-446c-8304-c98621687070",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "nsfs_is_available",
                    "hidden": false,
                    "value": "global.g_nsfs_is_available"
                }
            ],
            "copyToTargets": 113497714299118,
            "filename": "nsfs.gml",
            "final": "",
            "functions": [
                {
                    "id": "0a3fba6a-4dcb-4e4a-9f98-999136b15d64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_init",
                    "returnType": 2
                },
                {
                    "id": "aac15c32-8e7a-4c00-88ad-31e9e8263726",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "buffer_load_ns",
                    "help": "buffer_load_ns(nspath, kind = buffer_grow)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns",
                    "returnType": 2
                },
                {
                    "id": "f20af24c-815c-47a4-b6c7-7a14107874a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "buffer_save_ns",
                    "help": "buffer_save_ns(buffer)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ns",
                    "returnType": 2
                },
                {
                    "id": "67c5e936-780d-441b-8cbc-bee2b4617db8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "buffer_save_ext_ns",
                    "help": "buffer_save_ext_ns(buffer, path, offset, size)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ext_ns",
                    "returnType": 2
                },
                {
                    "id": "406ad1d1-de54-4e13-b090-2711b2ddc186",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "ini_open_ns",
                    "help": "ini_open_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "ini_open_ns",
                    "returnType": 2
                },
                {
                    "id": "366375bb-e846-46cc-8be5-9a158d609212",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ini_close_ns",
                    "help": "ini_close_ns()",
                    "hidden": false,
                    "kind": 11,
                    "name": "ini_close_ns",
                    "returnType": 2
                },
                {
                    "id": "0c7eb908-48af-4d23-aa23-9ea2bc22fb6f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 7,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "sprite_replace_ns",
                    "help": "sprite_replace_ns(ind, nspath, imgnumb, removeback, smooth, xorig, yorig)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sprite_replace_ns",
                    "returnType": 2
                },
                {
                    "id": "4003beae-f9fe-4a0c-b277-81057db95f16",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "sprite_add_ns",
                    "help": "sprite_add_ns(nspath, imgnumb, removeback, smooth, xorig, yorig)",
                    "hidden": false,
                    "kind": 11,
                    "name": "sprite_add_ns",
                    "returnType": 2
                },
                {
                    "id": "0be13e7b-e39f-424f-a172-9e6a394cb61f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "surface_save_ns",
                    "help": "surface_save_ns(surface, nspath)",
                    "hidden": false,
                    "kind": 11,
                    "name": "surface_save_ns",
                    "returnType": 2
                },
                {
                    "id": "073b6a69-5c7c-48f7-ae73-c0aad5776c70",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "surface_save_part_ns",
                    "help": "surface_save_part_ns(surface, nspath, rx, ry, rw, rh)",
                    "hidden": false,
                    "kind": 11,
                    "name": "surface_save_part_ns",
                    "returnType": 2
                },
                {
                    "id": "c963c3d1-85ee-4fcb-a6c8-289f948b3b1c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "screen_save_ns",
                    "help": "screen_save_ns(nspath)",
                    "hidden": false,
                    "kind": 11,
                    "name": "screen_save_ns",
                    "returnType": 2
                },
                {
                    "id": "7a03ccea-6339-42b4-9332-77736334b624",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "screen_save_part_ns",
                    "help": "screen_save_part_ns(nspath, rx, ry, rw, rh)",
                    "hidden": false,
                    "kind": 11,
                    "name": "screen_save_part_ns",
                    "returnType": 2
                }
            ],
            "init": "nsfs_init",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "cc.yal.nsfs",
    "productID": "F3D00DAD3DDB83EFFDD568E8093FC7AA",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.3"
}