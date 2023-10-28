import {StyleSheet} from 'react-native';
import {Text} from 'react-native-paper';
import {useTheme} from 'react-native-paper';
import {getStyle} from '../Styles';

interface HeaderTextProps {
  children: React.ReactNode;
}

export const SubtitleText = (props: HeaderTextProps) => {
  const {children} = props;
  return (
    <Text {...props} style={getStyle().subtitleText} variant="titleMedium">
      {children}
    </Text>
  );
};
