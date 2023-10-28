import {createMaterialBottomTabNavigator} from '@react-navigation/material-bottom-tabs';
import React from 'react';
import {SpaceXCompanyInfoScreen} from './CompanyInfoScreen';
import {SafeAreaView} from 'react-native-safe-area-context';
import {getStyle} from '../Styles';

const Tab = createMaterialBottomTabNavigator();

export const SpaceXTabBar = () => {
  return (
    <Tab.Navigator
      backBehavior="history"
      initialRouteName="Launches"
      activeColor="blue">
      <Tab.Screen name="Launches" component={SpaceXCompanyInfoScreen} />
      <Tab.Screen name="Rockets" component={SpaceXCompanyInfoScreen} />
      <Tab.Screen name="Company" component={SpaceXCompanyInfoScreen} />
    </Tab.Navigator>
  );
};
