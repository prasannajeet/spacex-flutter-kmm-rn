import {StyleSheet, TextStyle} from 'react-native';
import {Text} from 'react-native-paper';
import {useTheme} from 'react-native-paper';
import {getStyle} from '../Styles';

interface HeaderTextProps {
  children: React.ReactNode;
}

export const TitleText = (props: HeaderTextProps) => {
  const {children} = props;
  return (
    <Text {...props} style={getStyle().headerText} variant="headlineMedium">
      {children}
    </Text>
  );
};
