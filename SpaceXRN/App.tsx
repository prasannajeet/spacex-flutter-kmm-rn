import React from 'react';
import {SafeAreaView} from 'react-native-safe-area-context';
import {useTheme} from 'react-native-paper';
import {SpaceXCompanyInfoScreen} from './src/screens/CompanyInfoScreen';
import {StyleSheet} from 'react-native';
import ThemeSwitcher from './src/components/ThemeSwitcher';

const App = () => {
  const theme = useTheme();

  const backgroundStyle = {
    backgroundColor: theme.dark ? '#000000' : '#ffffff',
  };

  return (
    <SafeAreaView style={backgroundStyle}>
      <SpaceXCompanyInfoScreen />
      <ThemeSwitcher />
    </SafeAreaView>
  );
};
export default App;
