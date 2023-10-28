import {Text} from 'react-native-paper';
import {getStyle} from '../Styles';

interface SectionHeaderProps {
  children: React.ReactNode;
}

export const SectionHeader = (props: SectionHeaderProps) => {
  const {children} = props;
  return (
    <Text {...props} style={getStyle().sectionHeader} variant="displayMedium">
      {children}
    </Text>
  );
};
