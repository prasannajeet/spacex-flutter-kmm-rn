import React from 'react';
import {SafeAreaView} from 'react-native-safe-area-context';
import {useTheme} from 'react-native-paper';
import {SpaceXCompanyInfoScreen} from './src/screens/CompanyInfoScreen';
import {StyleSheet} from 'react-native';
import ThemeSwitcher from './src/components/ThemeSwitcher';
import {SpaceXTabBar} from './src/screens/Tab';

const App = () => {
  return <SpaceXTabBar />;
};
export default App;
