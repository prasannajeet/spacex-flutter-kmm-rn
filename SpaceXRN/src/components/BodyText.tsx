import {Text} from 'react-native-paper';
import {getStyle} from '../Styles';

interface BodyTextProps {
  children: React.ReactNode;
}

export const BodyText = (props: BodyTextProps) => {
  const {children} = props;
  return (
    <Text {...props} style={getStyle().bodyText} variant="bodyMedium">
      {children}
    </Text>
  );
};
