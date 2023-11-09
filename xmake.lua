add_rules("mode.debug", "mode.release")

add_requires("crow")

target("Tasksfire")
    set_kind("binary")
    add_files("src/*.cpp")
	add_packages("crow")
