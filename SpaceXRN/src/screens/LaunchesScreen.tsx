import React from 'react';
import {ScrollView, View} from 'react-native';
import {ActivityIndicator, MD3Colors, Text} from 'react-native-paper';
import {BodyText} from '../components/BodyText';
import {useLaunches} from '../hooks/useLaunches';
import {getStyle} from '../Styles';

export const LaunchesScreen = () => {
  const {data, status, error, onRefresh} = useLaunches();
  const style = getStyle();
  return (
    <ScrollView style={style.screen}>
      {status === 'loading' && (
        <ActivityIndicator
          style={style.progress}
          size={50}
          animating={true}
          color={MD3Colors.primary90}
        />
      )}
      {status === 'succeeded' && <BodyText>{JSON.stringify(data)}</BodyText>}
      {status === 'failed' && <BodyText>Error: {error.message}</BodyText>}
    </ScrollView>
  );
};
