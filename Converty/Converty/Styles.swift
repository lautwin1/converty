
import SwiftUI

struct LengthButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Blue"))
            .cornerRadius(15)
    }
}

struct SpeedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Green"))
            .cornerRadius(15)
    }
}

struct WeightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Pink"))
            .cornerRadius(15)
    }
}

struct TimeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Purple"))
            .cornerRadius(15)
    }
}

struct AreaButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Red"))
            .cornerRadius(15)
    }
}

struct VolumeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 120)
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color.white : Color("Pastel Yellow"))
            .cornerRadius(15)
    }
}


// Text Field Styles
struct UnitTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
          .strokeBorder(
            LinearGradient(
              gradient: .init(
                colors: [
                  Color(red: 163 / 255.0, green: 243 / 255.0, blue: 7 / 255.0),
                  Color(red: 226 / 255.0, green: 247 / 255.0, blue: 5 / 255.0)
                ]
              ),
              startPoint: .topLeading,
              endPoint: .bottomTrailing
            )
          )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct LengthTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Blue"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct SpeedTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Green"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct WeightTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Pink"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct TimeTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Purple"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct AreaTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Red"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct VolumeTextFieldStyle: TextFieldStyle {
    var border: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(
              Color("Pastel Yellow"),
              lineWidth: 2
            )
      }
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.leading)
            .accentColor(.pink)
            .foregroundColor(.blue)
            .font(.headline)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(border)
    }
    
}

struct lengthMenu: PreviewProvider {
    static var previews: some View {
        LengthMenu()
    }
}
