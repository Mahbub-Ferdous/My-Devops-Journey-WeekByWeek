# What is YAML?

YAML is a human-readable data serialization language that is often used for writing configuration files. Depending on whom you ask, YAML stands for yet another markup language or YAML ain’t markup language (a recursive acronym), which emphasizes that YAML is for data, not documents. 

YAML is a popular programming language because it is designed to be easy to read and understand. It can also be used in conjunction with other programming languages. Because of its flexibility, and accessibility, YAML is used for Docker-compose,Kubernetes,Ansible 

# YAML syntax

YAML files use a `.yml` or `.yaml` extension, and follow specific syntax rules. 

YAML has features that come from Perl, C, XML, HTML, and other programming languages. YAML is also a superset of JSON, so JSON files are valid in YAML.

There are no usual format symbols, such as braces, square brackets, closing tags, or quotation marks. And YAML files are simpler to read as they use Python-style indentation to determine the structure and indicate nesting. Tab characters are not allowed by design, to maintain portability across systems, so whitespaces—literal space characters—are used instead. 

Comments can be identified with a pound or hash symbol `(#)`. It’s always a best practice to use comments, as they describe the intention of the code. YAML does not support multi-line comment, each line needs to be suffixed with the pound character.

```
A common question for YAML beginners is “What do the 3 dashes mean?” 3 dashes (---) are used to signal the start of a document, while each document ends with three dots (...).  

```

`indentation is more important for YAML`

```
#Comment: This is a supermarket list using YAML
#Note that - character represents the list
---
food: 
  - vegetables: tomatoes #first list item
  - fruits: #second list item
      citrics: oranges 
      tropical: bananas
      nuts: peanuts
      sweets: raisins

```
Note that the structure of a YAML file is a map or a list, and it follows a hierarchy depending on the indentation, and how you define your key values. Maps allow you to associate key-value pairs. Each key must be unique, and the order doesn't matter. Think of a Python dictionary or a variable assignment in a Bash script.

A map in YAML needs to be resolved before it can be closed, and a new map is created. A new map can be created by either increasing the indentation level or by resolving the previous map and starting an adjacent map.

A list includes values listed in a specific order and may contain any number of items needed. A list sequence starts with a dash `(-)` and a space, while indentation separates it from the parent. You can think of a sequence as a Python list or an array in Bash or Perl. A list can be embedded into a map.

In the example provided above “vegetables” and “fruits” represent items that are part of the list named “food”.

YAML also contains scalars, which are arbitrary data (encoded in Unicode) that can be used as values such as strings, integers, dates, numbers, or booleans.

When creating a YAML file, you’ll need to ensure that you follow these syntax rules and that your file is valid. To achieve it, you can use a linter—an application that verifies the syntax of a file. The yamllint command can help to ensure you’ve created a valid YAML file before you hand it over to an application.

# What is YAML used for?

One of the most common uses for YAML is to create configuration files. It's recommended that configuration files be written in YAML rather than JSON, even though they can be used interchangeably in most cases, because YAML has better readability and is more user-friendly.  

In addition to its use in Ansible, YAML is used for Kubernetes resources and deployments. 

A benefit of using YAML is that YAML files can be added to source control, such as Github, so that changes can be tracked and audited.

# YAML in Ansible

Ansible Playbooks are used to orchestrate IT processes. A playbook is a YAML file containing 1 or more plays, and is used to define the desired state of a system. 

Each play can run one or more tasks, and each task invokes an Ansible module. Modules are used to accomplish automation tasks in Ansible. Ansible modules can be written in any language that can return JSON, such as Ruby, Python, or bash.

An Ansible Playbook consists of maps and lists. To create a playbook, start a YAML list that names the play, and then lists tasks in a sequence. Remember that indentation is not an indication of logical inheritance. Think of each line as a YAML data type (a list or a map).

By using YAML templates, Ansible users can program repetitive tasks to happen automatically without having to learn an advanced programming language. Developers can also use the ansible-lint command, a YAML linter for Ansible Playbooks, to identify mistakes so errors don't occur during a critical stage of operation.

With the introduction of Ansible Lightspeed with IBM Watson Code Assistant, a generative AI service, developers can create Ansible automation content more efficiently. Users can enter a task request in plain English and get clean and compliant YAML code recommendations for automation tasks that are then used to create Ansible Playbooks.

# YAML for Kubernetes

Kubernetes works based on defined state and actual state. Kubernetes objects represent the state of a cluster and tell Kubernetes what you want the workload to look like. Kubernetes resources, such as pods, objects, and deployments can be created using YAML files. 

When creating a Kubernetes object, you’ll need to include specifications to define the object's desired state. The Kubernetes API can be used to create the object. The request to the API will include the object specifications in JSON, but most often you’ll provide the required information to kubectl as a YAML file. Kubectl will convert the file into YAML for you when it makes the API request.

Once an object has been created and defined, Kubernetes works to make sure that the object always exists. 

Developers or sysadmins specify the defined state using the YAML or JSON files they submit to the Kubernetes API. Kubernetes uses a controller to analyze the difference between the new defined state and the actual state in the cluster.


`you can check your YAML indentation by using yamllint.com`

or you can install yamllint in your system: 

```
$ sudo dnf install -y yamllint

Use yamllint command to validate your YAML file:

$ yamllint --strict dummy.yaml || echo “Fail”

```

the output will be JSON file .