import React from 'react';
import {View} from 'react-native';
import {Text} from 'react-native-paper';
import {BodyText} from './BodyText';

interface CurrencyDisplayProps {
  currencyType: string;
  currencyValue: number;
}

export const CurrencyDisplay = (currency: CurrencyDisplayProps) => {
  // Format the currency value to 2 decimal places and add commas
  const formattedValue = (num: number) => {
    if (num >= 1000000000) {
      return num / 1000000000 + ' billion';
    }
    if (num >= 1000000) {
      return num / 1000000 + ' million';
    }
    if (num >= 1000) {
      return num / 1000 + ' thousand';
    }
    return num;
  };

  return (
    <View style={{flexDirection: 'row'}}>
      <BodyText>{currency.currencyType}</BodyText>
      <BodyText>{formattedValue(currency.currencyValue)}</BodyText>
    </View>
  );
};
