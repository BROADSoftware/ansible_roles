# DEPECATED: Replaced by bsx-roles

## Ansible_roles

A set of ansible rules aimed to install stuff from NoSQL/Hadoop world.

Used in several context:

 - KVM
 - LXC Container (Some playbook provided)
 - Bare metal
 - ...
 
Curently, only RHEL7/Centos7 is supported.

Also, some playbooks download jar from a 'misc' repository. To setup and populate with appropriate product distribution (tar or rpm. Refer to defaults/main.yml of each playbook)

## License

    Copyright (C) 2015 BROADSoftware

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
	    http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

## Also included for convenience:

- yaegashi.blockinfile from [YAEGASHI Takeshi](https://github.com/yaegashi) (License: GPLv3+)
- net/dhcp_server: Copyright (c) 2013, Philippe Dellaert (License MIT)
- net/network_interface from Benno Joy (License BSD)


