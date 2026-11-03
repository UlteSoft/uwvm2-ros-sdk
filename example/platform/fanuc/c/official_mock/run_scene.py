"""Start only this example's owned composition of pinned official components."""
from pathlib import Path
import importlib.util
from launch import LaunchService

path=Path(__file__).resolve().with_name('scene.launch.py')
spec=importlib.util.spec_from_file_location('official_owned_scene',path)
module=importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
if hasattr(module,'main'):
    raise SystemExit(module.main())
service=LaunchService()
service.include_launch_description(module.generate_launch_description())
raise SystemExit(service.run())
