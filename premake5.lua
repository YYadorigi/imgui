project "imgui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/tmp/" .. outputdir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
	}

	buildoptions {
		"/utf-8",
	}

	filter "system:linux"
		pic "On"
		cdialect "Default"
		staticruntime "On"
		systemversion "latest"

	filter "system:windows"
		cdialect "Default"
		staticruntime "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
