# elixir_make entry point. Only runs when OPENUSD_BUILD is set (see mix.exs);
# otherwise mix compile downloads the prebuilt archive. Kept trivial so it works
# with both GNU make and Windows nmake. All paths/vars come from
# OpenusdRuntime.make_env/0.

all:
	$(PYTHON) build_openusd.py --build-dir "$(OPENUSD_BUILD_DIR)" --release --package
