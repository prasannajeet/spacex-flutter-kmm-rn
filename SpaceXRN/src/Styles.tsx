import {StyleSheet} from 'react-native';
import {useSelector} from 'react-redux';

export const getStyle = () => {
  const isDarkTheme: boolean = useSelector(
    (state: any) => state.themeSwitcher.isDarkTheme,
  );

  return StyleSheet.create({
    backgroundStyle: {
      backgroundColor: isDarkTheme ? '#000000' : '#ffffff', 
    },
    screen: {
      backgroundColor: isDarkTheme ? 'black' : 'white',
      width: '100%',
      height: '100%',
      padding: 16,
    },
    bodyText: {
      color: isDarkTheme ? 'white' : 'black',
      fontSize: 16,
      textAlign: 'center',
      textAlignVertical: 'center',
    },
    sectionHeader: {
      color: isDarkTheme ? 'white' : 'black',
      fontWeight: 'bold',
      fontSize: 24,
      textAlign: 'center',
      textAlignVertical: 'center',
    },
    subtitleText: {
      color: isDarkTheme ? 'white' : 'black',
      fontSize: 20,
      fontStyle: 'italic',
      textAlign: 'center',
      textAlignVertical: 'center',
    },
    headerText: {
      color: isDarkTheme ? 'white' : 'black',
      fontSize: 32,
      fontWeight: 'bold',
      textAlign: 'center',
      textAlignVertical: 'center',
    },
    fab: {
      position: 'absolute',
      margin: 8,
      right: 0,
      bottom: 32,
    },
    progress: {
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
    },
  });
};
