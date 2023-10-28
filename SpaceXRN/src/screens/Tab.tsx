import {createMaterialBottomTabNavigator} from '@react-navigation/material-bottom-tabs';
import React from 'react';
import {SpaceXCompanyInfoScreen} from './CompanyInfoScreen';
import {SafeAreaView} from 'react-native-safe-area-context';
import {RocketsScreen} from './RocketsScreen';
import {LaunchesScreen} from './LaunchesScreen';

const Tab = createMaterialBottomTabNavigator();

export const SpaceXTabBar = () => {
  return (
    <SafeAreaView style={{flex: 1}}>
      <Tab.Navigator
        backBehavior="history"
        initialRouteName="Launches"
        barStyle={{padding: 0}}
        activeColor="blue">
        <Tab.Screen
          options={{title: 'Launches', tabBarIcon: 'rocket-launch'}}
          name="Launches"
          component={LaunchesScreen}
        />
        <Tab.Screen
          options={{title: 'Rockets', tabBarIcon: 'rocket'}}
          name="Rockets"
          component={RocketsScreen}
        />
        <Tab.Screen
          options={{title: 'Company', tabBarIcon: 'domain'}}
          name="Company"
          component={SpaceXCompanyInfoScreen}
        />
      </Tab.Navigator>
    </SafeAreaView>
  );
};
