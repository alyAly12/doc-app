import 'package:doc_app/core/utils/assets_manager.dart';

class SpecialFakeModel {

 final String name;
 final String image;

 SpecialFakeModel(this.name, this.image);


static List<SpecialFakeModel> specialityFakeList = [
  SpecialFakeModel('General', AssetsManager.generalSpeciality),
  SpecialFakeModel('ENT', AssetsManager.entSpeciality),
  SpecialFakeModel('Pediatric', AssetsManager.pediatricSpeciality),
  SpecialFakeModel('Urologist', AssetsManager.urologySpeciality),
  SpecialFakeModel('Dentistry', AssetsManager.radiologySpeciality),
  SpecialFakeModel('Intestine', AssetsManager.intensitySpeciality),
  SpecialFakeModel('Histology', AssetsManager.histologySpeciality),
  SpecialFakeModel('Hepatology', AssetsManager.hepatologySpeciality),
  SpecialFakeModel('Cardiology', AssetsManager.heartSpeciality),
  SpecialFakeModel('Neurology', AssetsManager.neurologySpeciality),
  SpecialFakeModel('Pulmonology', AssetsManager.pulmonologySpeciality),
  SpecialFakeModel('Optometry', AssetsManager.optometrySpeciality),
 ];
}