// Copyright 2018-2019 the openhoi authors. See COPYING.md for legal info.

#pragma once

namespace openhoi {

// Abstract State base class
class State {
 public:
  // State destructor
  virtual ~State(){};

  // Called when the state is started up
  virtual void Startup() = 0;

  // Called when the state is shutting down
  virtual void Shutdown() = 0;

  // Used to create the scene
  virtual void CreateScene() = 0;

  // Used to update the scene
  virtual void UpdateScene() = 0;

  // Used to remove the scene
  virtual void RemoveScene() = 0;
};

}  // namespace openhoi