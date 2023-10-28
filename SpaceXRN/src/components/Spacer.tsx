import React from 'react';
import {View, StyleSheet} from 'react-native';

interface SpacerProps {
  space: number;
}

export const VerticalSpacer: React.FC<SpacerProps> = ({space}) => {
  const styles = StyleSheet.create({
    spacer: {
      marginBottom: space,
    },
  });

  return <View style={styles.spacer} />;
};

export const HorizontalSpacer: React.FC<SpacerProps> = ({space}) => {
  const styles = StyleSheet.create({
    spacer: {
      marginRight: space / 2,
      marginLeft: space / 2,
    },
  });

  return <View style={styles.spacer} />;
};
