import React, {useState} from 'react';
import {
  ActivityIndicator,
  MD3Colors,
  ProgressBar,
  Text,
  useTheme,
} from 'react-native-paper';
import {useCompanyInfo} from '../hooks/useCompanyInfo';
import {RefreshControl, ScrollView, View} from 'react-native';
import {getStyle} from '../Styles';

/**
 * Renders the SpaceX company information screen.
 * @returns JSX element containing the company information screen.
 */
export const SpaceXCompanyInfoScreen = () => {
  const {data, status, error, onRefresh} = useCompanyInfo();
  const style = getStyle();

  return (
    <View style={style.screen}>
      <ScrollView
        refreshControl={
          <RefreshControl
            refreshing={status === 'loading'}
            onRefresh={onRefresh}
          />
        }>
        {status === 'loading' && (
          <ActivityIndicator
            style={style.progress}
            size={50}
            animating={true}
            color={MD3Colors.primary90}
          />
        )}
        {status === 'succeeded' && (
          <Text style={style.text} variant="bodyMedium">
            Data: {JSON.stringify(data)}
          </Text>
        )}
        {status === 'failed' && (
          <Text style={style.text} variant="bodyMedium">
            Error: {error.message}
          </Text>
        )}
      </ScrollView>
    </View>
  );
};
