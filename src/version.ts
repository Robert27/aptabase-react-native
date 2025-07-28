import { NativeModules } from "react-native";

const { RNAptabaseModule } = NativeModules;

type VersionObject = {
  appVersion: string;
  appBuildNumber: string;
  deviceModel?: string;
};

const Version: VersionObject = {
  appVersion: RNAptabaseModule?.appVersion?.toString() ?? "",
  appBuildNumber: RNAptabaseModule?.appBuildNumber?.toString() ?? "",
  deviceModel: RNAptabaseModule?.deviceModel?.toString() ?? undefined,
};

export default Version;
