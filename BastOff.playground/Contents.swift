
import Foundation

struct RocketConfiguration {
    
    let name: String = "Athena 9 Heavy"
    let numberOfFirstStageCores: Int = 3
    let numberOfSecondStageCores = 1
    let numberOfStageReuseLandIngLegs: Int? = nil
    
}
let athena9Heavy = RocketConfiguration()

//automatically generate a memberwise initialize
struct RocketStageConfiguration {
  let propellantMass: Double
  let liquidOxygenMass: Double
  let nominalBurnTime: Int
    //you only get a memberwise initializer if a structure does not define any initializers
    

}
extension RocketStageConfiguration{
    init(propellantMass: Double, liquidOxygenMass: Double) {
      self.propellantMass = propellantMass
      self.liquidOxygenMass = liquidOxygenMass
      self.nominalBurnTime = 180
    }
}
let stageOneConfiguration = RocketStageConfiguration(propellantMass: 119.1,
liquidOxygenMass: 276.0, nominalBurnTime: 180)

struct Weather {
  let temperatureCelsius: Double
  let windSpeedKilometersPerHour: Double
    
    init(temperatureFahrenheit: Double = 72, windSpeedMilesPerHour: Double = 5) {
      self.temperatureCelsius = (temperatureFahrenheit - 32) / 1.8
      self.windSpeedKilometersPerHour = windSpeedMilesPerHour * 1.609344
    }

}
let currentWeather = Weather(temperatureFahrenheit: 87, windSpeedMilesPerHour: 2)

currentWeather.temperatureCelsius
currentWeather.windSpeedKilometersPerHour




